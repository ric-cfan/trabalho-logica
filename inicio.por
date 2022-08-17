// O programa simula uma loja de brinquedos, essa parte cria o logo da loja e o menu inicial, o logo tem formato "Sk" estilizado
programa {
	inclua biblioteca Util --> util
	
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
					// Ira chamar funcao login
					escreva("Login") // Lembrar de deletar ao adicionar funcao
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
		inteiro i = 0, j = 0, alturaBloco, larguraBloco, larguraLogo, larguraLetra, tamanhoEspaco = 2, espacamentoEsquerdoLogo = 6, alturaLogo = 10 // As medidas do logo sao calculadas apartir da altura do logo, aceita apenas numeros maiores que 5
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 949; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */