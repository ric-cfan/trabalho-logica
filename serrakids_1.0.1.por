// O programa simula uma loja de brinquedos, essa parte cria o logo da loja e o menu inicial, o logo tem formato "Sk" estilizado
programa {
	inclua biblioteca Util --> util
	inclua biblioteca Sons --> sons
	inclua biblioteca Texto --> texto
	inclua biblioteca Tipos --> tipo
	
	cadeia vetoruser[51] , vetorsenha[51], user, senha, carrinho [3]
	inteiro i = 0, totalUsuarios = 6, som, primeiroBoot = 0, totalComprado = 0
	caracter escolhaMenu
	
	funcao inicio() {

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
		leia(escolhaMenu)
			escolha(escolhaMenu) {
				caso '1':
				limpa()
				login()
			pare
				caso contrario:
				fim()
			pare
			}
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
       	letras = texto.substituir(letras, "??", "")

      	retorne (tipo.cadeia_para_inteiro(letras, 10))
	}
	
	funcao imprimeLogo() {
		caracter s = '???', k = '???', espaco = ' '
		inteiro j = 0, alturaBloco, larguraBloco, larguraLogo, larguraLetra, tamanhoEspaco = 2, espacamentoEsquerdoLogo = 6, alturaLogo = 10 // As medidas do logo sao calculadas apartir da altura do logo, aceita apenas numeros maiores que 5
		alturaBloco = (alturaLogo / 5) // O logo foi montado apartir de "blocos" 1x2, onde sua altura equivale 1/5 da altura do logo e a largura equivale 2/5 da altura do logo
		larguraBloco = (alturaBloco * 2) 
		larguraLetra = (larguraBloco * 3)
		larguraLogo = ((larguraLetra * 2) + tamanhoEspaco) // Largura do logo = Duas letras + espa??o
		
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
			//escolhe se entra na tela de login ou finaliza o programa
			limpa()
			escreva("Escolha uma op????o: \n")
			escreva("1. Acessar tela login \n")
	   		escreva("2. Voltar para o menu inicial \n")
	   		escreva("Outro para Fechar o programa\n\n")
	   		escreva("Sua escolha: ")
			leia(escolhaMenu)
				escolha(escolhaMenu) {
					caso '1':
		 				//Dados de entrada do usuario  
	   					limpa() 	
						escreva("Digite seu usu??rio: ")
						leia(user)
						escreva("Digite sua senha: ")
						leia(senha)
						se(user == "" ou senha == ""){
							errologin()
						}
						senao{
						limpa()
						//Valida????o de acesso
						}
						para( i = 0; i < totalUsuarios; i++)
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
	  
		escreva("Usu??rio e/ou senha incorreto(s)!\n")
		escreva("Redirecionando para a tela de login...\n")
		util.aguarde(2000)
		login()
	}
	
	funcao menuAdmin() {
		//op????es para chamar funcoes
		escreva("=== Voc?? esta no login do administrador ===\n\n")
		escreva("1. Adicionar usu??rio\n")
		escreva("2. Editar usu??rio\n")
		escreva("3. Excluir usu??rio\n")
		escreva("4. Ir para o menu de produtos\n")
		escreva("5. Voltar para o login\n")
		escreva("6. Deslogar e voltar ao InicioPara finalizar o programa\n")
		escreva("0. Para finalizar o programa\n")
		escreva("Sua escolha: ")
		leia(escolhaMenu)
		
		escolha(escolhaMenu) {
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
				editarProdutos() //Editar para menuLojaAdmin quando existir
			pare
			caso '5':
				limpa()
				login()
			pare
			caso '6':
				limpa()
				inicio()
			pare
			caso '0':
				limpa()
				fim()
			pare
			caso contrario:
				//limpa e da op????o inv??lido caso nao seja 0 at?? 5
				limpa()
				escreva("=== Op????o Inv??lida, escolha um n??mero entre 0 e 6 ===\n\n")
				menuAdmin()
		}
	}

	funcao adicionarUsuario() {
		
		cadeia novoUser, novaSenha
		inteiro quantidadeCaracteres
		logico userExistente = falso, loop = verdadeiro
		
		enquanto(loop) {
				userExistente = falso
				limpa()
				escreva("Adi????o de usu??rio\n\nDigite um nome de usuario com um minimo de quatro caracteres, espa??os s??o desconsiderados: \n\n>")
				leia(novoUser)
				novoUser = texto.substituir(novoUser, " ", "")
				quantidadeCaracteres = texto.numero_caracteres(novoUser)
						
				para(i = 0; i < (totalUsuarios - 1); i++) {
					se(novoUser == vetoruser[i]) {
						escreva("Nome de usu??rio j?? est?? sendo utilizado. Por favor, escolha outro.\n\n")
						util.aguarde(2000)
						userExistente = verdadeiro
						i = totalUsuarios
					}
				}
				se(quantidadeCaracteres >= 4 e userExistente == falso) {
					vetoruser[totalUsuarios] = novoUser
					escreva("Novo usu??rio chamado: ",vetoruser[totalUsuarios],"\n")
					loop = falso
				}
				senao {
					se(userExistente == falso) {
						escreva("O usu??rio necessita de no m??nimo 4 caracteres, tente novamente.\n\n")
						util.aguarde(2000)
					}
				}
		}
			
		loop = verdadeiro
		enquanto(loop) {
			escreva("Edi????o de senha\nDigite uma senha com um minimo de quatro caracteres, espa??os s??o desconsiderados:  \n\n>")
			leia(novaSenha)
			novaSenha = texto.substituir(novaSenha, " ", "")
			quantidadeCaracteres = texto.numero_caracteres(novaSenha)
			se(quantidadeCaracteres >= 4) {
				vetorsenha[totalUsuarios] = novaSenha
				escreva("Senha definida com sucesso: ",vetorsenha[totalUsuarios],"\n")
				loop = falso
				escreva("\nUsu??rio criado com sucesso!\n\n")
				totalUsuarios++
				util.aguarde(2000)
			}
			senao {
				escreva("A senha necessita de no m??nimo 4 caracteres, tente novamente.\n\n")
				util.aguarde(2000)
			}
		}
		
		loop = verdadeiro
		enquanto(loop) {
			escreva("O que deseja fazer agora?\n1. Criar outro novo usu??rio.\n2. Voltar ao menu de admin.\n3. Deslogar e voltar ao menu inicial\nOutro: Fechar o programa.\n\nSua escolha: ")
			leia (escolhaMenu)
			escolha(escolhaMenu) {
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
		inteiro quantidadeCaracteres = 0, escolherInt
		logico loop = verdadeiro, userExistente = falso

		limpa()
		escreva ("Edi????o de usu??rio\n\nSelecione qual usu??rio voc?? deseja editar, ou 0 para retornar ao menu de admin. Nesse menu n??o s??o aceitos caracteres especiais.\n\n")
		para(i = 1; i < totalUsuarios; i++) {
			escreva(i,".",vetoruser[i],"\n")
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
				escreva("** Op????o invalida **\n.")
				util.aguarde(2000)
				limpa()
				editarUsuario()
			}
			senao {
			escreva("Usuario, ",vetoruser[escolherInt]," selecionado:\n1.Editar\n0.Voltar ao menu\nSua escolha: ")
			leia (escolhaMenu)
			}	
			escolha(escolhaMenu) {
				caso '1':
					nomeAtual = vetoruser[escolherInt]
				
					enquanto(loop) {
						userExistente = falso
						escreva("Edi????o de usu??rio\n\nDigite um novo nome de usuario com um minimo de quatro caracteres, espa??os s??o desconsiderados: \n\n>")
						leia(vetoruser[escolherInt])
						vetoruser[escolherInt] = texto.substituir(vetoruser[escolherInt], " ", "")
						quantidadeCaracteres = texto.numero_caracteres(vetoruser[escolherInt])
						
						para(i = 0; i < totalUsuarios; i++) {
							se(vetoruser[escolherInt] == vetoruser[i] e vetoruser[escolherInt] == nomeAtual) {
								escreva("Nome de usu??rio j?? est?? sendo utilizado. Por favor, escolha outro.\n\n")
								util.aguarde(2000)
								userExistente = verdadeiro
								i = totalUsuarios
							}
						}
						se(quantidadeCaracteres >= 4 e userExistente == falso) {
							escreva("Usu??rio definido com sucesso: ",vetoruser[escolherInt],"\n")
							loop = falso
						}
						senao {
							se(userExistente == falso) {
								escreva("O usu??rio necessita de no m??nimo 4 caracteres, tente novamente.\n\n")
								util.aguarde(2000)
							}
						}
					}
				loop = verdadeiro
				enquanto(loop) {
					escreva("Edi????o de senha\nDigite uma nova senha com um minimo de quatro caracteres, espa??os s??o desconsiderados:  \n\n>")
					leia(vetorsenha[escolherInt])
					vetorsenha[escolherInt] = texto.substituir(vetorsenha[escolherInt], " ", "")
					quantidadeCaracteres = texto.numero_caracteres(vetorsenha[escolherInt])
					se(quantidadeCaracteres >= 4) {
						escreva("Senha definida com sucesso: ",vetorsenha[escolherInt],"\n")
						loop = falso
					}
					senao {
						escreva("A senha necessita de no m??nimo 4 caracteres, tente novamente.\n\n")
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
				escreva("*Op????o inv??lida! Selecione um n??mero dentre 0 e 1.*\n\n")
				editarUsuario()
		}
}

	funcao excluirUsuario() {

		cadeia escolher
		inteiro escolherInt
		
		escreva ("Exclus??o de usu??rio\n\nQual usu??rio voc?? deseja excluir?\n\n")
		para(i = 1; i < totalUsuarios; i++) {
			escreva(i,".",vetoruser[i],"\n")
			}
			
			escreva("Sua escolha: ")
			leia(escolher)
			escolherInt = cadeiaParaInt(escolher)
			limpa()
				
			se(escolherInt >= totalUsuarios ou escolherInt == 0){
				escreva("** N??mero invalido **\n")
				excluirUsuario()
			}
			senao {
				escreva("Usuario, ",vetoruser[escolherInt]," excluido.\n")

				para(i = escolherInt; i < totalUsuarios; i++) {
					vetoruser[i] = vetoruser[i + 1]
					vetorsenha[i] = vetorsenha[i + 1]
				}
				totalUsuarios--
				
			}
			menuAdmin()
	}

	funcao editarProdutos() {
}

	funcao menuLoja() {
		escreva("***************************************\n")
		escreva("*                                     *\n")
		escreva("* $     $  $ $ $  $ $     $  $     $  *\n")
		escreva("* $ $ $ $  $      $  $    $  $     $  *\n")
		escreva("* $  $  $  $ $ $  $   $   $  $     $  *\n")
		escreva("* $     $  $      $    $  $  $     $  *\n")
		escreva("* $     $  $ $ $  $     $ $  $ $ $ $  *\n")
		escreva("***************************************\n")

		escreva("\nBem vindo ", user, "!")/*colocar usu??rio*/
		escreva("\nDigite o n??mero da categoria que gostaria de olhar: \n\n")
		escreva("*********************************\n")        
		escreva("* Categorias:                   *\n")
	   	escreva("* 1. Pel??cias                   *\n")
	   	escreva("* 2. Eletr??nicos                *\n")
	   	escreva("* 3. Bonecos                    *\n")
	   	escreva("* 4. Ver carrinho               *\n")
	   	escreva("* 5. Para finalizar programa    *\n")
	   	escreva("* 0. Deslogar e voltar ao inicio*\n")
	     escreva("*********************************\n\n")
	     escreva("Sua escolha: ")
		
		leia(escolhaMenu) 
		produtos()
	}
	
	funcao produtos() {

		escolha(escolhaMenu){	
			caso '1':
				limpa()
				escreva("\n======> Produtos <======\n\n")

				escreva("\nDigite o n??mero do produto que gostaria adicionar ao carrinho:\n\n")
				verProdutos("1- 1- Urso de pel??cia\n" , "Descri????o: 23cm Cor: Branco.", 6, 42.00)//categoria 1 pel??cios

				escreva("   ?????????????????????????????????????????????   \n")
				escreva("   ?????????????????????????????????????????????   \n")
				escreva("    ???????????????????????????????????????    \n")
				escreva("  ?????? ?????????????????????????????????  ?????? \n")
				escreva("???????????? ????????????????????????????????? ????????????\n\n")
						
				verProdutos("2- Cora????o de pel??cia\n", "Descri????o: 30cm Cor: Vermelho.", 10, 50.00)

				escreva("???????????????????????????\n")
	     		escreva("???????????????????????????\n")
				escreva(" ?????????????????????\n")
				escreva("   ?????????\n\n")
						
				verProdutos("3- Smile de pel??cia\n", "Descri????o: 30cm.",4, 30.00)

				escreva("????????????????????????????????????\n")
				escreva("????????????????????????????????????\n")
				escreva("????????????????????????????????????\n")
				escreva("????????????????????????????????????\n")
				escreva("????????????????????????????????????\n")
				escreva("????????????????????????????????????\n")
				escreva("????????????????????????????????????\n\n")
						
				escreva("0- Voltar ao menu anterior\n\n")
				escreva("Sua escolha: ")
				leia(escolhaMenu)
				addProdutosCarrinho()
			pare
				
			caso '2':
				limpa()
				escreva("======> Produtos <======\n\n")
				escreva("\nDigite o n??mero do produto que gostaria adicionar ao carrinho:\n\n")	
				
				verProdutos("1- Caminh??o de controle remoto\n", "Descri????o: Caminh??o mede aproximadamente 30cm, acompanha controle remoto e pilhas.", 3, 340.00)	
				escreva("      ????????????????????????????????????????????????\n")
				escreva("   ?????????????????????????????????????????????????????????\n")
				escreva("??????????????????????????????????????????????????????????????????\n")
				escreva("??????????????????????????????????????????????????????????????????\n")
				escreva("?????????????????????????????????????????????????????????\n\n")
						
				verProdutos("2- Jogo eletr??nico Port??til Pac-Man\n", "Descri????o: Muita nostalgia e divers??o estilo anos 80 com este joguinho eletr??nico estilo vintage.", 5, 189.00)	
				escreva("??????????????????????????????????????????????????????????????????\n")
				escreva("??????????????????????????????????????????????????????????????????\n")
				escreva("??????????????????????????????????????????????????????????????????\n")
				escreva("??????????????????????????????????????????????????????????????????\n")
				escreva("??????????????????????????????????????????????????????????????????\n\n")
						
				verProdutos("3- Mini drone.\n", "Descri????o: Adota tecnologia avan??ada do sensor infravermelho de LED para torn??-lo sens??vel ao movimento, para que ele detecte objetos pr??ximos.", 7, 99.00)	
				escreva("          ???\n")
				escreva("        ???????????????\n")
				escreva("    ???????????????????????????????????????\n")
				escreva("???????????????????????????????????????????????????????????????\n")
				escreva("  ?????????  ?????????????????????  ?????????\n\n")
						
				escreva("0- Voltar ao menu anterior\n\n")
				escreva("Sua escolha: ")
				leia(escolhaMenu)
				addProdutosCarrinho()						
			pare
				
			caso '3':
				limpa()
				escreva("======> Produtos <======\n\n")

				escreva("\nDigite o n??mero do produto que gostaria adicionar ao carrinho:\n\n")
						
				verProdutos("1- Boneco Co??adinha.\n", "Descri????o: Boneco de silicone, medindo 20cm", 2, 119.00)

				escreva(" ????????????????????????     \n")
				escreva(" ??????????????????????????????   \n")
				escreva(" ??????????????????????????????   \n")
				escreva(" ??????????????????????????????   \n")
				escreva("   ?????????????????????????????? \n")
				escreva("   ?????????????????????????????? \n")
				escreva("   ???????????????????????????  \n\n")
						
				verProdutos("2- Boneco Bob Esponja.\n", "Descri????o: Com 14 cm de altura e articula????es nos bra??os e pernas", 6, 69.99)
				escreva("  ----------\n")
				escreva("  ???????????????????????????????????????\n")
				escreva("?????????????????????????????????????????????\n")
				escreva("?????????????????????????????? ??? ??????\n")
				escreva("?????????????????????????????????????????????\n")
				escreva("?????????????????????????????????????????????\n")
				escreva("?????????????????????????????????????????????\n\n")
						
				verProdutos("3- Boneco gigante Charmander.\n", "Descri????o: Medida aproximadamente 45cm.", 4, 249.00)
				escreva(" ???????????? \n")
				escreva("??????????????????\n")
				escreva("??????????????????\n")
				escreva(" ????????????????????????\n")
				escreva("????????????????????????\n\n")
						
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
				escreva("*Est?? n??o ?? uma op????o. Escolha uma das apresentadas*\n")
				escreva("****************************************************\n\n")
				menuLoja()
				pare
			}
	}
	
	funcao verProdutos(cadeia nome, cadeia descricao, inteiro qtde, real preco) {
		
		escreva(nome, descricao,"\n")
		escreva("Quantidade: ", qtde,"\n")
		escreva("Valor: R$ ", preco,"\n\n")
	}
	
	funcao addProdutosCarrinho() {
		
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
							escreva("*O carrinho j?? est?? cheio.*\n")
							escreva("***************************\n\n")
							menuLoja()
						}
						senao {
							limpa()
							carrinho[totalComprado] = "Urso de pel??cia"
							totalComprado++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menuLoja()
						}
					pare
					
					caso '2':
						se(totalComprado == 3){
							limpa()
							escreva("***************************\n")
							escreva("*O carrinho j?? est?? cheio1.*\n")
							escreva("***************************\n\n")
							menuLoja()
						}
						senao {
							limpa()
							carrinho[totalComprado] = "Cora????o de pel??cia"
							totalComprado++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menuLoja()
						}
					pare
					
					caso '3':
						se(totalComprado == 3) {
							limpa()
							escreva("***************************\n")
							escreva("*O carrinho j?? est?? cheio.*\n")
							escreva("***************************\n\n")
							menuLoja()
						}
						senao {
							limpa()
							carrinho[totalComprado] = "Smile de pel??cia"
							totalComprado++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							menuLoja()
						}
					pare
					
					caso '0':
						escolhaMenu = '1'
						produtos()
					pare
					
					caso contrario:
						limpa()
						escreva("****************************************************\n")
						escreva("*Est?? n??o ?? uma op????o. Escolha uma das apresentadas*\n")
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
								escreva("*O carrinho j?? est?? cheio.*\n")
								escreva("***************************\n\n")
								menuLoja()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Caminh??o de controle remoto"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menuLoja()
							}
						pare
						
						caso '2':
							se(totalComprado == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho j?? est?? cheio.*\n")
								escreva("***************************\n\n")
								menuLoja()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Jogo eletr??nico Port??til Pac-Man"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menuLoja()
							}
						pare
						
						caso '3':
							se(totalComprado == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho j?? est?? cheio.*\n")
								escreva("***************************\n\n")
								menuLoja()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Mini drone"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menuLoja()
							}
						pare
						
						caso '0':
							escolhaMenu = '2'
							produtos()
						pare
						
						caso contrario:
							limpa()
							escreva("****************************************************\n")
							escreva("*Est?? n??o ?? uma op????o. Escolha uma das apresentadas*\n")
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
								escreva("*O carrinho j?? est?? cheio.*\n")
								escreva("***************************\n\n")
								menuLoja()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Boneco Co??adinha"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menuLoja()
							}
						pare
						
						caso '2':
							se(totalComprado == 3) {
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho j?? est?? cheio.*\n")
								escreva("***************************\n\n")
								menuLoja()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Boneco Bob Esponja"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menuLoja()
							}
						pare
						
						caso '3':
							se(totalComprado == 3) {
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho j?? est?? cheio.*\n")
								escreva("***************************\n\n")
								menuLoja()
							}
							senao {
								limpa()
								carrinho[totalComprado] = "Boneco gigante Charmander"
								totalComprado++
								escreva("\nProduto adicionado com sucesso no carrinho!\n")
								menuLoja()
							}
						pare
						
						caso '0':
							escolhaMenu = '3'
							produtos()
						pare
						
						caso contrario:
							limpa()
							escreva("****************************************************\n")
							escreva("*Est?? n??o ?? uma op????o. Escolha uma das apresentadas*\n")
							escreva("****************************************************\n\n")
							escolhaMenu = '3'
							produtos()
						pare
					}
			pare
			
			caso '0':
				limpa()
				menuLoja()
			pare
			
			caso contrario:
				limpa()
				escreva("****************************************************\n")
				escreva("*Est?? n??o ?? uma op????o. Escolha uma das apresentadas*\n")
				escreva("****************************************************\n\n")
				menuLoja()
			pare
		}
	}
	
	funcao categorias() {
		escreva("*******************************\n")        
		escreva("* Categorias:                 *\n* 1- Pel??cias.                *\n* 2- Eletr??nicos.             *\n* 3- Bonecos .                *\n* 0- Retornar o menu anterior *\n")
	     escreva("*******************************\n")
	     escreva("Sua escolha: ")
	}
	
	funcao dentroCarrinho() {
		
		se(totalComprado == 0){
			limpa()
			escreva("************************\n")
			escreva("*O carrinho est?? vazio!*\n")
			escreva("************************\n")
			menuLoja()
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
				escreva("*Compra n??o realizada!*\n")
				escreva("***********************\n")
				menuLoja()
			}
			senao {
				limpa()
				escreva("****************************************************\n")
				escreva("*Est?? n??o ?? uma op????o. Escolha uma das apresentadas*\n")
				escreva("****************************************************\n\n")
				dentroCarrinho()
			}
		}
	}

	funcao fim() { 	
		limpa()
		escreva("\nAt?? logo! Estamos no aguardo para v??-lo novamente.\n")
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se????o do arquivo guarda informa????es do Portugol Studio.
 * Voc?? pode apag??-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 26431; 
 * @DOBRAMENTO-CODIGO = [11, 48, 83, 179, 234, 245, 295, 375, 467, 499, 502, 529, 662, 669, 904, 911, 959];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetoruser, 8, 8, 9}-{vetorsenha, 8, 24, 10}-{escolhaMenu, 10, 10, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */