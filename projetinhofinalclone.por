programa
{
	caracter escolhaMenu
	inteiro i = 0
	cadeia carrinho [3]
	
	funcao inicio()
	{
		escreva("***************************************\n")
		escreva("*                                     *\n")
		escreva("* $     $  $ $ $  $ $     $  $     $  *\n")
		escreva("* $ $ $ $  $      $  $    $  $     $  *\n")
		escreva("* $  $  $  $ $ $  $   $   $  $     $  *\n")
		escreva("* $     $  $      $    $  $  $     $  *\n")
		escreva("* $     $  $ $ $  $     $ $  $ $ $ $  *\n")
		escreva("***************************************\n")

		escreva("\nBem vindo ")/*colocar usuário*/
		escreva("\nDigite o número da categoria que gostaria de olhar: \n\n")
		escreva("*******************************\n")        
		escreva("* Categorias:                 *\n* 1- Pelúcias.                *\n* 2- Eletrônicos.             *\n* 3- Bonecos .                *\n* 4- Ver carrinho             *\n* 0- Sair(Retornar para login)*\n")
	     escreva("*******************************\n")
	     escreva("Sua escolha: ")
		
		leia(escolhaMenu) 
		produtos()
		
		//escreva("\nDigite o número da categoria que gostaria de olhar:\n 1- para Pelúcias.\n 2- para eletrônicos.\n 3- para Bonecos.")
		//aqui entra categorias
		//categoria 1 Pelúcias
		//Produtos 1-Flor 2-Coração 3-Emoji smile
		//Categoria 2 Eletrônicos
		//Produtos 1-Console Nintendo 2-Jogo portátil 3-Mini drone
		//Categoria 3 Bonecos
		//Produtos 1- boneca Minnie 2- boneco Naruto 3- Boneco gigante Hulk
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
					caso '0':
						limpa()
						//retornar ao login
					pare
					caso contrario:
						limpa()
						escreva("****************************************************\n")
						escreva("*Está não é uma opção. Escolha uma das apresentadas*\n")
						escreva("****************************************************\n\n")
						inicio()
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
								inicio()
							}senao{
								limpa()
							carrinho[i] = "Urso de pelúcia"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
							}
						pare
						caso '2':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio1.*\n")
								escreva("***************************\n\n")
								inicio()
							}senao{
								limpa()
							carrinho[i] = "Coração de pelúcia"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
							}
						pare
						caso '3':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								inicio()
							}senao{
								limpa()
							carrinho[i] = "Smile de pelúcia"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
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
								inicio()
							}senao{
								limpa()
							carrinho[i] = "Caminhão de controle remoto"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
							}
						pare
						caso '2':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								inicio()
							}senao{
								limpa()
							carrinho[i] = "Jogo eletrônico Portátil Pac-Man"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
							}
						pare
						caso '3':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								inicio()
							}senao{
								limpa()
							carrinho[i] = "Mini drone"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
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
								inicio()
							}senao{
								limpa()
							carrinho[i] = "Boneco Coçadinha"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
							}
						pare
						caso '2':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								inicio()
							}senao {
								limpa()
							carrinho[i] = "Boneco Bob Esponja"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
							}
						pare
						caso '3':
							se(i == 3){
								limpa()
								escreva("***************************\n")
								escreva("*O carrinho já está cheio.*\n")
								escreva("***************************\n\n")
								inicio()
							}senao{
								limpa()
							carrinho[i] = "Boneco gigante Charmander"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
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
				inicio()
			pare
			caso contrario:
				limpa()
				escreva("****************************************************\n")
				escreva("*Está não é uma opção. Escolha uma das apresentadas*\n")
				escreva("****************************************************\n\n")
				inicio()
				
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
			inicio()
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
 * @POSICAO-CURSOR = 2083; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {carrinho, 5, 8, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */