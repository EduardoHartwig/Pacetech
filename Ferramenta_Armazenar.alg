Algoritmo "semnome"
//
//
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/03/2022
Var

//V�riaveis Utilit�rias
celsius, fahrenheit : real

//V�riaveis la�o de repeti��o
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


//Apresenta��o
escreval("�===================== Ferramenta Pacetech ====================�")
escreval("�                                                              �")
escreval("�                          Ol� Usu�rio!                        �")
escreval("�                                                              �")
Escreval("�        Bem vindo a Ferramenta de Convers�o da Pacetech.      �")
escreval("�                                                              �")
escreval("�==============================================================�")


opcaoa <- -1
opcaob <- -1

enquanto opcaoa <> 010101 faca

   escreval
   escreval("�==============================================================�")
   escreval("�                 Qual Opera��o Deseja Realizar?               �")
   escreval("�                                                              �")
   escreval("�1 - Convers�o Imediata de Temperatura?                        �")
   escreval("�2 - Armazenar Temperatura e Hor�rio?                          �")
   escreval("�3 - Exibir Dados Armazenados?                                 �")
   escreval("�                                                              �")
   escreval("�0 - Finalizar opera��es!                                      �")
   escreval("�                                                              �")
   escreval("�==============================================================�")
   escreva("�>")
   leia(opcaoa)

   escolha(opcaoa)

   caso 0
      limpatela
      escreval("�==============================================================�")
      escreval("�           Obrigado por utilizar de nossos servi�os!          �")
      escreval("�==============================================================�")

      opcaoa <- 010101

   caso 1
      limpatela
      escreval("�==============================================================�")
      escreval("�Qual medida de temperatura deseja realizar a convers�o?       �")
      escreval("�                                                              �")
      escreval("�1 - Fahrenheit para Celsius.                                  �")
      escreval("�2 - Celsius para fahrenheit.                                  �")
      escreval("�                                                              �")
      escreval("�==============================================================�")
      escreva("�>")
      leia(opcaob)

      //fahrenheit para celsius
      escolha (opcaob)
      caso 1
         limpatela
         escreval("�==============================================================�")
         escreval("�               Qual a temperatura em Fahrenheit               �")
         escreval("�==============================================================�")
         escreva("�>")
         leia(Fahrenheit)

         celsius <- ((fahrenheit - 32)*(5/9))

         escreval("�==============================================================�")
         escreval("�A temperatura de ", fahrenheit:4:1,"�F em Celsius � de ", celsius:4:1,"�C             �")
         escreval("�==============================================================�")
         escreval

         //celsius para fahrenheit
      caso 2
         limpatela
         escreval("�==============================================================�")
         escreval("�                Qual a temperatura em Celsius?                �")
         escreval("�==============================================================�")
         escreva("�>")
         leia(celsius)

         fahrenheit <- ((celsius*1.8)+32)

         escreval("�==============================================================�")
         escreval("�A temperatura de ", celsius:4:1,"�C em fahrenheit � de ", fahrenheit:4:1,"�F             �")
         escreval("�==============================================================�")
         escreval

      outrocaso
         escreval("�==============================================================�")
         escreval("�                        OPC�O INV�LIDA                        �")
         escreval("�==============================================================�")

      fimescolha

   caso 2
      limpatela
      escreval("�==============================================================�")
      escreval("�                  Quantos dados ir� registrar?                �")
      escreval("�==============================================================�")
      escreva("�>")
      leia(N)
      escreva
      escreval

      se(N > 10)entao
         escreval("�==============================================================�")
         escreval("�       Quantidade n�o Permitida. Limite de 10 registros.      �")
         escreval("�==============================================================�")
      senao
         para i de 0 ate N-1 faca

            escreval("�==============================================================�")
            escreval("�           Qual o Hor�rio a Temperatura foi medida?           �")
            escreval("�==============================================================�")
            escreva("�>")
            leia(vetorhorario[i])
            escreva
            escreval("�==============================================================�")
            escreval("�               Quantos graus foram registrados?               �")
            escreval("�==============================================================�")
            escreva("�>")
            leia(vetorcelsius[i])
            escreva
         fimpara
      fimse

   caso 3
      limpatela

      se (vetorcelsius[0] = 0) e (vetorhorario[0] = 0) entao
         escreval("�==============================================================�")
         escreval("�            N�o possuem dados para serem informados!          �")
         escreval("�==============================================================�")
         escreval

      senao
         para i de 0 ate N-1 faca
            ordenar(vetorcelsius[i], vetorhorario[i])
         fimpara

         escreval
         para i de 0 ate N-1 faca
            fahrenheit <- ((vetorcelsius[i]*1.8)+32)
            escreval("�================================================================�")
            escreval("�Temperatura de ",vetorcelsius[i]:4:1,"�C, registrada �s ",vetorhorario[i]:4:1,"h corresponde a ",fahrenheit:4:1,"�F.�")
            escreval("�================================================================�")
         fimpara
      fimse


   outrocaso
      escreval("�==============================================================�")
      escreval("�                        OPC�O INV�LIDA                        �")
      escreval("�==============================================================�")

   fimescolha
fimenquanto



Fimalgoritmo