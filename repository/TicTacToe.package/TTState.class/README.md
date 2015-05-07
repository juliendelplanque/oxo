I represents a state of the game.

- You can access actions possibles from me to other possible states using #actions message.
- You can get the current player for this state using #currentPlayer message.
- You can know if this state is terminal using #isTerminal message.
- You can get the player for the next round with #playerFornextRound message.
- You can get the previous state using #previousState message.
- You can get the utility for a player using #utilityFor: .

To get results of an action from me (state) you can use #result: message.