# 📝 To-Do List Smart Contract

A simple decentralized application (dApp) built with **Solidity**, developed as part of the Blockchain Bootcamp assignment.  
This smart contract allows users to add tasks and mark them as completed, demonstrating core Solidity concepts such as **state variables, functions, events, and validation**.

---

## 🚀 Features
- Add new tasks with a short description  
- Mark tasks as completed  
- View all tasks stored on the blockchain  
- Events emitted for every action (`TaskAdded`, `TaskCompleted`)  
- Input validation using `require()`  

---

## 🧠 Smart Contract Overview

### Solidity Code
See [ToDoList.sol](./ToDoList.sol) for full implementation.

---

## ⚙️ Functions

| Function | Modifier | Description |
|-----------|-----------|-------------|
| `addTask(string memory _description)` | `public` | Adds a new task to the list. Requires a non-empty description. |
| `completeTask(uint _taskId)` | `public` | Marks a specific task as completed. |
| `getTask(uint _taskId)` | `external view` | Returns a task’s description and completion status. |
| `getTotalTasks()` | `public view` | Returns the total number of tasks. |

---

## 📡 Events

| Event | Description |
|--------|-------------|
| `TaskAdded(uint taskId, string description)` | Triggered when a new task is added. |
| `TaskCompleted(uint taskId)` | Triggered when a task is marked as completed. |

---

## 🧪 Testing (Remix IDE)

1. Go to [Remix IDE](https://remix.ethereum.org)  
2. Create a new file `ToDoList.sol` and paste the code above.  
3. Compile with Solidity ^0.8.0.  
4. Deploy the contract in **Remix VM (London)** or on **Sepolia Testnet**.  
5. Interact with functions:
   - `addTask("Estudar Solidity")`  
   - `getTotalTasks()` → returns total count  
   - `getTask(0)` → shows description and completion status  
   - `completeTask(0)` → marks as completed and emits `TaskCompleted` event

---

## 🪙 Deployment (optional)

You can deploy to **Sepolia Testnet** using MetaMask and get free test ETH from a [faucet](https://sepoliafaucet.com/).  
Then check your contract and transactions on [https://sepolia.etherscan.io](https://sepolia.etherscan.io).

---

## 📚 Project Details
- **Language:** Solidity ^0.8.0  
- **IDE:** Remix (online)  
- **License:** MIT  
- **Author:** Catarina  
- **Bootcamp:** Solidity Blockchain Developer (Beograd 2024)

---

## 🖇️ Repository Structure
```
ToDoList/
├── ToDoList.sol
├── README.md
└── screenshots/
    ├── compile.png
    ├── deploy.png
    ├── functions.png
    └── events.png
```

---

## 🧾 License
This project is licensed under the MIT License — feel free to use and modify it for learning purposes.
