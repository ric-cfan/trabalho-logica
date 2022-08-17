programa
{cadeia vetoruser[99] , vetorsenha[99] 
	
	funcao inicio()
	{
	login()
	}
	funcao login()
	{	// variaveis
		cadeia user,senha
		inteiro i = 0, opcao
		logico valida = falso
	    		//Banco de dados usuario
   	  		vetoruser[0] = "admin"
			vetoruser[1] = "gabriel"
	 		vetoruser[2] = "ricardo"
	  		vetoruser[3] = "jose"
	   		vetoruser[4] = "lucas"
			vetoruser[5] = "michelli"
	   		//Banco de dados senha
	   		vetorsenha[0] = "123a"
	   	 	vetorsenha[1] = "123g"
	   	  	vetorsenha[2] = "123r"
	   	  	vetorsenha[3] = "123j"
	   	  	vetorsenha[4] = "123l"
	   	   	vetorsenha[5] = "123m"
			//escolhe se entra na tela de login ou finaliza o programa
			escreva("Escolha uma opção: \n")
			escreva("1) Acessar tela login \n")
	   		escreva("2) Sair \n")
			leia(opcao)
			escolha (opcao)	
			{
			caso 1: 
		 	//Dados de entrada do usuario  
	   		limpa() 	
			escreva("Digite seu email de usuário: ")
			leia(user)
			escreva("Digite sua senha: ")
			leia(senha)
			limpa()
			//Validação de acesso
			para( i = 0; i < 6; i++)
			se(user == vetoruser[i] e senha == vetorsenha[i])
			{
			escreva("*********************************\nAcesso permitido!")
			escreva("\n*********************************\n===Bem-vindo ao SerraKids!===")
			valida = verdadeiro 
			menu(user)
			}
			se(i == 6 e valida == falso){ 
			errologin()
			//Login admin
			} se(user == vetoruser[0] e senha == vetorsenha[0])
			{
			valida = verdadeiro 
			menuAdmin()
			}
			caso 2: 
		 		fim()
		 		pare  
		 	caso contrario: 
		 		limpa()
		 		login()
			}   	   			
	}
	funcao errologin()
	{  
	escreva("Usuário e/ou senha incorreto(s)!\n")
	login()
	}
	funcao menu(cadeia user)//trocar pelo menu de produtos
	{
	escreva("\n   Bem-vindo ", user,".")
	}
	funcao menuAdmin() //trocar pelo menu da gerencia
	{
	escreva("\n   Menu gerencia")
	}
	funcao fim()//Deixar no fim do programa
	{ 	limpa()
		escreva("Agradecemos pela preferência, volte sempre que desejar!.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1949; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */