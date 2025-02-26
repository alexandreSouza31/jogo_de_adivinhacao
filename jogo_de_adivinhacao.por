programa {

  inclua biblioteca Util
  inclua biblioteca Matematica
  funcao inicio() {

    cadeia nomePrograma ="jogo de Adivinhação", versaoPrograma="2.0"
    logico ganhou=falso
    caracter nivelDoJogo
    inteiro numeroSecreto=Util.sorteia(1,20),contadorDeErros,contadorTentativas
    real numeroUsuario, pontos=100, formulaPerdaPontos


    escreva("Bem-vindo(a) ao " + nomePrograma  + " " + versaoPrograma + "!", "\n")
    escreva("Escolha o nível do jogo:","\n \n")
    escreva("f - FÁCIL(15 tentativas) \t")
    escreva("m - MÉDIO(10 tentativas) \t")
    escreva("d - DIFÍCIL(5 tentativas) \n")

    leia(nivelDoJogo)

    escolha(nivelDoJogo){
      caso 'f':
        contadorDeErros=15
        contadorTentativas=16
        escreva("Nível FÁCIL."+"\n"+ "Você tem "+contadorDeErros+" tentativas!", "\t")
        pare
      caso 'm':
        contadorDeErros=10
        contadorTentativas=11
        escreva("Nível MÉDIO."+"\n"+ "Você tem "+contadorDeErros+" tentativas!", "\t")
        pare
      caso 'd':
        contadorDeErros=5
        contadorTentativas=6
        escreva("Nível DIFÍCIL."+"\n"+ "Você tem "+contadorDeErros+" tentativas!", "\t")
        pare
      caso contrario:
        escreva("Nível inválido! Digite f,m, ou d:", "\n")
        retorne
    }

    escreva("PONTUAÇÃO ATUAL: "+pontos+"\n \n")
    
    enquanto(ganhou==falso){
        escreva("Digite um número de 1 a 20: ")
        //escreva("----------------------Número secreto:"+numeroSecreto+"---------------------") //gabarito
        leia(numeroUsuario)
      
        real descontoEntreUsuarioENumeroSecreto=(numeroUsuario-numeroSecreto)
        
        descontoEntreUsuarioENumeroSecreto=Matematica.valor_absoluto(descontoEntreUsuarioENumeroSecreto)
        
        formulaPerdaPontos=pontos-(descontoEntreUsuarioENumeroSecreto/2)
        pontos=formulaPerdaPontos

        se(numeroUsuario == numeroSecreto){
          escreva(numeroSecreto+"\n Parabéns, você acertou com "+(Matematica.valor_absoluto(contadorDeErros-contadorTentativas))+" tentativa(s)!","\n")
          escreva("\t"+"PONTUAÇÃO FINAL: "+pontos+"!")
          ganhou=verdadeiro
          retorne
        
        }senao 
          se(numeroUsuario<1 e numeroUsuario>numeroSecreto ou numeroUsuario<1 e numeroUsuario<numeroSecreto
          ou numeroUsuario>20 e numeroUsuario>numeroSecreto ou numeroUsuario>20 e numeroUsuario<numeroSecreto ){
          escreva("Número inválido! \n Digite um valor entre 1 e 20:")
          
        }senao se(numeroUsuario<numeroSecreto){
          escreva("Você errou! O número secreto é MAIOR que "+numeroUsuario+"!", "\n")
          escreva("PONTUAÇÃO ATUAL: "+pontos+"\n \n")
        }senao se(numeroUsuario>numeroSecreto){
        	
          escreva("Você errou! O número secreto é MENOR "+numeroUsuario+"!", "\n")
          escreva("PONTUAÇÃO ATUAL: "+pontos+"\n \n")
        }

        se(contadorDeErros>1 e contadorDeErros>=1 e contadorTentativas>=1 ou pontos==0){
        contadorDeErros--
        escreva("Você tem "+contadorDeErros+" tentativas!")
        }senao{
          escreva("Fim de jogo. Você não possui mais tentativas!")
          escreva("\t"+"PONTUAÇÃO FINAL: "+pontos+"!")
          retorne
        }
     }
  }
}
