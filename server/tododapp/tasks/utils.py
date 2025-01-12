from web3 import Web3
from django.conf import settings
from langchain.llms import OpenAI

web3 = Web3(Web3.HTTPProvider(settings.WEB3_PROVIDER))
contract = web3.eth.contract(address=settings.CONTRACT_ADDRESS, abi=settings.CONTRACT_ABI)

def verify_task_on_blockchain(task_id, user_address):
    try:
        tx_hash = contract.functions.verifyTask(task_id).transact({'from': user_address})
        receipt = web3.eth.wait_for_transaction_receipt(tx_hash)
        return receipt.status == 1
    except Exception as e:
        print(f"Error: {e}")
        return False

def prioritize_tasks(tasks):
    llm = OpenAI(temperature=0.7, openai_api_key='YOUR_OPENAI_API_KEY')
    task_list = "\n".join([f"{task['title']} - {task['deadline']}" for task in tasks])
    prompt = f"Prioritize the following tasks based on deadlines and importance:\n{task_list}"
    response = llm(prompt)
    return response
