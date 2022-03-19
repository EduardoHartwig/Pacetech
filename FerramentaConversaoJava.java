package ferramentaconversaojava;

import java.util.Scanner;

public class FerramentaConversaoJava {

    public static void main(String[] args) {
        int opcaoa = -1;
        int opcaob = -1;

        float cotacao, dolar, real = 0;
        double celsius, fahrenheit = 0;

        System.out.println("¦===================== Ferramenta Pacetech ====================¦");
        System.out.println("¦                                                              ¦");
        System.out.println("¦                          Olá Usuário!                        ¦");
        System.out.println("¦                                                              ¦");
        System.out.println("¦        Bem vindo a Ferramenta de Conversão da Pacetech.      ¦");
        System.out.println("¦                                                              ¦");
        System.out.println("¦==============================================================¦");
        System.out.println("");
        System.out.println("¦==============================================================¦");
        System.out.println("¦                                                              ¦");
        System.out.println("¦Antes de começarmos a usufruir de suas funções.               ¦");
        System.out.println("¦Poderia nos informar a cotação do Dólar de hoje?              ¦");
        System.out.println("¦                                                              ¦");
        System.out.println("¦A cotação de U$ 1 dólar é de:                                 ¦");
        System.out.println("¦==============================================================¦");
        System.out.print("¦> ");
        Scanner LeitorCot = new Scanner(System.in);
        cotacao = LeitorCot.nextFloat();
        System.out.format("%.2f", cotacao);

        do {
            System.out.println("");
            System.out.println("¦==============================================================¦");
            System.out.println("¦      Qual tipo de conversão deseja realizar no momento ?     ¦");
            System.out.println("¦                                                              ¦");
            System.out.println("¦1 - Monetária                                                 ¦");
            System.out.println("¦2 - Temperatura                                               ¦");
            System.out.println("¦                                                              ¦");
            System.out.println("¦0 - Finalizar operações!                                      ¦");
            System.out.println("¦                                                              ¦");
            System.out.println("¦==============================================================¦");
            System.out.print("¦>");
            Scanner LeitorOpcaoA = new Scanner(System.in);
            opcaoa = LeitorOpcaoA.nextInt();

            switch (opcaoa) {

                case 0:

                    opcaoa = 010101;
                    break;

                //Conversor Monetário
                case 1:
                    System.out.println("");
                    System.out.println("¦==============================================================¦");
                    System.out.println("¦            Qual conversão monetária iremos realizar?         ¦");
                    System.out.println("¦                                                              ¦");
                    System.out.println("¦1 - Dólar para Real                                           ¦");
                    System.out.println("¦2 - Real para Dólar                                           ¦");
                    System.out.println("¦                                                              ¦");
                    System.out.println("¦0 - Retornar                                                  ¦");
                    System.out.println("¦==============================================================¦");
                    System.out.print("¦>");
                    Scanner LeitorOpcaoB = new Scanner(System.in);
                    opcaob = LeitorOpcaoB.nextInt();

                    switch (opcaob) {

                        case 0:
                            //retornar
                            break;

                        //Dólar para Real    
                        case 1:
                            System.out.println("");
                            System.out.println("¦==============================================================¦");
                            System.out.println("¦          Quantos Dólares deseja converter para Real?         ¦");
                            System.out.println("¦==============================================================¦");
                            System.out.print("¦>");
                            Scanner LeitorDol = new Scanner(System.in);
                            dolar = LeitorDol.nextFloat();

                            real = (dolar * cotacao);

                            System.out.println("");
                            System.out.println("¦==============================================================¦");
                            System.out.printf("¦ U$%.2f", dolar);
                            System.out.printf(" Dólares tem o valor de R$%.2f", real);
                            System.out.println(" Reais.               ¦");
                            System.out.println("¦==============================================================¦");

                            break;

                        //Real para Dólar    
                        case 2:
                            System.out.println("");
                            System.out.println("¦==============================================================¦");
                            System.out.println("¦          Quantos Reais deseja converter para Dólares?        ¦");
                            System.out.println("¦==============================================================¦");
                            System.out.print("¦>");
                            Scanner LeitorRea = new Scanner(System.in);
                            real = LeitorRea.nextFloat();
                            dolar = (real / cotacao);
                            System.out.println("");
                            System.out.println("¦==============================================================¦");
                            System.out.printf("¦ R$%.2f", real);
                            System.out.printf(" Reais tem o valor de U$%.2f", dolar);
                            System.out.println(" Dólares.               ¦");
                            System.out.println("¦==============================================================¦");

                            break;
                        default:
                            System.out.println("");
                            System.out.println("¦==============================================================¦");
                            System.out.println("¦                        OPCÃO INVÁLIDA                        ¦");
                            System.out.println("¦==============================================================¦");
                    }
                    break;

                case 2:
                    System.out.println("");
                    System.out.println("¦==============================================================¦");
                    System.out.println("¦    Qual medida de temperatura deseja realizar a conversão?   ¦");
                    System.out.println("¦                                                              ¦");
                    System.out.println("¦1 - Fahrenheit para Celsius                                   ¦");
                    System.out.println("¦2 - Celsius para fahrenheit                                   ¦");
                    System.out.println("¦                                                              ¦");
                    System.out.println("¦0 - Retornar                                                  ¦");
                    System.out.println("¦==============================================================¦");
                    System.out.print("¦>");
                    Scanner LeitorOpcaoC = new Scanner(System.in);
                    opcaob = LeitorOpcaoC.nextInt();

                    switch (opcaob) {

                        case 0:
                            //retornar
                            break;

                        case 1:
                            System.out.printf("");
                            System.out.println("¦==============================================================¦");
                            System.out.println("¦                Qual a temperatura em Fahrenheit?             ¦");
                            System.out.println("¦==============================================================¦");
                            System.out.print("¦>");
                            Scanner LeitorFah = new Scanner(System.in);
                            fahrenheit = LeitorFah.nextDouble();

                            celsius = (fahrenheit - 32) * 5 / 9;

                            System.out.println("");
                            System.out.println("¦==============================================================¦");
                            System.out.printf("¦A temperatura de %.1f",fahrenheit);
                            System.out.printf("ºF é de %.1f",celsius);
                            System.out.println("ºC.                     ¦");
                            System.out.println("¦==============================================================¦");

                            break;

                        case 2:
                            System.out.printf("");
                            System.out.println("¦==============================================================¦");
                            System.out.println("¦                  Qual a temperatura em Celsius?              ¦");
                            System.out.println("¦==============================================================¦");
                            System.out.print("¦>");
                            Scanner LeitorCel = new Scanner(System.in);
                            celsius = LeitorCel.nextDouble();

                            fahrenheit = ((celsius * 1.8) + 32);

                            System.out.println("");
                            System.out.println("¦==============================================================¦");
                            System.out.printf("¦A temperatura de %.1f", celsius);
                            System.out.printf("ºC é de %.1f", fahrenheit);
                            System.out.println("ºF.                     ¦");
                            System.out.println("¦==============================================================¦");

                            break;

                        default:
                            System.out.println("");
                            System.out.println("¦==============================================================¦");
                            System.out.println("¦                        OPCÃO INVÁLIDA                        ¦");
                            System.out.println("¦==============================================================¦");

                    }

                    break;

                default:
                    System.out.println("");
                    System.out.println("¦==============================================================¦");
                    System.out.println("¦                        OPCÃO INVÁLIDA                        ¦");
                    System.out.println("¦==============================================================¦");
            }
        } while (opcaoa != 010101);

        System.out.println("");
        System.out.println("¦==============================================================¦");
        System.out.println("¦           Obrigado por utilizar de nossos serviços!          ¦");
        System.out.println("¦==============================================================¦");

    }

}
