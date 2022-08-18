programa
{
	
	funcao inicio()
	{
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
			escreva("======> Produtos <======\n\n")

			addProdutos("1- Urso de pelúcia\n" , "Descrição:\n23cm\nCor:Branco.", 6, 42.00)//categoria 1 pelúcios
			escreva("   ▄▀▀▀▄▄▄▄▄▄▄▀▀▀▄   \n")
			escreva("   █▒▒░░░░░░░░░▒▒█   \n")
			escreva("    █░░█░░░░░█░░█    \n")
			escreva("  ▄▄ █░░░▀█▀░░░█  ▄▄ \n")
			escreva("█░░█ ▀▄░░░░░░░▄▀ █░░█\n\n\n")
			
			addProdutos("2- Coração de pelúcia\n", "Descrição:\n30cm\nCor:Vermelho.", 10, 50.00)
			escreva("▄███▄███▄\n")
	     	escreva("█████████\n")
			escreva("▒▀█████▀\n")
			escreva("▒░░▀█▀\n\n\n")
			
			addProdutos("3- Smile de pelúcia\n", "Descrição:\n30cm.",4, 30.00)
			escreva("▒▒▒▒▒▒▒▒▒▒▒▒\n")
			escreva("▒▒▒▒▓▒▒▓▒▒▒▒\n")
			escreva("▒▒▒▒▓▒▒▓▒▒▒▒\n")
			escreva("▒▒▒▒▒▒▒▒▒▒▒▒\n")
			escreva("▒▓▒▒▒▒▒▒▒▒▓▒\n")
			escreva("▒▒▓▓▓▓▓▓▓▓▒▒\n")
			escreva("▒▒▒▒▒▒▒▒▒▒▒▒\n\n\n")
			
			addProdutos("1- Caminhão de controle remoto\n", "Descrição:\nCaminhão mede aproximadamente 30cm, acompanha controle remoto e pilhas.", 3, 340.00)
			escreva("      ▄▌▐▀▀▀▀▀▀▀▀▀▀▀▀▌\n")
			escreva("   ▄▄██▌█░░░░░░░░░░░░▐\n")
			escreva("▄▄▄▌▐██▌█░░░░░░░░░░░░▐\n")
			escreva("███████▌█▄▄▄▄▄▄▄▄▄▄▄▄▌\n")
			escreva("▀❍▀▀▀▀▀▀▀❍❍▀▀▀▀▀▀❍❍\n\n\n")

			addProdutos("2- Jogo eletrônico Portátil Pac-Man\n", "Descrição:\nMuita nostalgia e diversão estilo anos 80 com este joguinho eletrônico estilo vintage.", 5, 189.00)
			escreva("──▒▒▒▒▒────▄████▄─────\n")
			escreva("─▒─▄▒─▄▒──███▄█▀──────\n")
			escreva("─▒▒▒▒▒▒▒─▐████──█──█──\n")
			escreva("─▒▒▒▒▒▒▒──█████▄──────\n")
			escreva("─▒─▒─▒─▒───▀████▀─────\n\n\n")

			addProdutos("3- Mini drone.\n", "Descrição:\nAdota tecnologia avançada do sensor infravermelho de LED para torná-lo sensível ao movimento, para que ele detecte objetos próximos.", 7, 99.00)
			escreva("░░░░░░░░░░█\n")
			escreva("░░░░░░░░▄▄█▄▄\n")
			escreva("░░░░▀▀▀██▀▀▀██▀▀▀\n")
			escreva("▄▄▄▄▄▄▄███████▄▄▄▄▄▄▄\n")
			escreva("░░█▄█░░▀██▄██▀░░█▄█\n\n\n")
			
			addProdutos("1- Boneco Coçadinha.\n", "Descrição:\nBoneco de silicone, medindo 20cm", 2, 119.00)
			escreva("┈╭━━╮╭━━╮┈┈┈┈┈\n")
			escreva("┈┃╭╮┗┻━━┻━╮┈┈┈\n")
			escreva("┈┃╰┓╭━╮╭━╮┃┈┈┈\n")
			escreva("┈╰━┓┃▇┃┃▇┃┃┈┈┈\n")
			escreva("┈┈┈┃╱▔▔▔▔▔▔▔▇┈\n")
			escreva("┈┈┈┃▏┏┳┳┳┳┳━┛┈\n")
			escreva("┈┈┈┃╲╰┻┻┻┻┻┓┈┈\n\n\n")
			
			addProdutos("2- Boneco Bob Esponja.\n", "Descrição:\n com 14 cm de altura e articulações nos braços e pernas", 6, 69.99)
			escreva("  ----------\n")
			escreva("  ╮╭┻┻╮╭┻┻╮╭▕╮╲\n")
			escreva("▕╯┃╭╮┃┃╭╮┃╰▕╯╭▏\n")
			escreva("▕╭┻┻┻┛┗┻┻┛ ▕ ╰▏\n")
			escreva("▕╰━━━┓┈┈┈╭╮▕╭╮▏\n")
			escreva("▕╭╮╰┳┳┳┳╯╰╯▕╰╯▏\n")
			escreva("▕╰╯┈┗┛┗┛┈╭╮▕╮┈▏\n\n\n")
			
			addProdutos("3- Boneco gigante Charmander.\n", "Descrição:\nMedida aproximadamente 45cm.", 4, 249.00)
			escreva("░▄▄▄▄░\n")
			escreva("▀▀▄██►\n")
			escreva("▀▀███►\n")
			escreva("░▀███►░█►\n")
			escreva("▒▄████▀▀\n")
			}
		funcao addProdutos(cadeia nome, cadeia descricao, inteiro qtde, real preco)
		{
		escreva(nome, descricao,"\n")
		escreva("Quantidade", qtde,"\n")
		escreva("Valor: R$ ", preco,"\n")
		}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */