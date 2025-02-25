programa {

  inclua biblioteca Util
  funcao inicio() {

    cadeia nomePrograma ="jogo de Adivinhação", versaoPrograma="1.0"
    logico ganhou=falso
    caracter nivelDoJogo
    inteiro numeroSecreto=Util.sorteia(1,20),numeroUsuario,contadorDeErros,contadorTentativas


    escreva("Bem-vindo(a) ao " + nomePrograma  + " " + versaoPrograma + "!", "\n")
    escreva("Escolha o nível do jogo:","\n \n")
    escreva("f - FÁCIL(15 tentativas) \t")
    escreva("m - MÉDIO(10 tentativas) \t")
    escreva("d - DIFÍCIL(5 tentativas) \n")

    leia(nivelDoJogo)

    
    escolha(nivelDoJogo){
      caso "f":
        contadorDeErros=15
        contadorTentativas=16
        escreva("Nível FÁCIL.\n Você tem "+contadorDeErros+" tentativas!", "\n")
        pare
      caso "m":
        contadorDeErros=10
        contadorTentativas=11
        escreva("Nível MÉDIO.\n Você tem "+contadorDeErros+" tentativas!", "\n")
        pare
      caso "d":
        contadorDeErros=5
        contadorTentativas=6
        escreva("Nível DIFÍCIL.\n Você tem "+contadorDeErros+" tentativas!", "\n")
        pare
      caso contrario:
        escreva("Nível inválido! Digite f,m, ou d:", "\n")
        retorne
    }

    enquanto(ganhou==falso){
        escreva("Digite um número de 1 a 20: ")
        //escreva(numeroSecreto) //gabarito
        leia(numeroUsuario)

        se(numeroUsuario == numeroSecreto){
          escreva("O número secreto é... "+numeroSecreto+"\n Parabéns, você acertou com "+(contadorTentativas-contadorDeErros)+" tentativa(s)!")
          ganhou=verdadeiro
          retorne
        
        }senao 
          se(numeroUsuario<1 e numeroUsuario>numeroSecreto ou numeroUsuario<1 e numeroUsuario<numeroSecreto
          ou numeroUsuario>20 e numeroUsuario>numeroSecreto ou numeroUsuario>20 e numeroUsuario<numeroSecreto ){
          escreva("Número inválido! \n Digite um valor entre 1 e 20:")
        }senao se(numeroUsuario<numeroSecreto){
          escreva("Você errou! O número secreto é MAIOR que "+numeroUsuario+"!", "\n")
        }senao se(numeroUsuario>numeroSecreto){
          escreva("Você errou! O número secreto é MENOR "+numeroUsuario+"!", "\n")
        }

        se(contadorDeErros>1 e contadorDeErros>=1 e contadorTentativas>=1){
        contadorDeErros--
        escreva("Você tem "+contadorDeErros+" tentativas!")
        }senao{
          escreva("Fim de jogo. Você não possui mais tentativas!")
          retorne
        }
      }
  	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 561; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */