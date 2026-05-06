algoritmo "CalculoDeMediaDePrecos"
// RA: 1226666


var
   // Declaração do vetor para armazenar os preços
   precos: vetor[1..5] de real
   i: inteiro
   mediaFinal: real

// Função que processa os dados calculando a média dos valores do vetor
funcao calcularMedia() : real
var
   j: inteiro
   soma: real
inicio
   soma <- 0
   // Estrutura de repetição dentro da função para somar os valores
   para j de 1 ate 5 faca
      soma <- soma + precos[j]
   fimpara

   // Retorna o resultado do cálculo
   retorne soma / 5
fimfuncao

inicio
   // Informa o usuário sobre o que o programa faz e o que ele deve fornecer
   escreval("--- SISTEMA DE ANÁLISE DE PREÇOS ---")
   escreval("Você precisará informar o preço de 5 produtos para calcularmos a média.")
   escreval("")

   // Estrutura de repetição para coletar os dados fornecidos pelo usuário
   para i de 1 ate 5 faca
      escreva("Digite o preço do produto ", i, ": R$ ")
      leia(precos[i])
   fimpara

   // Processamento: chama a função para calcular a média
   mediaFinal <- calcularMedia()

   // Apresentação do resultado formatado (com duas casas decimais)
   escreval("------------------------------------")
   escreval("Processamento concluído!")
   escreval("A média de preço dos produtos informados é: R$ ", mediaFinal:4:2)
fimalgoritmo