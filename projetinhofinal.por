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

						verProdutos("1- Flor de pelúcia\n" , "Descrição: 23cm Cor:Amarelo.", 6, 42.00)//categoria 1 pelúcios
						verProdutos("2- Coração de pelúcia\n", "Descrição: 30cm Cor:Vermelho.", 10, 50.00)
						verProdutos("3- Smile de pelúcia\n", "Descrição: 30cm.",4, 30.00)
						escreva("0- Voltar ao menu anterior\n\n")
						escreva("Sua escolha: ")
						leia(escolhaMenu)
						addProdutosCarrinho()
					pare
					caso '2':
						limpa()
						escreva("======> Produtos <======\n\n")

						escreva("\nDigite o número do produto que gostaria adicionar ao carrinho:\n\n")
				
						verProdutos("1- Console Nintendo Switch\n", "Descrição: Controle sem fio com formato clássico.", 3, 340.00)
						verProdutos("2- Jogo eletrônico Portátil Jurassic Park\n", "Descrição: Muita nostalgia e diversão estilo anos 90 com este joguinho eletrônico estilo vintage.", 5, 189.00)
						verProdutos("3- Mini drone.\n", "Descrição: Adota tecnologia avançada do sensor infravermelho de LED para torná-lo sensível ao movimento, para que ele detecte objetos próximos.", 7, 99.00)
						escreva("0- Voltar ao menu anterior\n\n")
						escreva("Sua escolha: ")
						leia(escolhaMenu)
						addProdutosCarrinho()						
					pare
					caso '3':
						limpa()
						escreva("======> Produtos <======\n\n")

						escreva("\nDigite o número do produto que gostaria adicionar ao carrinho:\n\n")
						
						verProdutos("1- Boneca Minnie.\n", "Descrição:\nBoneca de silicone, medindo 20cm", 2, 119.00)
						verProdutos("2- Boneco Naruto.\n", "Descrição:\n com 14 cm de altura e articulações nos braços", 6, 69.99)
						verProdutos("3- Boneco gigante Hulk.\n", "Descrição:\nMedida aproximadamente 45cm.", 4, 249.00)
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
							carrinho[i] = "Flor de pelúcia"
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
						pare
						caso contrario:
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
							carrinho[i] = "Console Nintendo Switch"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
							}
						pare
						caso '2':
							se(i == 3){
								limpa()
								escreva("O carrinho já está cheio.")
								inicio()
							}senao{
								limpa()
							carrinho[i] = "Jogo eletrônico Portátil Jurassic Park"
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
							carrinho[i] = "Mini drone."
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
							}
						pare
						caso '0':
						pare
						caso contrario:
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
							carrinho[i] = "Boneca Minnie."
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
							carrinho[i] = "Boneco Naruto"
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
							carrinho[i] = "Boneco gigante Hulk"
							i++
							escreva("\nProduto adicionado com sucesso no carrinho!\n")
							inicio()
							}
						pare
						caso '0':
							produtos()
						pare
						caso contrario:
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
				produtos()
				
			pare
		}
	}
	funcao categorias(){
		escreva("*******************************\n")        
		escreva("* Categorias:                 *\n* 1- Pelúcias.                *\n* 2- Eletrônicos.             *\n* 3- Bonecos .                *\n* 0- Sair(Retornar para login)*\n")
	     escreva("*******************************\n")
	     escreva("Sua escolha: ")
	}
	funcao dentroCarrinho(){
		limpa()
		escreva("\n")
		escreva(carrinho [0])
		escreva("\n")
		escreva(carrinho [1])
		escreva("\n")
		escreva(carrinho [2])
		escreva("\n\n")
		inicio()
	}
	
	

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 531; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {carrinho, 5, 8, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */