require_relative 'generate'

class Game
    def initialize
        @password = gerar_palavra
        @palavra = @password.split('')
        @palavra.pop()
        @hits = []
        puts "O jogo começou !! Você tem 11 chancês para acertar."
    end
    def start(i = 1)
        while i < 12
            break if @palavra.length == 0
            puts <<~MSG
                    Até agora seus palpites certos foram: #{@hits}
                MSG
            print "Digite seu #{i}º palpite: "
            guest = gets.chomp 
            @palavra.each_with_index do |letter, index|
                @hits << @palavra.slice!(index) && break if letter == guest         
            end
            i = i + 1
        end
        puts "Parabéns você ganhou !! a palavra é #{@password}"
    end
end

novo_jogo = Game.new.start