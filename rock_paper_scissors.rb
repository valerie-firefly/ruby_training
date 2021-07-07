    def game_result(p1,p2)
        if (p1.upcase == "ROCK" && p2.upcase == "SCISSORS") || (p2.upcase == "ROCK" && p1.upcase == "SCISSORS")
            return "Rock crushes scissors."
        elsif (p1.upcase == "ROCK" && p2.upcase == "PAPER") || (p2.upcase == "ROCK" && p1.upcase == "PAPER")
            return "Paper covers rock."
        else
            return "Scissors cut paper."
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
    player1 = ""
    player2 = ""
    p1_valid = false
    p2_valid = false

    puts "Player 1:  "
    player1 = get_valid_answer

    puts "Player 2:  "
    player2 = get_valid_answer

    puts game_result(player1, player2)

