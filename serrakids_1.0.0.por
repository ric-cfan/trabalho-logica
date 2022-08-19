// O programa simula uma loja de brinquedos, essa parte cria o logo da loja e o menu inicial, o logo tem formato "Sk" estilizado
programa {
	inclua biblioteca Util --> util
	inclua biblioteca Sons --> sons
	inclua biblioteca Texto --> texto
	
	cadeia vetoruser[99] , vetorsenha[99], user, senha, carrinho [3]
	inteiro i = 0 , userNum = 0, quant = 6, som, primeiroBoot = 0, totalComprado = 0
	caracter escolhaMenu
	
	funcao inicio() {
		cadeia decisaoMenu

		se(primeiroBoot == 0) {
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

	   		primeiroBoot++
		}
		
		imprimeLogo()
		util.aguarde(1000)
		
		escreva("\n\n----- Bem-vindo a loja SerraKids! -----\n***************************************\n\nDeseja entrar na loja?\n\n1. Em caso afirmativo\nOutro para fechar o programa\n\nSua escolha: ")
		leia(decisaoMenu)
			se(decisaoMenu == "1") {
				limpa()
				login()
			
			}
			senao {
				fim()
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
		cadeia opcao
		logico valida = falso
			//escolhe se entra na tela de login ou finaliza o programa
			limpa()
			escreva("Escolha uma opção: \n")
			escreva("1. Acessar tela login \n")
	   		escreva("2. Voltar para o menu principal \n")
	   		escreva("Outro para Fechar o programa\n\n")
	   		escreva("Sua escolha: ")
			leia(opcao)
				se(opcao == "1") { 
		 			//Dados de entrada do usuario  
	   				limpa() 	
					escreva("Digite seu usuário: ")
					leia(user)
					escreva("Digite sua senha: ")
					leia(senha)
					se(user == "" ou senha == ""){
						errologin()
					}
					senao{
					limpa()
					//Validação de acesso
					}
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
				}
						
				senao se(opcao == "2")  {
					limpa()
		 			inicio()
				}
		 		senao { 
		 			fim()
				}   	   			
	}
	
	funcao errologin() {  
		som = sons.carregar_som("errou.mp3")
		sons.reproduzir_som(som,falso)
		sons.definir_volume(100)
	  
		escreva("Usuário e/ou senha incorreto(s)!\n")
		escreva("Redirecionando para a tela de login...\n")
		util.aguarde(2000)
		login()
	}
	
	funcao menu() {
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
		escreva("*********************************\n")        
		escreva("* Categorias:                   *\n")
	   	escreva("* 1. Pelúcias                   *\n")
	   	escreva("* 2. Eletrônicos                *\n")
	   	escreva("* 3. Bonecos                    *\n")
	   	escreva("* 4. Ver carrinho               *\n")
	   	escreva("* 5. Para finalizar programa    *\n")
	   	escreva("* 0. Deslogar e voltar ao inicio*\n")
	     escreva("*********************************\n\n")
	     escreva("Sua escolha: ")
		
		leia(escolhaMenu) 
		produtos()
	}
	
	funcao menuAdmin() {
		escreva("=== Você esta no login do administrador ===\n\n")
		adminUsuario()
	}
	
	funcao fim() { 	
		limpa()
		escreva("\nAté logo! Estamos no aguardo para vê-lo novamente.\n")
	}

	funcao adminUsuario() {
		//variaveis e vetores do login
		cadeia escolher
		//opções para chamar funcoes
		escreva("1. Adicionar usuário\n")
		escreva("2. Editar usuário\n")
		escreva("3. Excluir usuário\n")
		escreva("4. Ir para o menu de produtos\n")
		escreva("5. Voltar para o login\n")
		escreva("6. Para finalizar o programa\n")
		escreva("0. Deslogar e voltar ao Inicio\n")
		escreva("Sua escolha: ")
		leia(escolher)
		
		se(escolher == "1") {
			limpa()
			adicionarUsuario()
		}
		senao se(escolher == "2") {
			limpa()
			editarUsuario()
		}
		senao se(escolher == "3") {
			excluirUsuario()
			fim()
		}
		senao se(escolher == "4") {
			limpa()
			menu()
		}
		senao se(escolher == "5") {
			limpa()
			login()
		}
		senao se(escolher == "6") {
			limpa()
			fim()
		}
		senao se(escolher == "0")  {
			limpa()
			inicio()
		}
		senao {
			//limpa e da opção inválido caso nao seja 0 até 5
			limpa()
			escreva("=== Opção Inválida, escolha um número entre 0 e 5 ===\n\n")
			adminUsuario()
		}
	}

	funcao adicionarUsuario(){
		
		cadeia novoUser, novaSenha, escolher
		inteiro quantidadeCaracteres
		logico voltar = verdadeiro, userExistente = falso, loop = verdadeiro
		
		enquanto(loop) {
				userExistente = falso
				limpa()
				escreva("Adição de usuário\n\nDigite um nome de usuario com um minimo de quatro caracteres, espaços são desconsiderados: \n\n>")
				leia(novoUser)
				novoUser = texto.substituir(novoUser, " ", "")
				quantidadeCaracteres = texto.numero_caracteres(novoUser)
						
				para(i = 0; i < (quant - 1); i++) {
					se(novoUser == vetoruser[i]) {
						escreva("Nome de usuário já está sendo utilizado. Por favor, escolha outro.\n\n")
						util.aguarde(2000)
						userExistente = verdadeiro
						i = quant
					}
				}
				se(quantidadeCaracteres >= 4 e userExistente == falso) {
					vetoruser[quant] = novoUser
					escreva("Usuário definido com sucesso: ",vetoruser[quant],"\n")
					loop = falso
				}
				senao {
					se(userExistente == falso) {
						escreva("O usuário necessita de no mínimo 4 caracteres, tente novamente.\n\n")
						util.aguarde(2000)
					}
				}
			}
			
		loop = verdadeiro
		enquanto(loop) {
			escreva("Edição de senha\nDigite uma senha com um minimo de quatro caracteres, espaços são desconsiderados:  \n\n>")
			leia(novaSenha)
			novaSenha = texto.substituir(novaSenha, " ", "")
			quantidadeCaracteres = texto.numero_caracteres(novaSenha)
			se(quantidadeCaracteres >= 4) {
				vetorsenha[quant] = novaSenha
				escreva("Senha definida com sucesso: ",vetorsenha[quant],"\n")
				loop = falso
				escreva("\nUsuário criado com sucesso!\n\n")
				quant++
			}
			senao {
				escreva("A senha necessita de no mínimo 4 caracteres, tente novamente.\n\n")
				util.aguarde(2000)
			}
		}

		enquanto(voltar) {
			escreva("Voltar a tela de login?\nDigite \"s\" para sim, \"n\" para não.\n\nSua escolha: ")
			leia (escolher)
			escolher = texto.caixa_baixa(escolher)
			se(escolher == "s") {
				limpa()
				login()
			}
			senao se(escolher == "n") {
				limpa()
				adminUsuario()
			}
			senao {
				limpa()
				escreva("Opção invalida, por favor tente novamente.\n> ")
			}
		}
	}
	
	funcao editarUsuario() {

		cadeia escolher, nomeAtual = ""
		inteiro quantidadeCaracteres = 0
		logico loop = verdadeiro, userExistente = falso

		escreva ("Edição de usuário\n\nQual usuário você deseja editar, ou 0 para retornar ao menu de admin.\n\n")
		para(i = 1; i < quant; i++) {
			escreva(i,".",vetoruser[i],"\n")
			}
			
			escreva("Sua escolha: ")
			leia(userNum)
			limpa()
				
			se(userNum >= quant ou userNum == 0){
				se(userNum == 0) {
					menuAdmin()
				}
				senao {
					escreva("** Número invalido **\n")
					util.aguarde(2000)
					editarUsuario()
				}
			}
			
			escreva("Usuario, ",vetoruser[userNum]," selecionado:\n1.Editar\n0.Voltar ao menu\nSua escolha: ")
			leia (escolher)
				
			se(escolher == "1") {
				nomeAtual = vetoruser[userNum]
				
				enquanto(loop) {
					userExistente = falso
					escreva("Edição de usuário\n\nDigite um novo nome de usuario com um minimo de quatro caracteres, espaços são desconsiderados: \n\n>")
					leia(vetoruser[userNum])
					vetoruser[userNum] = texto.substituir(vetoruser[userNum], " ", "")
					quantidadeCaracteres = texto.numero_caracteres(vetoruser[userNum])
						
					para(i = 0; i < quant; i++) {
						se(vetoruser[userNum] == vetoruser[i] e vetoruser[userNum] == nomeAtual) {
							escreva("Nome de usuário já está sendo utilizado. Por favor, escolha outro.\n\n")
							util.aguarde(2000)
							userExistente = verdadeiro
							i = quant
						}
					}
					se(quantidadeCaracteres >= 4 e userExistente == falso) {
						escreva("Usuário definido com sucesso: ",vetoruser[userNum],"\n")
						loop = falso
					}
					senao {
						se(userExistente == falso) {
							escreva("O usuário necessita de no mínimo 4 caracteres, tente novamente.\n\n")
							util.aguarde(2000)
						}
					}
				}
				loop = verdadeiro
				enquanto(loop) {
					escreva("Edição de senha\nDigite uma nova senha com um minimo de quatro caracteres, espaços são desconsiderados:  \n\n>")
					leia(vetorsenha[userNum])
					vetorsenha[userNum] = texto.substituir(vetorsenha[userNum], " ", "")
					quantidadeCaracteres = texto.numero_caracteres(vetorsenha[userNum])
					se(quantidadeCaracteres >= 4) {
						escreva("Senha definida com sucesso: ",vetorsenha[userNum],"\n")
						loop = falso
					}
					senao {
						escreva("A senha necessita de no mínimo 4 caracteres, tente novamente.\n\n")
						util.aguarde(2000)
					}
				}
					
					limpa()
					editarUsuario()
		}
		senao se(escolher == "0") {
				limpa()
				menuAdmin()
		}
		senao {
				limpa()
				escreva("*Número inválido! Selecione um número dentre 0 e 1.*\n\n")
				editarUsuario()
		}
}

		funcao excluirUsuario() {

		cadeia escolher
		
		escreva ("Exclusão de usuário\n\nQual usuário você deseja excluir?\n\n")
		para(i = 1; i < quant; i++) {
			escreva(i,".",vetoruser[i],"\n")
			}
			
			escreva("Sua escolha: ")
			leia(userNum)
			limpa()
				
			se(userNum >= quant e userNum == 0){
				escreva("** Número invalido **\n")
				excluirUsuario()
			}
			senao {
				escreva("Usuario, ",vetoruser[userNum]," excluido.\n")

				para(i = userNum; i < quant; i++) {
					vetoruser[i] = vetoruser[i + 1]
					vetorsenha[i] = vetorsenha[i + 1]
				}
				quant--
				
			}
			menuAdmin()
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
				inicio()
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
						se(totalComprado == 3){
							limpa()
							escreva("***************************\n")
							escreva("*O carrinho já está cheio.*\n")
							escreva("***************************\n\n")
							menu()
						}
						senao {
							limpa()
							carrinho[totalComprado] = "Urso de pelúcia"
							totalComprado++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
						}
					pare
					
					caso '2':
						se(totalComprado == 3){
							limpa()
							escreva("***************************\n")
							escreva("*O carrinho já está cheio1.*\n")
							escreva("***************************\n\n")
							menu()
						}
						senao {
							limpa()
							carrinho[totalComprado] = "Coração de pelúcia"
							totalComprado++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menu()
						}
					pare
					
					caso '3':
						se(totalComprado == 3) {
							limpa()
							escreva("***************************\n")
							escreva("*O carrinho já está cheio.*\n")
							escreva("***************************\n\n")
							menu()
						}
						senao {
							limpa()
							carrinho[totalComprado] = "Smile de pelúcia"
							totalComprado++
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
							se(totalComprado == 3) {
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Caminhão de controle remoto"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menu()
							}
						pare
						
						caso '2':
							se(totalComprado == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Jogo eletrônico Portátil Pac-Man"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menu()
							}
						pare
						
						caso '3':
							se(totalComprado == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Mini drone"
								totalComprado++
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
					escolha(escolhaMenu) {
						caso '1':
							se(totalComprado == 3) {
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Boneco Coçadinha"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menu()
							}
						pare
						
						caso '2':
							se(totalComprado == 3) {
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Boneco Bob Esponja"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menu()
							}
						pare
						
						caso '3':
							se(totalComprado == 3) {
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								menu()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Boneco gigante Charmander"
								totalComprado++
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
		
		se(totalComprado == 0){
			limpa()
			escreva("************************\n")
			escreva("*O carrinho está vazio!*\n")
			escreva("************************\n")
			menu()
		}
		senao {
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
			se(escolhaMenu == 's' ou escolhaMenu == 'S'){
				limpa()
				totalComprado = 0
				carrinho [1] = ""
				carrinho [2] = ""
				escreva("*******************************\n")
				escreva("*Compra realizada com sucesso!*\n")
				escreva("*******************************\n")
				inicio()
			}
			se(escolhaMenu == 'n' ou escolhaMenu == 'N'){
				limpa()
				escreva("***********************\n")
				escreva("*Compra não realizada!*\n")
				escreva("***********************\n")
				menu()
			}
			senao {
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
 * @POSICAO-CURSOR = 25200; 
 * @DOBRAMENTO-CODIGO = [10, 47, 143, 197, 208, 235, 240, 245, 295, 368, 456, 488, 486, 619];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetoruser, 7, 8, 9}-{vetorsenha, 7, 24, 10}-{i, 8, 9, 1}-{escolhaMenu, 9, 10, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */