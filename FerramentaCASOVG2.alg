Algoritmo "FerramentadeConversaoPacetech"
//
//
// Descrição   : Algoritmo desenvolvido para atender pedido feito a Pacetech, contendo interface para usuário escolher entre conversões monetárias e de temperaturas.
// Autor(a)    : Eduardo Hartwig Vieira
// Data atual  : 25/02/2022
Var

//variaveis utilitárias
cotacao, reais, dolar, celsius, fahrenheit : real

//constantes
opcao, opcaob : inteiro


Inicio

//Apresentação
//entrada na variável cotacao
Escreval("Olá Usuário!")
escreval
Escreval("Bem vindo a Ferramenta de Conversão da Pacetech.")
escreval("Antes de começarmos a usufruir de suas funções.")
escreval("Poderia nos informar a cotação do Dólar de hoje?")
escreval
escreval("A cotação de U$ 1 dólar é de: ")
leia(cotacao)

limpatela

//contantes armazenando valor
opcao <- -1
opcaob <- -1

//inicio loop
//escolha qual tipo de conversão
enquanto (opcao <> 0) faca
   escreval("Qual tipo de conversão deseja realizar no momento ?")
   escreval("1-Monetária")
   escreval("2-Temperatura")
   escreval("0-Cancelar")
   leia(opcao)


   //escolha qual moeda
   escolha (opcao)
   caso 1
      limpatela
      escreval("Qual conversão monetária iremos realizar?")
      escreval("1-Dólar para Real")
      escreval("2-Real para Dólar")
      leia(opcaob)

      //dolares para reais
      escolha (opcaob)
      caso 1
         limpatela
         escreval("Quantos Dólares deseja converter para real?")
         leia(dolar)
         reais <- (dolar*cotacao)
         escreval("U$", dolar:5:2, " Dólares tem o valor de R$", reais:5:2, " reais.")
         escreval
         //reais para dolares
      caso 2
         limpatela
         escreval("Quantos reais deseja converter para dólares?")
         leia(reais)
         dolar <- (reais/cotacao)
         escreval("R$", reais:5:2, " reais tem o valor de U$", dolar:5:2, " Dólares.")
         escreval

      fimescolha

      //escolha qual medida de temperatura
   caso 2
      limpatela
      escreval("Qual medida de temperatura deseja realizar a conversão?")
      escreval("1-Fahrenheit para Celsius")
      escreval("2-Celsius para fahrenheit")
      leia(opcaob)

      //fahrenheit para celsius
      escolha (opcaob)
      caso 1
         limpatela
         Escreval("Qual a temperatura em Fahrenheit?")
         leia(Fahrenheit)
         celsius <- ((fahrenheit - 32)*(5/9))
         escreval("A temperatura de ", fahrenheit:4:1,"ºF em Celsius é de ", celsius:4:1,"ºC")
         escreval

         //celsius para fahrenheit
      caso 2
         limpatela
         escreval("Qual a temperatura em Celsius?")
         leia(celsius)
         fahrenheit <- ((celsius*1.8)+32)
         escreval("A temperatura de ", celsius:4:1,"ºC em fahrenheit é de ", fahrenheit:4:1,"ºF")
         escreval

      fimescolha
   fimescolha
fimenquanto

Fimalgoritmo
