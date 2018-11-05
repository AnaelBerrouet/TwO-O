# Two-O math game


### Description

- N-Player math game where players take turns to answer simple math addition, subtraction, and multiplication problems.
- A new math question is generated for each turn by picking two numbers between 1 and 20.
- The player whose turn it is is prompted the question and must answer correctly or lose a life.

### Details

- Both players start with 3 lives.
- They lose a life if they mis-answer a question.
- At the end of every turn, the game should output the new scores for both players, so players know where they stand.
- The game doesn’t end until all but one of the players loses all their lives. At this point, the game announces who won and what the other player’s score is.

### Classes and game structures

#### Game Object (main game loop)
- State:
  - Holds two player objects
  - Holds win state
  - Hold Quizzer object
- Behaviour:
  - Runs main game loop
  - Asks question to player objects (about their state)
  - Print responses to screen using the Quizzer

#### Quizzer Object
- State:
  - Hold Question objects
- Behaviour:
  - Generates new question objects
  - Processes/Validates question answers and returns success failure notice

#### Question Object
- State:
  - formatted string for screen output
- Behaviour:
  - returns new math question (Question.ask)
  - returns result of answer

#### Player Object
- State:
  - Holds lives
  - Holds name
- Behaviour:
  - passes/accepts life info
  - passes/accepts name




