# Decentralized To-Do Application with AI Agent Integration

## Overview

This project is a decentralized to-do application (dApp) that integrates blockchain technology for secure task management and uses AI to enhance task prioritization and automation. The application is designed with the following key features:

- **Frontend**: Built using Flutter for a responsive, user-friendly interface.
- **Backend**: Developed with Django REST framework to handle APIs, authentication, and AI integration.
- **Blockchain**: Implements smart contracts on the Goerli Testnet using Solidity for task verification.
- **AI Agent**: Leverages LangChain or similar open-source tools for task prioritization and reminders.

## Features

### Frontend

- **Task Management**: Add, edit, delete, and mark tasks as complete.
- **Analytics**: Display task completion percentage and progress.
- **Responsive UI**: Flutter-based interface for a seamless experience.

### Backend

- **REST APIs**:
  - Task CRUD operations.
  - User authentication with JWT.
  - AI-powered task prioritization.
- **Blockchain Interactions**: Smart contracts to store and verify task completion on the blockchain.

### Blockchain

- **Smart Contract**: Written in Solidity to handle task creation and completion.
- **Testnet Deployment**: Deployed on the Goerli Testnet with Web3 integration.

### AI Agent

- **Task Prioritization**: Uses AI models (e.g., LangChain or GPT-4All) to prioritize tasks based on deadlines and types.
- **Reminders**: Sends notifications for overdue tasks.

## Installation

### Prerequisites

- Node.js
- Python (3.8+)
- Flutter SDK
- MetaMask wallet for blockchain interactions
- Infura account for connecting to the Goerli Testnet

### Backend Setup

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo/todo-dapp.git
   cd todo-dapp/server
   ```

2. **Setup Virtual Environment**:
   ```bash
   python -m venv env
   source env/bin/activate  # Windows: .\env\Scripts\activate
   ```

3. **Install Dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Configure Blockchain Settings**:
   Update `WEB3_PROVIDER`, `CONTRACT_ADDRESS`, and `CONTRACT_ABI` in `settings.py`.

5. **Run Migrations**:
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

6. **Start the Server**:
   ```bash
   python manage.py runserver
   ```

### Frontend Setup

1. **Navigate to Frontend Directory**:
   ```bash
   cd ../frontend
   ```

2. **Install Flutter Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the Application**:
   ```bash
   flutter run
   ```

### Smart Contract Deployment

1. **Use Remix IDE**:
   - Compile `TaskManager.sol`.
   - Deploy to Goerli Testnet using MetaMask.

2. **Update Contract Details**:
   - Copy the deployed contract address and ABI.
   - Paste them into `settings.py` in the backend.

## Usage

1. **Launch the Application**:
   - Start the backend server.
   - Run the Flutter app.

2. **User Authentication**:
   - Register and log in to the app.
   - Obtain a JWT token for authenticated API access.

3. **Task Management**:
   - Add, edit, and delete tasks.
   - Mark tasks as complete.

4. **AI Features**:
   - View task prioritization and reminders via AI API integration.

5. **Blockchain Verification**:
   - Check task status and verify completion on the blockchain.

## File Structure

```
.
|-- server
|   |-- tasks
|   |   |-- models.py
|   |   |-- serializers.py
|   |   |-- views.py
|   |   |-- urls.py
|   |-- utils.py
|   |-- settings.py
|-- frontend
|   |-- lib
|   |   |-- screens
|   |   |-- widgets
|-- contracts
|   |-- TaskManager.sol
```

## Technologies Used

- **Frontend**: Flutter
- **Backend**: Django REST Framework
- **Blockchain**: Solidity, Web3.py, Goerli Testnet
- **AI**: LangChain/GPT-4All

## Future Enhancements

- Add tokenomics to reward task completions.
- Implement GraphQL for more flexible querying.
- Develop a live task completion dashboard using D3.js.

## Authors

- **Your Name** - Developer
- **Contributors** - Mention contributors here

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgements

- LangChain Documentation
- Web3.py Documentation
- Flutter Documentation
- Django REST Framework

