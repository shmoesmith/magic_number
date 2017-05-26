require 'number_in_words'
require 'pry'



def main_menu
    puts "input any positive whole number or type quit:"

    @choice = gets.strip

    if @choice == "quit"
        exit(0)
    else 
        @choice = @choice.to_i
        output
    end
end

def output
    if @choice == 4
        puts "4 is the magic number"
        main_menu
    else
        my_string = @choice.in_words
        word_length = (my_string.length - my_string.count(" "))
        puts "#{@choice} is #{word_length}, and.."
        @choice = word_length
        output
    end
end 

main_menu




