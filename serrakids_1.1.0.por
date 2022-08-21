// O programa simula uma loja de brinquedos, essa parte cria o logo da loja e o menu inicial, o logo tem formato "Sk" estilizado
programa {
	inclua biblioteca Util --> util
	inclua biblioteca Sons --> sons
	inclua biblioteca Texto --> texto
	inclua biblioteca Tipos --> tipo
	
	cadeia produtoCarrinho[50], vetorUser[51] , vetorSenha[51], imagemLinha1[50], imagemLinha2[50], imagemLinha3[50], imagemLinha4[50], imagemLinha5[50], imagemLinha6[50], imagemLinha7[50], nomeProduto[50], descricaoProduto[50], categoriaProduto[50], user, senha
	inteiro i = 0, totalUsuarios = 6, som, estoqueProduto[50], totalProdutos = 9, numeroItensCarrinho = 0
	real precoProduto[50]
	logico primeiroBoot = verdadeiro
	
	funcao inicio() {
		caracter decisaoInicio
		
		se(primeiroBoot == verdadeiro) {
			dadosPreDeterminados()
		}
		
		imprimeLogo()
		util.aguarde(1000)
		
		escreva("\n\n----- Bem-vindo a loja SerraKids! -----\n***************************************\n\nDeseja entrar na loja?\n\n1. Em caso afirmativo\nOutro para fechar o programa\n\nSua escolha: ")
		leia(decisaoInicio)
			escolha(decisaoInicio) {
				caso '1':
				limpa()
				login()
			pare
				caso contrario:
				fim()
			pare
			}
	}

	funcao dadosPreDeterminados() {
		//Banco de dados inicial - user
   	  	vetorUser[0] = "admin"
		vetorUser[1] = "gabriel"
	 	vetorUser[2] = "ricardo"
	 	vetorUser[3] = "jose"
	   	vetorUser[4] = "lucas"
		vetorUser[5] = "michelli"
	   		
	   	vetorSenha[0] = "123a"
	   	vetorSenha[1] = "123g"
	   	vetorSenha[2] = "123r"
	   	vetorSenha[3] = "123j"
	   	vetorSenha[4] = "123l"
	   	vetorSenha[5] = "123m"
		//Banco de dados inicial - produto
		categoriaProduto[0] = "Pelúcia"
		nomeProduto[0] = "Urso de pelúcia"
		descricaoProduto[0] = "Tamanho: 23cm, Cor: Branco"
		estoqueProduto[0] = 6 
		precoProduto[0] = 42.00
		
		imagemLinha1[0] = ("")
		imagemLinha2[0] = ("   ▄▀▀▀▄▄▄▄▄▄▄▀▀▀▄   ")
		imagemLinha3[0] = ("   █▒▒░░░░░░░░░▒▒█   ")
		imagemLinha4[0] = ("    █░░█░░░░░█░░█    ")
		imagemLinha5[0] = ("  ▄▄ █░░░▀█▀░░░█  ▄▄ ")
		imagemLinha6[0] = ("█░░█ ▀▄░░░░░░░▄▀ █░░█")
		imagemLinha7[0] = ("")

		categoriaProduto[1] = "Pelúcia"
		nomeProduto[1] = "Coração de pelúcia"
		descricaoProduto[1] = "Tamanho: 30cm Cor: Vermelho"
		estoqueProduto[1] = 10 
		precoProduto[1] = 50.00

		categoriaProduto[1] = "Pelúcia"
		imagemLinha1[1] = ("")
		imagemLinha2[1] = ("▄███▄███▄")
	     imagemLinha3[1] = ("█████████")
		imagemLinha4[1] = (" ▀█████▀")
		imagemLinha5[1] = ("   ▀█▀")
		imagemLinha6[1] = ("")
		imagemLinha7[1] = ("")

		categoriaProduto[2] = "Pelúcia"
		nomeProduto[2] = "Smile de pelúcia"
		descricaoProduto[2] = "Tamanho: 30cm, Cor: Amarelo"
		estoqueProduto[2] = 4
		precoProduto[2] = 30.00

		imagemLinha1[2] = ("▒▒▒▒▒▒▒▒▒▒▒▒")
		imagemLinha2[2] = ("▒▒▒▒▓▒▒▓▒▒▒▒")
		imagemLinha3[2] = ("▒▒▒▒▓▒▒▓▒▒▒▒")
		imagemLinha4[2] = ("▒▒▒▒▒▒▒▒▒▒▒▒")
		imagemLinha5[2] = ("▒▓▒▒▒▒▒▒▒▒▓▒")
		imagemLinha6[2] = ("▒▒▓▓▓▓▓▓▓▓▒▒")
		imagemLinha7[2] = ("▒▒▒▒▒▒▒▒▒▒▒▒")

		categoriaProduto[3] = "Eletrônico"
		nomeProduto[3] = "Caminhão de controle remoto"
		descricaoProduto[3] = "Tamanho: 30cm, Cor: Azul, acompanha pilhas"
		estoqueProduto[3] = 3 
		precoProduto[3] = 340.00

		imagemLinha1[3] = ("")
		imagemLinha2[3] = ("      ▄▌▐▀▀▀▀▀▀▀▀▀▀▀▀▌")
		imagemLinha3[3] = ("   ▄▄██▌█░░░░░░░░░░░░▐")
		imagemLinha4[3] = ("▄▄▄▌▐██▌█░░░░░░░░░░░░▐")
		imagemLinha5[3] = ("███████▌█▄▄▄▄▄▄▄▄▄▄▄▄▌")
		imagemLinha6[3] = ("▀❍▀▀▀▀▀▀▀❍❍▀▀▀▀▀▀❍❍")
		imagemLinha7[3] = ("")

		categoriaProduto[4] = "Eletrônico"
		nomeProduto[4] = "Jogo eletrônico Portátil Pac-Man"
		descricaoProduto[4] = "Muita nostalgia e diversão estilo anos 80 com este joguinho eletrônico estilo vintage"
		estoqueProduto[4] = 5
		precoProduto[4] = 189.00

		imagemLinha1[4] = ("")
		imagemLinha2[4] = ("──▒▒▒▒▒────▄████▄─────")
		imagemLinha3[4] = ("─▒─▄▒─▄▒──███▄█▀──────")
		imagemLinha4[4] = ("─▒▒▒▒▒▒▒─▐████──█──█──")
		imagemLinha5[4] = ("─▒▒▒▒▒▒▒──█████▄──────")
		imagemLinha6[4] = ("─▒─▒─▒─▒───▀████▀─────")
		imagemLinha7[4] = ("")

		categoriaProduto[5] = "Eletrônico"
		nomeProduto[5] = "Mini drone"
		descricaoProduto[5] = "Adota tecnologia avançada do sensor infravermelho de LED para torná-lo sensível ao movimento, para que ele detecte objetos próximos"
		estoqueProduto[5] = 7
		precoProduto[5] = 99.00

		imagemLinha1[5] = ("")
		imagemLinha2[5] = ("          █")
		imagemLinha3[5] = ("        ▄▄█▄▄")
		imagemLinha4[5] = ("    ▀▀▀██▀▀▀██▀▀▀")
		imagemLinha5[5] = ("▄▄▄▄▄▄▄███████▄▄▄▄▄▄▄")
		imagemLinha6[5] = ("  █▄█  ▀██▄██▀  █▄█")
		imagemLinha7[5] = ("")

		categoriaProduto[6] = "Boneco"
		nomeProduto[6] = "Boneco Coçadinha"
		descricaoProduto[6] = "Boneco de silicone, medindo 20cm"
		estoqueProduto[6] = 2
		precoProduto[6] = 119.00

		imagemLinha1[6] = (" ╭━━╮╭━━╮     ")
		imagemLinha2[6] = (" ┃╭╮┗┻━━┻━╮   ")
		imagemLinha3[6] = (" ┃╰┓╭━╮╭━╮┃   ")
		imagemLinha4[6] = (" ╰━┓┃▇┃┃▇┃┃   ")
		imagemLinha5[6] = ("   ┃╱▔▔▔▔▔▔▔▇ ")
		imagemLinha6[6] = ("   ┃▏┏┳┳┳┳┳━┛ ")
		imagemLinha7[6] = ("   ┃╲╰┻┻┻┻┻┓  ")

		categoriaProduto[7] = "Boneco"
		nomeProduto[7] = "Boneco Bob Esponja"
		descricaoProduto[7] = "Com 14 cm de altura e articulações nos braços e pernas"
		estoqueProduto[7] = 6 
		precoProduto[7] = 69.99
				
		imagemLinha1[7] = ("  ----------")
		imagemLinha2[7] = ("  ╮╭┻┻╮╭┻┻╮╭▕╮╲")
		imagemLinha3[7] = ("▕╯┃╭╮┃┃╭╮┃╰▕╯╭▏")
		imagemLinha4[7] = ("▕╭┻┻┻┛┗┻┻┛ ▕ ╰▏")
		imagemLinha5[7] = ("▕╰━━━┓┈┈┈╭╮▕╭╮▏")
		imagemLinha6[7] = ("▕╭╮╰┳┳┳┳╯╰╯▕╰╯▏")
		imagemLinha7[7] = ("▕╰╯┈┗┛┗┛┈╭╮▕╮┈▏")

		categoriaProduto[8] = "Boneco"
		nomeProduto[8] = "Boneco gigante Charmander"
		descricaoProduto[8] = "Tamanho: 45cm"
		estoqueProduto[8] = 4
		precoProduto[8] = 249.00
		
		imagemLinha1[8] = ("")
		imagemLinha2[8] = (" ▄▄▄▄ ")
		imagemLinha3[8] = ("▀▀▄██►")
		imagemLinha4[8] = ("▀▀███►")
		imagemLinha5[8] = (" ▀███►░█►")
		imagemLinha6[8] = ("▒▄████▀▀")
		imagemLinha7[8] = ("")

	   	primeiroBoot = falso
	}

	funcao inteiro cadeiaParaInt(cadeia letras) {
		
		letras = texto.caixa_baixa(letras)

       	letras = texto.substituir(letras, "a", "")
       	letras = texto.substituir(letras, "b", "")
       	letras = texto.substituir(letras, "c", "")
       	letras = texto.substituir(letras, "d", "")
       	letras = texto.substituir(letras, "e", "")
       	letras = texto.substituir(letras, "f", "")
       	letras = texto.substituir(letras, "g", "")
       	letras = texto.substituir(letras, "h", "")
       	letras = texto.substituir(letras, "i", "")
       	letras = texto.substituir(letras, "j", "")
       	letras = texto.substituir(letras, "k", "")
       	letras = texto.substituir(letras, "l", "")
       	letras = texto.substituir(letras, "m", "")
       	letras = texto.substituir(letras, "n", "")
       	letras = texto.substituir(letras, "o", "")
       	letras = texto.substituir(letras, "p", "")
       	letras = texto.substituir(letras, "q", "")
       	letras = texto.substituir(letras, "r", "")
       	letras = texto.substituir(letras, "s", "")
       	letras = texto.substituir(letras, "t", "")
       	letras = texto.substituir(letras, "u", "")
       	letras = texto.substituir(letras, "v", "")
       	letras = texto.substituir(letras, "w", "")
       	letras = texto.substituir(letras, "x", "")
       	letras = texto.substituir(letras, "y", "")
       	letras = texto.substituir(letras, "z", "")
       	letras = texto.substituir(letras, "ç", "")

      	retorne (tipo.cadeia_para_inteiro(letras, 10))
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
		logico valida = falso
		caracter decisaoLogin
			//escolhe se entra na tela de login ou finaliza o programa
			limpa()
			escreva("Escolha uma opção: \n")
			escreva("1. Acessar tela login \n")
	   		escreva("2. Voltar para o menu inicial \n")
	   		escreva("Outro para Fechar o programa\n\n")
	   		escreva("Sua escolha: ")
			leia(decisaoLogin)
				escolha(decisaoLogin) {
					caso '1':
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
						para( i = 0; i < totalUsuarios; i++)
							se(user == vetorUser[0] e senha == vetorSenha[0])	{
								escreva("*********************************\nAcesso permitido!")
								escreva("\n*********************************\n===Bem-vindo ao SerraKids!===\n")
								valida = verdadeiro 
								menuAdmin()
							}
							senao se(user == vetorUser[i] e senha == vetorSenha[i])	{
								escreva("*********************************\nAcesso permitido!")
								escreva("\n*********************************\n===Bem-vindo ao SerraKids!===\n")
								valida = verdadeiro 
								menuLoja()
							}
							se(i == 6 e valida == falso){ 
								errologin()
								//Login admin
							}
					pare
						
					caso '2' :
						limpa()
		 				inicio()
					pare
		 			caso contrario :
		 				fim()
		 			pare
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
	
	funcao menuAdmin() {
		caracter decisaoAdmin
		//opções para chamar funcoes
		escreva("=== Você esta no login do administrador ===\n\n")
		escreva("1. Adicionar usuário\n")
		escreva("2. Editar usuário\n")
		escreva("3. Excluir usuário\n")
		escreva("4. Adicionar produto\n")
		escreva("5. Editar produto\n")
		escreva("6. Excluir produto\n")
		escreva("7. Voltar para o login\n")
		escreva("8. Deslogar e voltar ao Inicio\n")
		escreva("0. Para finalizar o programa\n")
		escreva("Sua escolha: ")
		leia(decisaoAdmin)
		
		escolha(decisaoAdmin) {
			caso '1':
				limpa()
				adicionarUsuario()
			pare
			caso '2':
				limpa()
				editarUsuario()
			pare
			caso '3':
				excluirUsuario()
				fim()
			pare
			caso '4':
				limpa()
				adicionarProduto() 
			pare
			caso '5':
				limpa()
				editarProduto() 
			pare
			caso '6':
				limpa()
				excluirProduto() 
			pare
			caso '7':
				limpa()
				login()
			pare
			caso '8':
				limpa()
				inicio()
			pare
			caso '0':
				limpa()
				fim()
			pare
			caso contrario:
				//limpa e da opção inválido caso nao seja 0 até 5
				limpa()
				escreva("=== Opção Inválida, escolha um número entre 0 e 6 ===\n\n")
				menuAdmin()
		}
	}

	funcao adicionarUsuario() {
		
		cadeia novoUser, novaSenha
		caracter decisaoAddUser
		inteiro quantidadeCaracteres
		logico userExistente = falso, loop = verdadeiro
		
		enquanto(loop) {
				userExistente = falso
				limpa()
				escreva("Adição de usuário\n\nDigite um nome de usuario com um minimo de quatro caracteres, espaços são desconsiderados: \n\n>")
				leia(novoUser)
				novoUser = texto.substituir(novoUser, " ", "")
				quantidadeCaracteres = texto.numero_caracteres(novoUser)
						
				para(i = 0; i < (totalUsuarios - 1); i++) {
					se(novoUser == vetorUser[i]) {
						escreva("Nome de usuário já está sendo utilizado. Por favor, escolha outro.\n\n")
						util.aguarde(2000)
						userExistente = verdadeiro
						i = totalUsuarios
					}
				}
				se(quantidadeCaracteres >= 4 e userExistente == falso) {
					vetorUser[totalUsuarios] = novoUser
					escreva("Novo usuário chamado: ",vetorUser[totalUsuarios],"\n")
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
				vetorSenha[totalUsuarios] = novaSenha
				escreva("Senha definida com sucesso: ",vetorSenha[totalUsuarios],"\n")
				loop = falso
				escreva("\nUsuário criado com sucesso!\n\n")
				totalUsuarios++
				util.aguarde(2000)
			}
			senao {
				escreva("A senha necessita de no mínimo 4 caracteres, tente novamente.\n\n")
				util.aguarde(2000)
			}
		}
		
		loop = verdadeiro
		enquanto(loop) {
			escreva("O que deseja fazer agora?\n1. Criar outro novo usuário.\n2. Voltar ao menu de admin.\n3. Deslogar e voltar ao menu inicial\nOutro: Fechar o programa.\n\nSua escolha: ")
			leia (decisaoAddUser)
			escolha(decisaoAddUser) {
				caso '1':
					limpa()
					adicionarUsuario()
				pare
				caso '2':
					limpa()
					menuAdmin()
				pare
				caso '3':
					limpa()
					inicio()
				pare
				caso contrario:
					limpa()
					fim()
				pare
			}
		}
	}

	funcao editarUsuario() {

		cadeia escolher, nomeAtual = ""
		caracter decisaoEditUser = '0'
		inteiro quantidadeCaracteres = 0, escolherInt
		logico loop = verdadeiro, userExistente = falso

		limpa()
		escreva ("Edição de usuário\n\nSelecione qual usuário você deseja editar, ou 0 para retornar ao menu de admin. Nesse menu não são aceitos caracteres especiais.\n\n")
		para(i = 1; i < totalUsuarios; i++) {
			escreva(i,".",vetorUser[i],"\n")
			}
			
			escreva("Sua escolha: ")
			leia(escolher)
			limpa()
			
      		escolherInt = cadeiaParaInt(escolher)
				
			se(escolherInt == 0){
				limpa()
				menuAdmin()
			}
			senao se(escolherInt >= totalUsuarios ou escolherInt < 0) {
				escreva("** Opção invalida **\n.")
				util.aguarde(2000)
				limpa()
				editarUsuario()
			}
			senao {
			escreva("Usuario, ",vetorUser[escolherInt]," selecionado:\n1.Editar\n0.Voltar ao menu\nSua escolha: ")
			leia(decisaoEditUser)
			}	
			escolha(decisaoEditUser) {
				caso '1':
					nomeAtual = vetorUser[escolherInt]
				
					enquanto(loop) {
						userExistente = falso
						escreva("Edição de usuário\n\nDigite um novo nome de usuario com um minimo de quatro caracteres, espaços são desconsiderados: \n\n>")
						leia(vetorUser[escolherInt])
						vetorUser[escolherInt] = texto.substituir(vetorUser[escolherInt], " ", "")
						quantidadeCaracteres = texto.numero_caracteres(vetorUser[escolherInt])
						
						para(i = 0; i < totalUsuarios; i++) {
							se(vetorUser[escolherInt] == vetorUser[i] e vetorUser[escolherInt] == nomeAtual) {
								escreva("Nome de usuário já está sendo utilizado. Por favor, escolha outro.\n\n")
								util.aguarde(2000)
								userExistente = verdadeiro
								i = totalUsuarios
							}
						}
						se(quantidadeCaracteres >= 4 e userExistente == falso) {
							escreva("Usuário definido com sucesso: ",vetorUser[escolherInt],"\n")
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
						leia(vetorSenha[escolherInt])
						vetorSenha[escolherInt] = texto.substituir(vetorSenha[escolherInt], " ", "")
						quantidadeCaracteres = texto.numero_caracteres(vetorSenha[escolherInt])
						se(quantidadeCaracteres >= 4) {
							escreva("Senha definida com sucesso: ",vetorSenha[escolherInt],"\n")
							loop = falso
						}
						senao {
							escreva("A senha necessita de no mínimo 4 caracteres, tente novamente.\n\n")
							util.aguarde(2000)
						}
					}
					
					limpa()
					editarUsuario()
				pare
				caso '0':
					limpa()
					menuAdmin()
				pare
				caso contrario:
				limpa()
				escreva("*Opção inválida! Selecione um número dentre 0 e 1.*\n\n")
				editarUsuario()
				pare
		}
}

	funcao excluirUsuario() {

		cadeia escolher
		inteiro escolherInt
		
		escreva ("Exclusão de usuário\n\nQual usuário você deseja excluir?\n\n")
		para(i = 1; i < totalUsuarios; i++) {
			escreva(i,".",vetorUser[i],"\n")
			}
			
			escreva("Sua escolha: ")
			leia(escolher)
			escolherInt = cadeiaParaInt(escolher)
			limpa()
				
			se(escolherInt >= totalUsuarios ou escolherInt <= 0){
				escreva("** Número invalido **\n")
				excluirUsuario()
			}
			senao {
				escreva("Usuario, ",vetorUser[escolherInt]," excluido.\n")

				para(i = escolherInt; i < totalUsuarios; i++) {
					vetorUser[i] = vetorUser[i + 1]
					vetorSenha[i] = vetorSenha[i + 1]
				}
				totalUsuarios--
				
			}
			menuAdmin()
	}

	funcao adicionarProduto() {
		caracter decisaoAddProdu
		logico loop = verdadeiro
		
		limpa()
		escreva("Adição de produto\n\nEscolha a categoria do produto.\n1. Pelúcia\n2. Eletrônico\n3. Boneco\nOutro para retornar ao menu anterior\n\n>")
		leia(decisaoAddProdu)
		escolha(decisaoAddProdu) {
			caso '1':
				categoriaProduto[totalProdutos] = "Pelúcia"
			pare

			caso '2':
				categoriaProduto[totalProdutos] = "Eletrônico"
			pare

			caso '3':
				categoriaProduto[totalProdutos] = "Boneco"
			pare

			caso contrario:
				limpa()
				menuAdmin()
			pare
		}
			
		escreva("\nDigite o nome do produto: \n\n>")
		leia(nomeProduto[totalProdutos])

		escreva("\nDigite a descrição do produto: \n\n>")
		leia(descricaoProduto[totalProdutos])

		escreva("\nDigite o estoque do produto: \n\n>")
		leia(estoqueProduto[totalProdutos])

		escreva("\nDigite o preço do produto: \n\n>")
		leia(precoProduto[totalProdutos])

		escreva("\nUse seu teclado para gerar as sete (7) linhas de imagem do produto, linha por linha: \n\nLinha 1: ")
		leia(imagemLinha1[totalProdutos])

		escreva("Linha 2: ")
		leia(imagemLinha2[totalProdutos])

		escreva("Linha 3: ")
		leia(imagemLinha3[totalProdutos])

		escreva("Linha 4: ")
		leia(imagemLinha4[totalProdutos])

		escreva("Linha 5: ")
		leia(imagemLinha5[totalProdutos])

		escreva("Linha 6: ")
		leia(imagemLinha6[totalProdutos])

		escreva("Linha 7: ")
		leia(imagemLinha7[totalProdutos])

		totalProdutos++

		limpa()
		enquanto(loop) {
			escreva("O que deseja fazer agora?\n1. Criar outro novo produto.\n2. Voltar ao menu de admin.\n3. Deslogar e voltar ao menu inicial\nOutro: Fechar o programa.\n\nSua escolha: ")
			leia (decisaoAddProdu)
			escolha(decisaoAddProdu) {
				caso '1':
					limpa()
					adicionarProduto()
				pare
				caso '2':
					limpa()
					menuAdmin()
				pare
				caso '3':
					limpa()
					inicio()
				pare
				caso contrario:
					limpa()
					fim()
				pare
			}
		}
	}

	funcao editarProduto() {
		cadeia escolher
		caracter decisaoEditProdu = '0', decisaoSubMenu
		inteiro escolherInt

		limpa()
		escreva ("Edição de produto\n\nSelecione a ID do produto você deseja editar, ou 0 para retornar ao menu de admin. Nesse menu não são aceitos caracteres especiais.\n\n")
		para(i = 1; i < totalProdutos; i++) {
				escreva((i + 1), ".", nomeProduto[i],"\n")
			}
			
			escreva("Sua escolha: ")
			leia(escolher)
			limpa()
			
      		escolherInt = cadeiaParaInt(escolher)
      		escolherInt--
				
			se(escolherInt >= totalProdutos ou escolherInt < 0) {
				escreva("** Opção invalida **\n.")
				util.aguarde(2000)
				limpa()
				editarProduto()
			}
			senao {
			escreva("Produto, ", nomeProduto[escolherInt]," selecionado:\n1.Editar\n0.Voltar ao menu\nSua escolha: ")
			leia(decisaoEditProdu)
			}	
			
			escolha(decisaoEditProdu) {
				caso '1':
					limpa()
					escreva("Edição de produto\n\nEscolha a categoria do produto.\n1. Pelúcia\n2. Eletrônico\n3. Boneco\nOutro para retornar ao menu anterior\n\n>")
					leia(decisaoSubMenu)
					escolha(decisaoSubMenu) {
						caso '1':
							categoriaProduto[escolherInt] = "Pelúcia"
						pare

						caso '2':
							categoriaProduto[escolherInt] = "Eletrônico"
						pare

						caso '3':
							categoriaProduto[escolherInt] = "Boneco"
						pare

						caso contrario:
							limpa()
							menuAdmin()
						pare
					}
			
					escreva("\nDigite o nome do produto: \n\n>")
					leia(nomeProduto[escolherInt])

					escreva("\nDigite a descrição do produto: \n\n>")
					leia(descricaoProduto[escolherInt])

					escreva("\nDigite o estoque do produto: \n\n>")
					leia(estoqueProduto[escolherInt])

					escreva("\nDigite o preço do produto: \n\n>")
					leia(precoProduto[escolherInt])

					escreva("\nUse seu teclado para gerar as sete (7) linhas de imagem do produto, linha por linha: \n\nLinha 1: ")
					leia(imagemLinha1[escolherInt])

					escreva("Linha 2: ")
					leia(imagemLinha2[escolherInt])

					escreva("Linha 3: ")
					leia(imagemLinha3[escolherInt])

					escreva("Linha 4: ")
					leia(imagemLinha4[escolherInt])

					escreva("Linha 5: ")
					leia(imagemLinha5[escolherInt])

					escreva("Linha 6: ")
					leia(imagemLinha6[escolherInt])

					escreva("Linha 7: ")
					leia(imagemLinha7[escolherInt])
				pare
				caso '0':
					limpa()
					menuAdmin()
				pare
				caso contrario:
				limpa()
				escreva("*Opção inválida! Selecione um número dentre 0 e 1.*\n\n")
				editarProduto()
				pare
		}
}

	funcao excluirProduto() {
		cadeia escolher
		caracter decisaoDeletProdu
		inteiro escolherInt
		
		escreva ("Exclusão de produto\n\nQual produto você deseja excluir?\n\n")
		para(i = 1; i < totalProdutos; i++) {
			escreva((i + 1),".",nomeProduto[i],"\n")
			}
			
			escreva("Sua escolha: ")
			leia(escolher)
			escolherInt = cadeiaParaInt(escolher)
			escolherInt--
			limpa()
				
			se(escolherInt >= totalProdutos ou escolherInt < 0){
				escreva("** Número invalido **\n")
				excluirProduto()
			}
			senao {
				escreva("Está certo disso?\n1. Sim\nOutro para não\n\nSua escolha: ")
				leia(decisaoDeletProdu)
				se(decisaoDeletProdu == '1') {
					para(i = escolherInt; i < totalProdutos; i++) {
						categoriaProduto[i] = categoriaProduto[i + 1]
						nomeProduto[i] = nomeProduto[i + 1]
						descricaoProduto[i] = descricaoProduto[i + 1]
						estoqueProduto[i] = estoqueProduto[i + 1]
						precoProduto[i] = precoProduto[i + 1]
						imagemLinha1[i] = imagemLinha1[i + 1]
						imagemLinha2[i] = imagemLinha2[i + 1]
						imagemLinha3[i] = imagemLinha3[i + 1]
						imagemLinha4[i] = imagemLinha4[i + 1]
						imagemLinha5[i] = imagemLinha5[i + 1]
						imagemLinha6[i] = imagemLinha6[i + 1]
						imagemLinha7[i] = imagemLinha7[i + 1]
					}
					totalProdutos--
					limpa()
					escreva("Produto Excluido com sucesso")
					util.aguarde(2000)
				}
			}
			menuAdmin()
	}

	funcao menuLoja() {
		caracter decisaoLoja

		limpa()
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
	   	escreva("* 5. Deslogar e voltar ao inicio*\n")
	   	escreva("* 0. Para finalizar programa    *\n")
	     escreva("*********************************\n\n")
	     escreva("Sua escolha: ")
		
		leia(decisaoLoja)
		
		escolha(decisaoLoja){	
			caso '1':
				menuCategoria("Pelúcia")
			pare
				
			caso '2':
				menuCategoria("Eletrônico")					
			pare
				
			caso '3':
				menuCategoria("Boneco")	
			pare
				
			caso '4':
				menuCarrinho()		
			pare
				
			caso '5':
				limpa()
				inicio()
			pare
			
			caso '0':
				fim()//Tentei ao maximo, ate recriei o menu do zero, mas continua bugando apos usar varias opcoes e tentar fechar, nao tenho ideia porque, se continuar tentando sair, uma hora vai
			pare
			
			caso contrario:
				limpa()
				escreva("****************************************************\n")
				escreva("*Está não é uma opção. Escolha uma das apresentadas*\n")
				escreva("****************************************************\n\n")
				menuLoja()
			pare
		}
		
	}
	
	funcao menuCategoria(cadeia categoria) {
		cadeia decisao
		inteiro decisaoInt, j = 0
		logico itemExisteCarrinho = falso
		
		limpa()
		escreva("Categoria: ", categoria, ".\n\n")
			
		para(i = 0; i < totalProdutos; i++){
			se(categoriaProduto[i] == categoria){
				escreva("ID do produto: ", (i + 1), ".\nNome: ", nomeProduto[i], ".\nDescrição: ", descricaoProduto[i], ".\nEstoque: ", estoqueProduto[i], ".\nPreço: R$", precoProduto[i], ".\nImagem:\n", imagemLinha1[i], "\n", imagemLinha2[i], "\n", imagemLinha3[i], "\n", imagemLinha4[i], "\n", imagemLinha5[i], "\n", imagemLinha6[i], "\n", imagemLinha7[i], "\n\n")
			}
		}
		escreva("Por favor digite o ID do produto para adiciona-lo ao carrinho, ou digite 0 para retornar ao menu anterior\n\nSua Escolha: ")
		leia(decisao)
		se(decisao == "0") {
			menuLoja()
		}
		senao {
			decisaoInt = cadeiaParaInt(decisao)
			decisaoInt--
			limpa()
			escreva("Colocando ", nomeProduto[decisaoInt], " no carrinho, confirmar?\n1. Confirmar e voltar ao menu anterior\nOutro para cancelar e voltar para o menu anterior\n\nSua Escolha: ")
			leia(decisao)
			limpa()
			se(decisao == "1") {
				produtoCarrinho[numeroItensCarrinho] = nomeProduto[decisaoInt]
				numeroItensCarrinho++
			}
		}
		menuLoja()
	}
	
	funcao menuCarrinho() {
		inteiro j = 0
		real totalGeral = 0.0
		caracter decisaoCarrinho
		
		limpa()
		escreva("Itens no carrinho:\n")
			para(i = 0; i < numeroItensCarrinho; i++) {
				escreva("\n", produtoCarrinho[i], "\n")
				para(j = 0; j < totalProdutos; j++) {
					se(produtoCarrinho[i] == nomeProduto[j]) {
						totalGeral += precoProduto[j]
					}
				}
			}
			escreva("Preço total: R$", totalGeral, "\n\nVocê deseja:\n1. Comprar os itens do carrinho\n2. Esvaziar carrinho\nOutro para retornar ao menu anterior\n\nSua escolha: ")
			leia(decisaoCarrinho)
			escolha(decisaoCarrinho) {
				caso '1':
					limpa()
					se(numeroItensCarrinho == 0) {
						escreva("Você não possui itens no carrinho, não é possível realizar uma compra")
					}
					senao {
						para(i = 0; i < numeroItensCarrinho; i++) {
							para(j = 0; j < totalProdutos; j++) {
								se(produtoCarrinho[i] == nomeProduto[j]) {
									estoqueProduto[j]--
								}
							}
						}
						numeroItensCarrinho = 0 
						
						escreva("Obrigado pela compra!")
					}
					util.aguarde(2000)
					menuLoja()
				pare
				caso '2':
					numeroItensCarrinho = 0
					
					escreva("Carrinho esvaziado")
					util.aguarde(2000)
					menuCarrinho()
				pare
				caso contrario:
					menuLoja()
				pare
		}
	}

	funcao fim() { 	
		limpa()
		escreva("\nAté logo! Estamos no aguardo para vê-lo novamente.\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 27036; 
 * @DOBRAMENTO-CODIGO = [12, 35, 181, 216, 312, 368, 379, 440, 521, 615, 647, 733, 831, 878, 943, 976, 1027];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeroItensCarrinho, 9, 79, 19}-{decisao, 945, 9, 7}-{decisaoInt, 946, 10, 10}-{itemExisteCarrinho, 947, 9, 18};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */