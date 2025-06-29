/**

Enunciado:

Crie um programa que simula um sistema simples de lista de tarefas (To-Do List) no terminal.
Ele terá 5 funções, no momento vamos construir três:
Mostrar menu de opções
Adicionar tarefa
Remover Tarefa

*/

import Foundation
func exibirMenu() {
    print ("""
    ===== To-Do List =====
    
    Digite 1 para adicionar tarefas
    Digite 2 para remover tarefas
    
    """
    )
    
    let opcEscolhida = readLine()
    
    if let opcEscolhida = opcEscolhida {
        if let opcEscolhidaInt = Int(opcEscolhida) {
            switch opcEscolhidaInt {
                case 1:
                    adicionarTarefa()
                case 2:
                    removerTarefa()
                default:
                    print("Valor não correspondente!")
                    exibirMenu()
            }
        }
        else {
            print("Insira um valor válido!\n")
            exibirMenu()
        }
    }
    else {
        print("\nNenhum valor recebido, encerrando o programa...")
        return
    }
}
var tarefas = [String]()

func adicionarTarefa() {
    print("Descreva sua tarefa: ",terminator:"")
    let descricaoTarefa = readLine()
    
    if let descricaoTarefa = descricaoTarefa {
        if (!descricaoTarefa.isEmpty) {
            print("Adicionado com sucesso!\n")
            tarefas.append(descricaoTarefa)
            exibirMenu()
        }
        else {
            print("Insira um valor válido!\n")
            exibirMenu()
        }
    
    }
    else {
        print("\nNenhum valor recebido, encerrando o programa...")
        return
    }
}

func removerTarefa() {
    print ("Digite o índice da tarefa que você quer remover: ",terminator: "")
    let indiceTarefa = readLine()
    
    if let indiceTarefa = indiceTarefa {
        if let indiceTarefaInt = Int(indiceTarefa) {
            
            if(indiceTarefaInt <= tarefas.count-1 && indiceTarefaInt >= 0) {
                tarefas.remove(at:indiceTarefaInt)
                print("Remoção feita com sucesso!\n")
                exibirMenu()
            }
            else {
                print("Essa tarefa não existe\n")
                exibirMenu()
            }
        }
        else {
            print("Digite somente números inteiros!\n")
            exibirMenu()
        }
    }
    else {
        print("\nNenhum valor recebido, encerrando o programa...")
        return
    }
}