programa
{cadeia email

	funcao inicio(){
		login()}
	
	funcao login()
	{ cadeia vetoremail [] = {"admin", "gabriel", "ricardo", "jose", "lucas", "michelli"}
	inteiro senha, vetorsenha[] = {1, 2, 3, 4, 5, 6}, i = 0
	logico valida = falso
	
	
		escreva("Digite seu email de usuário: ")
		leia(email)
		escreva("Digite sua senha: ")
		leia(senha)
		limpa()
		
		para( i = 0; i < 6; i++)
				se(email == vetoremail[i] e senha == vetorsenha[i])
				{escreva("*********************************\nAcesso permitido!\n*********************************\n===Bem-vindo ao SerraKids!===")
				valida = verdadeiro 
				menu()
				}
			se(i == 6 e valida == falso){ 
				retornologin()
				} se(email == vetoremail[0] e senha == vetorsenha[0])
				{
				valida = verdadeiro 
				criarusuario()
				
				}
	}
	funcao retornologin(){   
		escreva("Usuário e/ou senha incorreto(s)!\n")
		inicio()	
	}
	funcao menu(){
		escreva("\n   Bem-vindo ", email,".")
	}
	funcao criarusuario(){
		escreva("\n   Menu gerencia")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 981; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {email, 2, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */