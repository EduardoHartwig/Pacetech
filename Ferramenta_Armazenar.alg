Algoritmo "semnome"
//
//
// Descrição   : Algortimo desenvolvido para realizar conversões de temperatura, armazenar dados(Temperatura e Horário), exibir dados armazenados.
// Autor(a)    : Eduardo Hartwig Vieira
// Data atual  : 11/03/2022
Var

//Váriaveis Utilitárias
celsius, fahrenheit : real

//Váriaveis laço de repetição
opcaoa, opcaob, i, j, N : inteiro

//vetores
vetorhorario : vetor[0..9] de real
vetorcelsius : vetor[0..9] de real
vetorfahrenheit : vetor[0..9] de real

//Bubblesort
procedimento ordenar(aux,auxb : real)
inicio
para i de 0 ate N-1 faca
   para j de 0 ate N-1 faca
      se (vetorcelsius[j] > vetorcelsius[i]) entao
         aux <- (vetorcelsius[i])
         vetorcelsius[i] <- (vetorcelsius[j])
         vetorcelsius[j] <- (aux)

         auxb <- vetorhorario[i]
         vetorhorario[i] <- vetorhorario[j]
         vetorhorario[j] <- (auxb)
      fimse
   fimpara
fimpara
fimprocedimento

Inicio


//Apresentação
escreval("¦===================== Ferramenta Pacetech ====================¦")
escreval("¦                                                              ¦")
escreval("¦                          Olá Usuário!                        ¦")
escreval("¦                                                              ¦")
Escreval("¦        Bem vindo a Ferramenta de Conversão da Pacetech.      ¦")
escreval("¦                                                              ¦")
escreval("¦==============================================================¦")


opcaoa <- -1
opcaob <- -1

//Inicio laço de repetição principal
enquanto opcaoa <> 010101 faca

   escreval
   escreval("¦==============================================================¦")
   escreval("¦                 Qual Operação Deseja Realizar?               ¦")
   escreval("¦                                                              ¦")
   escreval("¦1 - Conversão Imediata de Temperatura?                        ¦")
   escreval("¦2 - Armazenar Temperatura e Horário?                          ¦")
   escreval("¦3 - Exibir Dados Armazenados?                                 ¦")
   escreval("¦                                                              ¦")
   escreval("¦0 - Finalizar operações!                                      ¦")
   escreval("¦                                                              ¦")
   escreval("¦==============================================================¦")
   escreva("¦>")
   leia(opcaoa)

   escolha(opcaoa)

      //Saida da operação
   caso 0
      limpatela
      escreval("¦==============================================================¦")
      escreval("¦           Obrigado por utilizar de nossos serviços!          ¦")
      escreval("¦==============================================================¦")

      opcaoa <- 010101

      //escolha do tipo de medida
   caso 1
      limpatela
      escreval("¦==============================================================¦")
      escreval("¦Qual medida de temperatura deseja realizar a conversão?       ¦")
      escreval("¦                                                              ¦")
      escreval("¦1 - Fahrenheit para Celsius.                                  ¦")
      escreval("¦2 - Celsius para fahrenheit.                                  ¦")
      escreval("¦                                                              ¦")
      escreval("¦==============================================================¦")
      escreva("¦>")
      leia(opcaob)

      //fahrenheit para celsius
      escolha (opcaob)
      caso 1
         limpatela
         escreval("¦==============================================================¦")
         escreval("¦               Qual a temperatura em Fahrenheit               ¦")
         escreval("¦==============================================================¦")
         escreva("¦>")
         leia(Fahrenheit)

         celsius <- ((fahrenheit - 32)*(5/9))

         escreval("¦==============================================================¦")
         escreval("¦A temperatura de ", fahrenheit:4:1,"ºF em Celsius é de ", celsius:4:1,"ºC             ¦")
         escreval("¦==============================================================¦")
         escreval

         //celsius para fahrenheit
      caso 2
         limpatela
         escreval("¦==============================================================¦")
         escreval("¦                Qual a temperatura em Celsius?                ¦")
         escreval("¦==============================================================¦")
         escreva("¦>")
         leia(celsius)

         fahrenheit <- ((celsius*1.8)+32)

         escreval("¦==============================================================¦")
         escreval("¦A temperatura de ", celsius:4:1,"ºC em fahrenheit é de ", fahrenheit:4:1,"ºF             ¦")
         escreval("¦==============================================================¦")
         escreval

         //caso usuário digite nenhuma das opções
      outrocaso
         escreval("¦==============================================================¦")
         escreval("¦                        OPCÃO INVÁLIDA                        ¦")
         escreval("¦==============================================================¦")

      fimescolha

      //armazenar dados(Temperatura e Horários), usuário escolhe quantas deseja, limite de 10.
   caso 2
      limpatela
      escreval("¦==============================================================¦")
      escreval("¦                  Quantos dados irá registrar?                ¦")
      escreval("¦==============================================================¦")
      escreva("¦>")
      leia(N)
      escreva
      escreval

      //exceder limite
      se(N > 10)entao
         escreval("¦==============================================================¦")
         escreval("¦       Quantidade não Permitida. Limite de 10 registros.      ¦")
         escreval("¦==============================================================¦")

         //leitura de dados
      senao
         para i de 0 ate N-1 faca

            escreval("¦==============================================================¦")
            escreval("¦           Qual o Horário a Temperatura foi medida?           ¦")
            escreval("¦==============================================================¦")
            escreva("¦>")
            leia(vetorhorario[i])
            escreva
            escreval("¦==============================================================¦")
            escreval("¦               Quantos graus foram registrados?               ¦")
            escreval("¦==============================================================¦")
            escreva("¦>")
            leia(vetorcelsius[i])
            escreva
         fimpara
      fimse

      //exibir dados armazenados se houver, senão houver emitir erro
   caso 3
      limpatela

      //sem  dados armazenados
      se (vetorcelsius[0] = 0) e (vetorhorario[0] = 0) entao
         escreval("¦==============================================================¦")
         escreval("¦            Não possuem dados para serem informados!          ¦")
         escreval("¦==============================================================¦")
         escreval

         //ordena utilizando bubblesort
      senao
         para i de 0 ate N-1 faca
            ordenar(vetorcelsius[i], vetorhorario[i])
         fimpara

         //exibe na tela os dados armazenados, ordenados em ordem crescente da temperatura, e realiza conversão para fahrenheit
         escreval
         para i de 0 ate N-1 faca
            fahrenheit <- ((vetorcelsius[i]*1.8)+32)
            escreval("¦================================================================¦")
            escreval("¦Temperatura de ",vetorcelsius[i]:4:1,"ºC, registrada às ",vetorhorario[i]:4:1,"h corresponde a ",fahrenheit:4:1,"ºF.¦")
            escreval("¦================================================================¦")
         fimpara
      fimse

      //caso usuário digite nenhuma das opções
   outrocaso
      escreval("¦==============================================================¦")
      escreval("¦                        OPCÃO INVÁLIDA                        ¦")
      escreval("¦==============================================================¦")

   fimescolha
fimenquanto



Fimalgoritmo
