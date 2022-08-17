//login de adm
programa
{
	cadeia user [] = {"gabriel", "ricardo", "jose", "lucas", "michelli"}
		inteiro i , userNum = 0
		
	//funcao inicio(){
	//	menuAdmin()
		}
	//funcao para menu inicial (separar da funcao adminUsuario) funcao menuAdmin)
	funcao menuAdmin(){
	escreva("=== Você esta no login do administrador ===\n\n")
	adminUsuario()
	}
	funcao adminUsuario(){
	//variaveis e vetores do login
		inteiro escolher
			//opções para chamar funcoes
			escreva("1.Adicionar usuário\n")
			escreva("2.Editar ou excluir usuário\n")
			escreva("0.Voltar ao Inicio\n")
			escreva("> ")
			leia(escolher)
			escolha(escolher){
			caso 1:
				limpa()
				adicionarUsuario()
			pare
			caso 2:
				limpa()
				editarUsuario()
			pare
			caso 0: 
				limpa()
				inicio()
			caso contrario:
			//limpa e da opção inválido caso nao seja 0 até 3
				limpa()
				escreva("=== Opção Inválida, escolha entre 0 até 3 ===\n\n")
				adminUsuario()
				}}

	funcao adicionarUsuario(){
		
		cadeia novoUser
		inteiro novaSenha
		caracter escolher,s,S,n,N
		logico voltar = verdadeiro
		
		escreva("1.Função: 'Adicionar usuário'\n\n")
		escreva("Digite um nome de usuário: ")
		leia (novoUser)
		escreva("Digite uma senha: ")
		leia(novaSenha)
		escreva("\nUsuário criado com sucesso!\n\nVoltar a tela de login?\n> ")
		leia (escolher)
		enquanto(voltar){
			escolha(escolher){
			caso 's': 
			limpa()
			retornologin()
			pare
			caso 'S': 
			limpa()
			retornologin()
			pare
			caso 'n': 
			limpa()
			adminUsuario()
			pare
			caso 'N':
			limpa()
			adminUsuario()
			pare
			caso contrario:
			limpa()
			escreva("Voltar a tela de login?\nInsira uma letra, s ou S para sim, n ou N para não\n> ")
			leia(escolher)
			pare
			}
		}
			}
		funcao editarUsuario(){

		inteiro escolher
		
			escreva ("2. Edição de usuário\n\nQual usuário você deseja editar?\n\n")
			para(i = 0; i < 5; i++){
				escreva(i,".",vetoruser[i],"\n")}
				escreva("> ")
				leia(userNum)
				limpa()
				
			se(userNum > 4){
				escreva("** Número invalido **\n")
				editarUsuario()
				}
				escreva("Usuario, ",vetoruser[userNum]," selecionado:\n1.Editar Usuario\n2.Editar Senha\n0.Voltar ao menu\n> ")
				leia (escolher)
				
			escolha(escolher){
				caso 1:
					limpa()
					escreva("Edição de usuário\n\nDigite o novo nome \n> ")
					leia(vetoruser[userNum])
					escreva("Usuário definido com sucesso ",vetoruser[userNum],"\n")
					editarUsuario()
				pare
				caso 2:
					limpa()
					escreva("Edição de senha\nDigite uma nova senha \n> ")
					leia(senha)
					escreva("Senha definida com sucesso ",vetorsenha[userNumero],"\n")
				pare
				caso 0:
					limpa()
					menuAdmin()
				pare
			}
	}			
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 148; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */