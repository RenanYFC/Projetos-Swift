/**

Enunciado:

Criar um app de tarefas no terminal para praticar os conceitos aprendidos no curso. 
O sistema deve permitir adicionar, listar, editar e remover tarefas, tudo de forma 
interativa.

Funcionalidades necessárias:
• listarTarefas() – Mostra todas as tarefas com numeração.
• adicionarTarefa() – Lê uma descrição do usuário e adiciona à lista.
• removerTarefa() – Pede o número da tarefa e a remove.
• editarTarefa() – Permite alterar o texto de uma tarefa.
• encerrarPrograma() – Encerra o app quando o usuário digita 0.
Obs: Implemente as funções abaixo, cada uma com uma única responsabilidade

*/

import Foundation

var tarefasGlobal = [String]()

var parar = false

func exibirMenu() {
    print ("""
    ===== To-Do List =====
    
    Digite 1 para exibir as tarefas
    Digite 2 para adicionar tarefas
    Digite 3 para remover tarefas
    Digite 4 para editar uma tarefa
    Digite 0 para encerrar o programa
    
    """
    )
    
    let opcEscolhida = readLine()
    
    if let opcEscolhida = opcEscolhida {
        if let opcEscolhidaInt = Int(opcEscolhida) {
            switch opcEscolhidaInt {
                case 0:
                    parar = true
                case 1:
                    if tarefasGlobal.count > 0 {
                        print("=== Suas Tarefas ===")
                        exibirTarefas(tarefas: tarefasGlobal)
                    
                    }
                    else {
                        print ("Você não possui tarefas!")
                    }
                case 2:
                    
                    print("Descreva sua tarefa: ",terminator:"")
                    let descricaoTarefa = readLine()
                    
                    if let descricaoTarefa = descricaoTarefa {
                        if (!descricaoTarefa.isEmpty) {
                            print("Adicionado com sucesso!\n")
                            adicionarTarefa(descricaoTarefa: descricaoTarefa, tarefas: tarefasGlobal)
                        }
                        else {
                            print("Insira um valor válido!\n")
                        }
                    
                    }
                    else {
                        print("\nNenhum valor recebido, encerrando o programa...")
                    }
                    
                case 3:
                print ("Digite o índice da tarefa que você quer remover: ",terminator: "")
                let indiceTarefa = readLine()
                
                if let indiceTarefa = indiceTarefa {
                    if let indiceTarefaInt = Int(indiceTarefa) {
                        
                        if(indiceTarefaInt <= tarefasGlobal.count-1 && indiceTarefaInt >= 0) {
                            removerTarefa(indiceTarefa: indiceTarefaInt, tarefas: tarefasGlobal)
                        }
                        else {
                            print("Essa tarefa não existe\n")
                        }
                    }
                    else {
                        print("Digite somente números inteiros!\n")
                    }
                }
                else {
                    print("\nNenhum valor recebido, encerrando o programa...")
                }
                case 4:
                    print("Digite o índice da tarefa que você quer editar: ",terminator:"")
                    let indiceTarefa = readLine()
                    
                    if let indiceTarefa = indiceTarefa {
                        if let indiceTarefaInt = Int(indiceTarefa) {
                            if (indiceTarefaInt < tarefasGlobal.count) {
                            
                                print("Descreva sua tarefa: ",terminator:"")
                                let descricaoTarefa = readLine()
                                
                                if let descricaoTarefa = descricaoTarefa {
                                    if (!descricaoTarefa.isEmpty) {
                                        editarTarefa(indiceTarefa: indiceTarefaInt, descricaoTarefa: descricaoTarefa, tarefas: tarefasGlobal)
                                    }
                                    else {
                                        print("Insira um valor válido!\n")
                                    }                
                                }
                            
                            }
                            else {
                                print ("Digite um valor dentro do índice!")
                            }
                        }
                        else {
                            print ("Digite um número válido!")
                        }
                    }
                    else {
                        print("\nNenhum valor recebido, encerrando o programa...")
                    }
                default:
                    print("Valor não correspondente!")
                    exibirMenu()
            }
        }
        else {
            print("Insira um valor válido!\n")
        }
    }
    else {
        print("\nNenhum valor recebido, encerrando o programa...")
    }
    return
}

func adicionarTarefa(descricaoTarefa: String, tarefas: [String]) {
    var listaTarefasLocal = tarefas
    listaTarefasLocal.append(descricaoTarefa)
    return tarefasGlobal = listaTarefasLocal
}

func removerTarefa(indiceTarefa: Int, tarefas: [String]) {

    var listaTarefasLocal = tarefas
    listaTarefasLocal.remove(at:indiceTarefa)
    print("Remoção feita com sucesso!\n")
    return tarefasGlobal = listaTarefasLocal
    
}

func exibirTarefas(tarefas: [String]) {
    
    for i in 0..<tarefas.count {
            print("índice[\(i)]: \(tarefas[i]) \n")
        }
    
    print("=============")
    
    return
}

func editarTarefa(indiceTarefa: Int, descricaoTarefa: String, tarefas: [String]) {

    var listaTarefasLocal = tarefas
    
    listaTarefasLocal[indiceTarefa] = descricaoTarefa
    print("Alterado com sucesso!\n")
    
    return tarefasGlobal = listaTarefasLocal

}
/**
while parar == false {
    exibirMenu()    
}
*/