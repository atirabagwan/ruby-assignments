module Start 
    def welcome
        puts "*************"
        puts "Welcome!!!"
        puts "*************"
    end

end

class Hangman
    include Start
    attr_accessor :words, :turns, :guessed_word

    def initialize
        @turns = 10
        @words = ["apple", "orange", "lemon", "mango", "watermelon"]
        @guessed_word = ""
    end

    def play
        word = @words.sample
        # puts word
        
        puts "guess the word ! You have #{@turns} turns.."
        word.length.times {print "_ "}
        puts "\n"
        guess(word)
    end

    private
    def guess(word)
        word.length.times {@guessed_word += "_"}
        while turns > 0 and @guessed_word != word           
            # puts @guessed_word
            puts "Enter guessed letter :"
            letter = gets.chomp.downcase.strip
            if letter.length > 1
                puts "Please Enter single character"
            else
                @turns -= 1
                word.each_char.with_index do |w, idx|
                    if word[idx] == letter
                        @guessed_word[idx] = letter
                    end
                end
                print_word
            end
        end
        if guessed_word == word
            puts "Congratulations!!! You won!!"
        elsif turns == 0
            puts "Sorry... You Lost!"
        end
    end

    def print_word
        @guessed_word.each_char {|ch| print ch + " " }
        puts "\n"
    end       

end

hangman = Hangman.new
hangman.welcome
hangman.play