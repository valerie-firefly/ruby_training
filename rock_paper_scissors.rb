    def game_result(p1,p2)

        if (p1.upcase == "ROCK" && p2.upcase == "SCISSORS") || (p2.upcase == "ROCK" && p1.upcase == "SCISSORS")
            return "Rock crushes scissors.", (p1.upcase == "ROCK" ? "Player 1" : "Player 2" )
        elsif (p1.upcase == "ROCK" && p2.upcase == "PAPER") || (p2.upcase == "ROCK" && p1.upcase == "PAPER")
            return "Paper covers rock.", (p1.upcase == "PAPER" ? "Player 1" : "Player 2" )
        elsif (p1.upcase == "SCISSORS" && p2.upcase == "PAPER") || (p2.upcase == "SCISSORS" && p1.upcase == "PAPER")
            return "Scissors cut paper.", (p1.upcase == "SCISSORS" ? "Player 1" : "Player 2" )
        else
            return "It's a tie!"
        end
   end

    def get_valid_answer
        answer = ""
        valid_answer = false
        until valid_answer 
            answer = gets.chomp
            valid_answer = (answer.upcase == "ROCK" || answer.upcase == "PAPER" || answer.upcase == "SCISSORS")
            puts "No cheating!  Rock, paper, scissors only!!!" if !valid_answer
        end
        return answer
    end    

    puts "Let's play rock paper scissors!"
    play_again = true

    until play_again == false
        player1 = ""
        player2 = ""
        p1_valid = false
        p2_valid = false

        puts "Player 1:  "
        player1 = get_valid_answer

        puts "Player 2:  "
        player2 = get_valid_answer

        result = game_result(player1, player2)
        unless  result == "It's a tie!"
            puts result[0]
            puts "#{result[1]} wins!"
            play_again = false
        else
            puts result
            puts "Play again? (Y/N)"
            if gets.chomp == "Y"
                play_again = true
            else
                play_again = false 
            end
        end
    end