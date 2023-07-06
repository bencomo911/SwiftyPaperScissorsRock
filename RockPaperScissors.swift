// This function will allow the user to input their choice for their turn and check the user input is valid input
func getUserChoice(userInput: String) -> String{
  if userInput == "rock"{
    return userInput
  } else if userInput == "paper"{
    return userInput
  } else if userInput == "scissors"{
    return userInput
  } else{
    return "You can only enter rock, paper, or scissors. Try again."
  }
}// end getUserChoice func

// This function will generate the oponent's choice 
func getComputerChoice() -> String{
  let randomNumber = Int.random(in:0...2)

  switch randomNumber{
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
      return "Something went wrong."
  }
}//end getComputerChoice func


//This function contains the logic for winning the game
func determineWinner(_ userChoice: String, _ compChoice: String) -> String{
  var decision = "It's a tie"

  switch userChoice{
    case "rock":
      if compChoice == "paper"{
        decision = "The computer won"
      } else if compChoice == "scissors"{
        decision = "The user won"
      }// end rock if-else

    case "paper":
      if compChoice == "rock"{
        decision = "The user won"
      } else if compChoice == "scissors" {
        decision = "The computer won"
      }// end paper if-else

    case "scissors":
      if compChoice == "rock"{
        decision = "The computer won"
      } else if compChoice == "paper"{
        decision = "The user won"
      }// end scissors if-else

    default:
      return "Something went wrong"
  } // end switch-case
  
  return decision
}// end determineWinner func


let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))
