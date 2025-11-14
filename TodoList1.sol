// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {
    // Struct para representar uma tarefa
    struct Task {
        uint id;           // ID único da tarefa
        string description; // Descrição da tarefa
        bool completed;    // Status: true se concluída
    }

    // Variável de estado: array para armazenar as tarefas
    Task[] public tasks;

    // Contador para IDs únicos
    uint private nextId = 1;

    // Evento: emitido quando uma tarefa é adicionada
    event TaskAdded(uint id, string description);

    // Evento: emitido quando uma tarefa é marcada como concluída
    event TaskCompleted(uint id);

    // Função public (visibilidade public): retorna todas as tarefas (usando view para leitura gratuita)
    function getTasks() public view returns (Task[] memory) {
        return tasks;
    }

    // Função external: adiciona uma nova tarefa (aceita Ether opcionalmente com payable)
    function addTask(string memory _description) external payable {
        require(bytes(_description).length > 0, "Description cannot be empty"); // Validação básica
        tasks.push(Task(nextId, _description, false)); // Adiciona ao array
        emit TaskAdded(nextId, _description); // Emite evento
        nextId++; // Incrementa ID
    }

    // Função external: marca uma tarefa como concluída, com validação
    function completeTask(uint _id) external {
        require(_id > 0 && _id < nextId, "Task does not exist"); // Validação: ID deve existir
        for (uint i = 0; i < tasks.length; i++) {
            if (tasks[i].id == _id) {
                require(!tasks[i].completed, "Task is already completed"); // Evita marcar novamente
                tasks[i].completed = true;
                emit TaskCompleted(_id); // Emite evento
                break;
            }
        }
    }
}