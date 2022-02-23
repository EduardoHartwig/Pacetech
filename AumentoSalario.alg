algoritmo "AumentoSalario"



var

SalarioAtual, Aumento, NovoSalario : real
Porcentagem : inteiro


inicio

porcentagem <- (30)

escreval("Informe seu salário: ")
leia(SalarioAtual)
Aumento <- ((porcentagem/100)*SalarioAtual)
NovoSalario <- (SalarioAtual + Aumento)

escreval("Seu novo salário é de R$:", NovoSalario:7:2)
escreval("Seu aumento foi de R$", Aumento:7:2)




fimalgoritmo
