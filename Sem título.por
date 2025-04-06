programa{
    funcao inicio(){
        inteiro modo, random, chute, tentativas = 0
        
        escreva("=== JOGO DE ADIVINHAÇÃO ===\n")
        escreva("Escolha o modo de jogo:\n")
        escreva("1 - PvP (Jogador vs Jogador)\n")
        escreva("2 - PvE (Jogador vs Computador)\n")
        escreva("Opção: ")
        leia(modo)
        
        se (modo == 1) {
            escreva("\nJogador 1, digite um número secreto para o Jogador 2 adivinhar (1 a 100): ")
            leia(random)
            
            se (random < 1 ou random > 100) {
                escreva("\nNúmero inválido! O número deve estar entre 1 e 100.\n")
                retorne}
            
            escreva("\nO número foi definido! Agora é a vez do Jogador 2 adivinhar.\n")}
        senao se (modo == 2) {
            random = sorteia(1, 100)
            escreva("\nO computador escolheu um número secreto entre 1 e 100.\n")
            escreva("Tente adivinhar qual é!\n")}
        senao {
            escreva("\nOpção inválida! Por favor, reinicie o jogo.\n")
            retorne}

        enquanto (verdadeiro) {
            escreva("\nDigite seu palpite (1-100): ")
            leia(chute)
            tentativas = tentativas + 1
            
            se (chute < 1 ou chute > 100) {
                escreva("Por favor, digite um número entre 1 e 100.\n")}
            senao se (chute > random) {
                escreva("Seu palpite foi ALTO demais! Tente um número menor.\n")}
            senao se (chute < random) {
                escreva("Seu palpite foi BAIXO demais! Tente um número maior.\n")}
            senao {
                escreva("\n🎉 PARABÉNS! Você acertou em ", tentativas, " tentativa(s)! 🎉\n")
                escreva("O número secreto era ", random, "!\n")
                interrompa}}}}
