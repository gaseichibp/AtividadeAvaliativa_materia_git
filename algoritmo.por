programa {

    funcao inicio() {

        real a, b, resultado
        caracter op

        escreva("Digite o primeiro numero: ")
        leia(a)

        escreva("Digite o segundo numero: ")
        leia(b)

        escreva("Escolha a operacao (+ ou -): ")
        leia(op)

        se (op == "+") {
            resultado = a + b
        } senao se (op == "-") {
            resultado = a - b
        } senao {
            escreva("Nenhum sinal válido escolhido\n")
        }

        escreva("Resultado final: ", resultado)
    }
}
