Algoritmo "FerramentadeConversaoPacetech"
//
//
// Descri��o   : Algoritmo desenvolvido para atender pedido feito a Pacetech, contendo interface para usu�rio escolher entre convers�es monet�rias e de temperaturas.
// Autor(a)    : Eduardo Hartwig Vieira
// Data atual  : 25/02/2022
Var

//variaveis utilit�rias
cotacao, reais, dolar, celsius, fahrenheit : real

//constantes
opcao, opcaob : inteiro


Inicio

//Apresenta��o
//entrada na vari�vel cotacao
Escreval("Ol� Usu�rio!")
escreval
Escreval("Bem vindo a Ferramenta de Convers�o da Pacetech.")
escreval("Antes de come�armos a usufruir de suas fun��es.")
escreval("Poderia nos informar a cota��o do D�lar de hoje?")
escreval
escreval("A cota��o de U$ 1 d�lar � de: ")
leia(cotacao)

limpatela

//contantes armazenando valor
opcao <- -1
opcaob <- -1

//inicio loop
//escolha qual tipo de convers�o
enquanto (opcao <> 0) faca
   escreval("Qual tipo de convers�o deseja realizar no momento ?")
   escreval("1-Monet�ria")
   escreval("2-Temperatura")
   escreval("0-Cancelar")
   leia(opcao)


   //escolha qual moeda
   escolha (opcao)
   caso 1
      limpatela
      escreval("Qual convers�o monet�ria iremos realizar?")
      escreval("1-D�lar para Real")
      escreval("2-Real para D�lar")
      leia(opcaob)

      //dolares para reais
      escolha (opcaob)
      caso 1
         limpatela
         escreval("Quantos D�lares deseja converter para real?")
         leia(dolar)
         reais <- (dolar*cotacao)
         escreval("U$", dolar:5:2, " D�lares tem o valor de R$", reais:5:2, " reais.")
         escreval
         //reais para dolares
      caso 2
         limpatela
         escreval("Quantos reais deseja converter para d�lares?")
         leia(reais)
         dolar <- (reais/cotacao)
         escreval("R$", reais:5:2, " reais tem o valor de U$", dolar:5:2, " D�lares.")
         escreval

      fimescolha

      //escolha qual medida de temperatura
   caso 2
      limpatela
      escreval("Qual medida de temperatura deseja realizar a convers�o?")
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
         escreval("A temperatura de ", fahrenheit:4:1,"�F em Celsius � de ", celsius:4:1,"�C")
         escreval

         //celsius para fahrenheit
      caso 2
         limpatela
         escreval("Qual a temperatura em Celsius?")
         leia(celsius)
         fahrenheit <- ((celsius*1.8)+32)
         escreval("A temperatura de ", celsius:4:1,"�C em fahrenheit � de ", fahrenheit:4:1,"�F")
         escreval

      fimescolha
   fimescolha
fimenquanto

Fimalgoritmo
