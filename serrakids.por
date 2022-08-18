// O programa simula uma loja de brinquedos, essa parte cria o logo da loja e o menu inicial, o logo tem formato "Sk" estilizado
programa {
	inclua biblioteca Util --> util
	inclua biblioteca Sons --> s

	
	
	cadeia vetoruser[99] , vetorsenha[99], user, senha, carrinho [3]
	inteiro i , userNum = 0, quant = 6, som
	caracter escolhaMenu

	
	
	funcao inicio() {
		caracter decisaoMenu
		
		imprimeLogo()
		util.aguarde(1000)
		escreva("\n\n")
		
		escreva("----- Bem-vindo a loja SerraKids! -----\n\nDeseja entrar na loja?\n\n1 - Em caso afirmativo\nOutro para fechar o programa\n\nSua escolha: ")
		leia(decisaoMenu)
			se(decisaoMenu == '1') {
				limpa()
				escreva("Você já possui cadastro?\n\n1 - Para fazer login\n2 - Para criar uma nova conta\nOutro para voltar ao menu principal\n\nSua escolha: ")
				leia(decisaoMenu)
				escolha(decisaoMenu) {
					caso '1':
					login()// Ira chamar funcao login
					// Lembrar de deletar ao adicionar funcao
					pare
					
					caso '2':
					// Ira chamar funcao criarUsuario
					escreva("Novo usuario") // Lembrar de deletar ao adicionar funcao
					pare

					caso contrario:
					limpa()
					inicio()
				}
			}
			senao {
				escreva("\nAté logo! Estamos no aguardo para vê-lo novamente.")
			}
	}

	funcao imprimeLogo() {
		caracter s = '▓', k = '▒', espaco = ' '
		inteiro j = 0, alturaBloco, larguraBloco, larguraLogo, larguraLetra, tamanhoEspaco = 2, espacamentoEsquerdoLogo = 6, alturaLogo = 10 // As medidas do logo sao calculadas apartir da altura do logo, aceita apenas numeros maiores que 5
		alturaBloco = (alturaLogo / 5) // O logo foi montado apartir de "blocos" 1x2, onde sua altura equivale 1/5 da altura do logo e a largura equivale 2/5 da altura do logo
		larguraBloco = (alturaBloco * 2) 
		larguraLetra = (larguraBloco * 3)
		larguraLogo = ((larguraLetra * 2) + tamanhoEspaco) // Largura do logo = Duas letras + espaço
		
		para(i = 0; i < alturaBloco; i++) { // 1/5 da altura do logo
			para(j = 0; j < espacamentoEsquerdoLogo; j++) {
				escreva(espaco)
			}
			para(j = 0; j < larguraLogo; j++) {
				se(j < (larguraLetra)) {
					escreva(s)
				}
				senao {
					escreva(espaco)
				}
			}
			escreva("\n")
		}

		para(i = 0; i < alturaBloco; i++) { // 2/5 da altura do logo
			para(j = 0; j < espacamentoEsquerdoLogo; j++) {
				escreva(espaco)
			}
			para(j = 0; j < larguraLogo; j++) {
				se(j < larguraBloco) {
					escreva(s)
				}
				senao se(((j >= ((larguraLetra) + tamanhoEspaco))) e (j < ((larguraBloco * 4) + tamanhoEspaco))) {
					escreva(k)
				}
				senao {
					escreva(espaco)
				}
			}
			escreva("\n")
		}

		para(i = 0; i < alturaBloco; i++) { // 3/5 da altura do logo
			para(j = 0; j < espacamentoEsquerdoLogo; j++) {
				escreva(espaco)
			}
			para(j = 0; j < larguraLogo; j++) {
				se(j < larguraLetra) {
					escreva(s)
				}
				senao se((((j >= ((larguraLetra) + tamanhoEspaco))) e (j < ((larguraBloco * 4) + tamanhoEspaco))) ou ((j >= ((larguraBloco * 5) + tamanhoEspaco)))) {
					escreva(k)
				}
				senao {
					escreva(espaco)
				}
			}
			escreva("\n")
		}

		para(i = 0; i < alturaBloco; i++) { // 4/5 da altura do logo
			para(j = 0; j < espacamentoEsquerdoLogo; j++) {
				escreva(espaco)
			}
			para(j = 0; j < larguraLogo; j++) {
				se((j >= (larguraBloco * 2)) e (j < larguraLetra)) {
					escreva(s)
				}
				senao se((((j >= ((larguraLetra) + tamanhoEspaco))) e (j < ((larguraBloco * 5) + tamanhoEspaco)))) {
					escreva(k)
				}
				senao {
					escreva(espaco)
				}
			}
			escreva("\n")
		}

		para(i = 0; i < alturaBloco; i++) { // 5/5 da altura do logo
			para(j = 0; j < espacamentoEsquerdoLogo; j++) {
				escreva(espaco)
			}
			para(j = 0; j < larguraLogo; j++) {
				se(j < larguraLetra) {
					escreva(s)
				}
				senao se((((j >= ((larguraLetra) + tamanhoEspaco))) e (j < ((larguraBloco * 4) + tamanhoEspaco))) ou ((j >= ((larguraBloco * 5) + tamanhoEspaco)))) {
					escreva(k)
				}
				senao {
					escreva(espaco)
				}
			}
			escreva("\n")
		}
	}
	
	funcao login() {
		// variaveis
		caracter opcao
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
			limpa()
			escreva("Escolha uma opção: \n")
			escreva("1) Acessar tela login \n")
	   		escreva("2) Sair \n\n")
	   		escreva("Sua escolha: ")
			leia(opcao)
				escolha (opcao) {
					caso '1': 
		 			//Dados de entrada do usuario  
	   				limpa() 	
					escreva("Digite seu email de usuário: ")
					leia(user)
					escreva("Digite sua senha: ")
					leia(senha)
					se(user == "" ou senha == ""){
						errologin()
					}senao{}
					limpa()
					//Validação de acesso
					para( i = 0; i < quant; i++)
						se(user == vetoruser[0] e senha == vetorsenha[0])	{
							escreva("*********************************\nAcesso permitido!")
							escreva("\n*********************************\n===Bem-vindo ao SerraKids!===\n")
							valida = verdadeiro 
							menuAdmin()
						}
						senao se(user == vetoruser[i] e senha == vetorsenha[i])	{
							escreva("*********************************\nAcesso permitido!")
							escreva("\n*********************************\n===Bem-vindo ao SerraKids!===\n")
							valida = verdadeiro 
							menu()
						}
						se(i == 6 e valida == falso){ 
							errologin()
							//Login admin
						}
						
			caso '2': 
		 		fim()
		 		pare  
		 	caso contrario: 
		 		limpa()
		 		login()
			}   	   			
	}
	funcao errologin()
	{  
	  som = s.carregar_som("errou.mp3")
	  s.reproduzir_som(som,falso)
	  s.definir_volume(70)
	  util.aguarde(1000)
	  s.interromper_som(som)
	  s.liberar_som(som)
	  
	escreva("Usuário e/ou senha incorreto(s)!\n")
	escreva("Redirecionando para a tela de login...\n")
	util.aguarde(2000)
	login()
	}
	funcao menu(){
		escreva("***************************************\n")
		escreva("*                                     *\n")
		escreva("* $     $  $ $ $  $ $     $  $     $  *\n")
		escreva("* $ $ $ $  $      $  $    $  $     $  *\n")
		escreva("* $  $  $  $ $ $  $   $   $  $     $  *\n")
		escreva("* $     $  $      $    $  $  $     $  *\n")
		escreva("* $     $  $ $ $  $     $ $  $ $ $ $  *\n")
		escreva("***************************************\n")

		escreva("\nBem vindo ", user, "!")/*colocar usuário*/
		escreva("\nDigite o número da categoria que gostaria de olhar: \n\n")
		escreva("*******************************\n")        
		escreva("* Categorias:                 *\n")
	   	escreva("* 1- Pelúcias.                *\n")
	   	escreva("* 2- Eletrônicos.             *\n")
	   	escreva("* 3- Bonecos .                *\n")
	   	escreva("* 4- Ver carrinho             *\n")
	   	escreva("* 5- Para finalizar programa  *\n")
	   	escreva("* 0- Retornar para login      *\n")
	     escreva("*******************************\n\n")
	     escreva("Sua escolha: ")
		
		leia(escolhaMenu) 
		produtos()
	}
	funcao menuAdmin(){
		escreva("=== Você esta no login do administrador ===\n\n")
		adminUsuario()
	}
	funcao fim()//Deixar no fim do programa
	{ 	limpa()
		escreva("\n\nAgradecemos pela preferência, volte sempre que desejar!.\n\n")
	}


	funcao adminUsuario(){
	//variaveis e vetores do login
		caracter escolher
			//opções para chamar funcoes
			escreva("1.Adicionar usuário\n")
			escreva("2.Editar ou excluir usuário\n")
			escreva("3.Ir para o menu de produtos\n")
			escreva("4.Voltar para o login\n")
			escreva("5.Para finalizar o programa\n")
			escreva("0.Voltar ao Inicio\n")
			escreva("Sua escolha: ")
			leia(escolher)
			escolha(escolher){
				caso '1':
					limpa()
					adicionarUsuario()
				pare
				caso '2':
					limpa()
					editarUsuario()
				pare
				caso '0': 
					limpa()
					inicio()
				caso '3':
					limpa()
					menu()
				pare
				caso '4':
					limpa()
					login()
				pare
				caso '5':
					limpa()
					fim()
				pare
				caso contrario:
					//limpa e da opção inválido caso nao seja 0 até 3
					limpa()
					escreva("=== Opção Inválida, escolha entre 0 até 5 ===\n\n")
					adminUsuario()
			}
	}

	funcao adicionarUsuario(){
		
		cadeia novoUser, novaSenha
		caracter escolher,s,S,n,N
		logico voltar = verdadeiro
		
		escreva("1.Função: 'Adicionar usuário'\n\n")
		
		escreva("Digite um nome de usuário: ")
		leia (novoUser)
		escreva("Digite uma senha: ")
		leia(novaSenha)

		vetoruser[quant] = novoUser
		vetorsenha[quant] = novaSenha
		quant++
		
		escreva("\nUsuário criado com sucesso!\n\nVoltar a tela de login?\n> ")
		leia (escolher)
		enquanto(voltar){
			escolha(escolher){
			caso 's': 
			limpa()
			login()
			pare
			caso 'S': 
			limpa()
			login()
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
		
			escreva ("2. Edição de usuário\n\nQual usuário você deseja editar ou excluir?\n\n")
			para(i = 1; i < quant; i++){
				escreva(i,".",vetoruser[i],"\n")}
				escreva("Sua escolha: ")
				leia(userNum)
				limpa()
				
			se(userNum >= quant e userNum == 0){
				escreva("** Número invalido **\n")
				editarUsuario()
				}
				escreva("Usuario, ",vetoruser[userNum]," selecionado:\n1.Editar/Excluír Usuário e Senha\n0.Voltar ao menu\nSua escolha: ")
				leia (escolher)
				
			escolha(escolher){
				caso 1:
					limpa()
					escreva("Edição/Exclusão de usuário\n\nDigite o novo nome ou tecle enter para excluir: ")
					leia(vetoruser[userNum])
					escreva("Usuário definido/excluído com sucesso",vetoruser[userNum],"\n")
				
					escreva("Edição/Exclusão de senha\nDigite uma nova senha ou tecle enter para excluir::  ")
					leia(senha)
					escreva("Senha definida/excluída com sucesso ",vetorsenha[userNum],"\n")
					
					util.aguarde(2000)
					editarUsuario()
				pare
				caso 0:
					limpa()
					menuAdmin()
				pare
				caso contrario:
					limpa()
					escreva("*Número inválido! Selecione um número de o até 2.*\n\n")
					editarUsuario()
				pare
			}
	}
	funcao produtos() {

				escolha(escolhaMenu){
					
					caso '1':
						limpa()
						escreva("\n======> Produtos <======\n\n")

						escreva("\nDigite o número do produto que gostaria adicionar ao carrinho:\n\n")

						verProdutos("1- 1- Urso de pelúcia\n" , "Descrição: 23cm Cor: Branco.", 6, 42.00)//categoria 1 pelúcios

						escreva("   ▄▀▀▀▄▄▄▄▄▄▄▀▀▀▄   \n")
						escreva("   █▒▒░░░░░░░░░▒▒█   \n")
						escreva("    █░░█░░░░░█░░█    \n")
						escreva("  ▄▄ █░░░▀█▀░░░█  ▄▄ \n")
						escreva("█░░█ ▀▄░░░░░░░▄▀ █░░█\n\n")
						
						verProdutos("2- Coração de pelúcia\n", "Descrição: 30cm Cor: Vermelho.", 10, 50.00)

						escreva("▄███▄███▄\n")
	     				escreva("█████████\n")
						escreva(" ▀█████▀\n")
						escreva("   ▀█▀\n\n")
						
						verProdutos("3- Smile de pelúcia\n", "Descrição: 30cm.",4, 30.00)

						escreva("▒▒▒▒▒▒▒▒▒▒▒▒\n")
						escreva("▒▒▒▒▓▒▒▓▒▒▒▒\n")
						escreva("▒▒▒▒▓▒▒▓▒▒▒▒\n")
						escreva("▒▒▒▒▒▒▒▒▒▒▒▒\n")
						escreva("▒▓▒▒▒▒▒▒▒▒▓▒\n")
						escreva("▒▒▓▓▓▓▓▓▓▓▒▒\n")
						escreva("▒▒▒▒▒▒▒▒▒▒▒▒\n\n")
						
						escreva("0- Voltar ao menu anterior\n\n")
						escreva("Sua escolha: ")
						leia(escolhaMenu)
						addProdutosCarrinho()
					pare
					caso '2':
						limpa()
						escreva("======> Produtos <======\n\n")

						escreva("\nDigite o número do produto que gostaria adicionar ao carrinho:\n\n")

						
				
						verProdutos("1- Caminhão de controle remoto\n", "Descrição: Caminhão mede aproximadamente 30cm, acompanha controle remoto e pilhas.", 3, 340.00)
					
						escreva("      ▄▌▐▀▀▀▀▀▀▀▀▀▀▀▀▌\n")
						escreva("   ▄▄██▌█░░░░░░░░░░░░▐\n")
						escreva("▄▄▄▌▐██▌█░░░░░░░░░░░░▐\n")
						escreva("███████▌█▄▄▄▄▄▄▄▄▄▄▄▄▌\n")
						escreva("▀❍▀▀▀▀▀▀▀❍❍▀▀▀▀▀▀❍❍\n\n")
						
						verProdutos("2- Jogo eletrônico Portátil Pac-Man\n", "Descrição: Muita nostalgia e diversão estilo anos 80 com este joguinho eletrônico estilo vintage.", 5, 189.00)
					
						escreva("──▒▒▒▒▒────▄████▄─────\n")
						escreva("─▒─▄▒─▄▒──███▄█▀──────\n")
						escreva("─▒▒▒▒▒▒▒─▐████──█──█──\n")
						escreva("─▒▒▒▒▒▒▒──█████▄──────\n")
						escreva("─▒─▒─▒─▒───▀████▀─────\n\n")
						
						verProdutos("3- Mini drone.\n", "Descrição: Adota tecnologia avançada do sensor infravermelho de LED para torná-lo sensível ao movimento, para que ele detecte objetos próximos.", 7, 99.00)
					
						escreva("          █\n")
						escreva("        ▄▄█▄▄\n")
						escreva("    ▀▀▀██▀▀▀██▀▀▀\n")
						escreva("▄▄▄▄▄▄▄███████▄▄▄▄▄▄▄\n")
						escreva("  █▄█  ▀██▄██▀  █▄█\n\n")
						
						escreva("0- Voltar ao menu anterior\n\n")
						escreva("Sua escolha: ")
						leia(escolhaMenu)
						addProdutosCarrinho()						
					pare
					caso '3':
						limpa()
						escreva("======> Produtos <======\n\n")

						escreva("\nDigite o número do produto que gostaria adicionar ao carrinho:\n\n")
						
						verProdutos("1- Boneco Coçadinha.\n", "Descrição: Boneco de silicone, medindo 20cm", 2, 119.00)

						escreva(" ╭━━╮╭━━╮     \n")
						escreva(" ┃╭╮┗┻━━┻━╮   \n")
						escreva(" ┃╰┓╭━╮╭━╮┃   \n")
						escreva(" ╰━┓┃▇┃┃▇┃┃   \n")
						escreva("   ┃╱▔▔▔▔▔▔▔▇ \n")
						escreva("   ┃▏┏┳┳┳┳┳━┛ \n")
						escreva("   ┃╲╰┻┻┻┻┻┓  \n\n")
						
						verProdutos("2- Boneco Bob Esponja.\n", "Descrição: Com 14 cm de altura e articulações nos braços e pernas", 6, 69.99)

						escreva("  ----------\n")
						escreva("  ╮╭┻┻╮╭┻┻╮╭▕╮╲\n")
						escreva("▕╯┃╭╮┃┃╭╮┃╰▕╯╭▏\n")
						escreva("▕╭┻┻┻┛┗┻┻┛ ▕ ╰▏\n")
						escreva("▕╰━━━┓┈┈┈╭╮▕╭╮▏\n")
						escreva("▕╭╮╰┳┳┳┳╯╰╯▕╰╯▏\n")
						escreva("▕╰╯┈┗┛┗┛┈╭╮▕╮┈▏\n\n")
						
						verProdutos("3- Boneco gigante Charmander.\n", "Descrição: Medida aproximadamente 45cm.", 4, 249.00)

						escreva(" ▄▄▄▄ \n")
						escreva("▀▀▄██►\n")
						escreva("▀▀███►\n")
						escreva(" ▀███►░█►\n")
						escreva("▒▄████▀▀\n\n")
						
						escreva("0- Voltar ao menu anterior\n\n")
						escreva("Sua escolha: ")
						leia(escolhaMenu)
						addProdutosCarrinho()
					pare
					caso '4':
						dentroCarrinho()
						
					pare
					caso '5':
						limpa()
						fim()
					pare
					caso '0':
						limpa()
						login()
					pare
					caso contrario:
						limpa()
						escreva("****************************************************\n")
						escreva("*Está não é uma opção. Escolha uma das apresentadas*\n")
						escreva("****************************************************\n\n")
						menu()
					pare
				}
	}
	funcao verProdutos(cadeia nome, cadeia descricao, inteiro qtde, real preco) {
		
		escreva(nome, descricao,"\n")
		escreva("Quantidade: ", qtde,"\n")
		escreva("Valor: R$ ", preco,"\n\n")
	}
	funcao addProdutosCarrinho(){
		
		escolha(escolhaMenu){
			caso '1':
					escreva("\nConfirme a categoria, por favor:\n")
					categorias()
					leia(escolhaMenu)
					escolha(escolhaMenu){
						caso '1':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}senao{
								limpa()
							carrinho[i] = "Urso de pelúcia"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
							}
						pare
						caso '2':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio1.*\n")
								escreva("***************************\n\n")
								menu()
							}senao{
								limpa()
							carrinho[i] = "Coração de pelúcia"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
							}
						pare
						caso '3':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}senao{
								limpa()
							carrinho[i] = "Smile de pelúcia"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
							}
						pare
						caso '0':
						     escolhaMenu = '1'
							produtos()
						pare
						caso contrario:
							limpa()
							escreva("****************************************************\n")
							escreva("*Está não é uma opção. Escolha uma das apresentadas*\n")
							escreva("****************************************************\n\n")
							escolhaMenu = '1'
							produtos()
						
						pare
					}
			pare
			caso '2':
					escreva("\nConfirme a categoria, por favor:\n")
					categorias()
					leia(escolhaMenu)
					escolha(escolhaMenu){
						caso '1':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}senao{
								limpa()
							carrinho[i] = "Caminhão de controle remoto"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
							}
						pare
						caso '2':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}senao{
								limpa()
							carrinho[i] = "Jogo eletrônico Portátil Pac-Man"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
							}
						pare
						caso '3':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}senao{
								limpa()
							carrinho[i] = "Mini drone"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
							}
						pare
						caso '0':
							escolhaMenu = '2'
							produtos()
						pare
						caso contrario:
							limpa()
							escreva("****************************************************\n")
							escreva("*Está não é uma opção. Escolha uma das apresentadas*\n")
							escreva("****************************************************\n\n")
							escolhaMenu = '2'
							produtos()
						pare
					}
			pare
			caso '3':
					escreva("\nConfirme a categoria, por favor:\n")
					categorias()
					leia(escolhaMenu)
					escolha(escolhaMenu){
						caso '1':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}senao{
								limpa()
							carrinho[i] = "Boneco Coçadinha"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
							}
						pare
						caso '2':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}senao {
								limpa()
							carrinho[i] = "Boneco Bob Esponja"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
							}
						pare
						caso '3':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}senao{
								limpa()
							carrinho[i] = "Boneco gigante Charmander"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
							}
						pare
						caso '0':
							escolhaMenu = '3'
							produtos()
						pare
						caso contrario:
							limpa()
							escreva("****************************************************\n")
							escreva("*Está não é uma opção. Escolha uma das apresentadas*\n")
							escreva("****************************************************\n\n")
							escolhaMenu = '3'
							produtos()
						pare
					}
			pare
			caso '0':
				limpa()
				menu()
			pare
			caso contrario:
				limpa()
				escreva("****************************************************\n")
				escreva("*Está não é uma opção. Escolha uma das apresentadas*\n")
				escreva("****************************************************\n\n")
				menu()
				
			pare
		}
	}
	funcao categorias(){
		escreva("*******************************\n")        
		escreva("* Categorias:                 *\n* 1- Pelúcias.                *\n* 2- Eletrônicos.             *\n* 3- Bonecos .                *\n* 0- Retornar o menu anterior *\n")
	     escreva("*******************************\n")
	     escreva("Sua escolha: ")
	}
	funcao dentroCarrinho(){
		
		se(i == 0){
			limpa()
			escreva("************************\n")
			escreva("*O carrinho está vazio!*\n")
			escreva("************************\n")
			menu()
		}senao {

			escreva("\nCarrinho: \n")
			escreva("\n")
			escreva(carrinho [0])
			escreva("\n")
			escreva(carrinho [1])
			escreva("\n")
			escreva(carrinho [2])
			escreva("\n\n")

			escreva("Confirmar compra ? (s/n)\n")
			leia(escolhaMenu)
			se(escolhaMenu == 's'){
				limpa()
				i = 0
				carrinho [1] = ""
				carrinho [2] = ""
				escreva("*******************************\n")
				escreva("*Compra realizada com sucesso!*\n")
				escreva("*******************************\n")
				inicio()
			}
			se(escolhaMenu == 'n'){
				limpa()
				escreva("***********************\n")
				escreva("*Compra não realizada!*\n")
				escreva("***********************\n")
				inicio()
			}
			senao{
				limpa()
				escreva("****************************************************\n")
				escreva("*Está não é uma opção. Escolha uma das apresentadas*\n")
				escreva("****************************************************\n\n")
				dentroCarrinho()
			}
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5865; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetoruser, 8, 8, 9}-{vetorsenha, 8, 24, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */