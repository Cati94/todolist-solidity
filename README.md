# TodoList Solidity Contract

Este repositório contém um smart contract simples em Solidity para uma lista de tarefas (to-do list), desenvolvido como parte de um bootcamp.

## Descrição
O contrato permite adicionar tarefas, visualizá-las e marcá-las como concluídas, demonstrando conceitos como variáveis de estado, funções, eventos e validações.

## Funcionalidades
- Adicionar tarefa com descrição.
- Listar todas as tarefas.
- Marcar tarefa como concluída usando ID.

## Como Usar
1. Abra no Remix IDE.
2. Compile e deploy na Sepolia Testnet.
3. Interaja com `addTask`, `getTasks` e `completeTask`.

## Requisitos da Tarefa
- Pelo menos uma variável de estado, função public/external, require, evento e emit.
- Testado no Remix com screenshots.
## Estrutura da To-Do List (Smart Contract)

+-------------------+       +-------------------+
|   Variável de     |       |     Funções       |
|    Estado         |       |                   |
| - Task[] tasks    |       | - getTasks()      |
|   (array de       |       |   (public, view)  |
|    structs)       |       | - addTask()       |
|                   |       |   (external,      |
| - uint nextId     |       |    payable)       |
+-------------------+       | - completeTask()  |
                            |   (external)      |
                            +-------------------+
                                     |
                                     | Validações & Eventos
                                     v
+-------------------+       +-------------------+
|   Validações      |       |     Eventos       |
| (require())       |       |                   |
| - Descrição não   |       | - TaskAdded       |
|   vazia           |       |   (id, desc)      |
| - ID existe       |       | - TaskCompleted  |
| - Não concluída   |       |   (id)           |
+-------------------+       +-------------------+

## Fluxo de Uso:
1. Usuário chama addTask("Comprar leite") → Adiciona tarefa, emite TaskAdded.
2. Usuário chama getTasks() → Retorna lista.
3. Usuário chama completeTask(1) → Marca como concluída, emite TaskCompleted.

## Link para Documentação
Ver PDF completo: [Insira link do seu PDF hospedado, ex: Google Drive].

## Licença
MIT License.
