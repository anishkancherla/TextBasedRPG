# Text Based RPG (Role Playing Game)
 
 > Authors: [Anish Kancherla](https://github.com/anishkancherla),  [Nolan Cha](https://github.com/ncha2022), [Josh Wang](https://github.com/jwang705), [Jenny Zhang](https://github.com/j3nnyz)

### Navigation Diagram
> ![image](https://github.com/cs100/final-project-ncha007-jzhan591-akanc003-jwang705/assets/102260019/90943fcf-6c79-4e94-8299-74ce65de4c06)
> This navigation diagram shows how each screen is interlinked and how they transfer between themselves.

### Screen Layouts

> ## Main Menu
> - **Commands:**
> - `New Game`: Starts a new game session.
> - `Quit`: Exits the game.

> ## Character Creation
> - **Commands:**
> - `Choose Class`: Enter a command to select a class like Rogue, Knight, Mage, etc.

> ## Class Selection
> - **Commands:**
> - `Select Class`: Choose your character's class from options such as [Rogue], [Knight], [Mage].

> ## Gameplay
> - **Commands:**
> - `Inventory`: Opens the player's inventory to view items.
> - `Move Room`: Enter a direction to move your character to a different room.
> - `Gamble`: Allows a gambling system for the player to gamble their money away.

> ## Inventory System
> - **Commands:**
> - `Use Item`: Utilize an item from the inventory, ex, `Health Potion [Use]`.
> - `Equip Item`: Equip an item to the character, ex, `Sword [Equip]`.
> - `Unequip Item`: Unequip an item to the character, ex, `Sword [Unequip]`.

> ## Store System
> - **Commands:**
> - `Buy Item`: Purchase an item from the store, ex, `Health Potion [Buy]`.

> ## Turn-Based Fighting
> - **Commands:**
> - `Attack`: Choose to attack the enemy.
> - `Use Item`: Use an item from your inventory during combat.

> ## Gambling System
> - **Commands:**
> - `Bet`: Place a bet in a game of chance, ex, `Dice Roll [Bet]`.
> - `Choose Game of Chance`: Given options of 2x, 5x, and 10x your in-game money.

> ## Quit Confirmation
> - **Commands:**
> - `Confirm Quit`: Verify if the player truly wants to quit, ex, `Are you sure you want to quit? [Yes], [No]`.


## Class Diagram
 > ![image](https://github.com/cs100/final-project-ncha007-jzhan591-akanc003-jwang705/assets/102260019/30ae96c6-3642-4514-b6cc-16bab4c6d797)
>
> The program starts out in the Main Menu where the player can have the option to load a new game, load a previously saved game, or quit the game/program altogether. The diagram also includes the Gameplay class, which includes direction and CurrCharacter and functions inventory, lookAround, move, and interact. These functions allow the player to control their character's movements during the gameplay. The function Menu takes the player to main menu, and createNewCharacter creates a new character in the game. The Character class includes all of the character's stats and accessible items such as strength, dexterity, weapon, and money. The character's class can be chosen through the ChooseClass function, and their stats through the ChooseStats function, which includes all their stats. These features are only accessible through the Character class. In the inventory class, players can access their character's inventory and perform actions such as equipping an item, dropping an item, or just viewing their inventory through their respective functions. The character's inventory is sored through an array with each item being string. Through the Gambling class, the character's movements are determined through a dice roll. The random number produced by this chooses their path. In the Store class, the player can purchase things for their character through the store, which is an array storing the name of each item in string. Players can choose to display the contents of the store, and display the  quantity or description of an item they are interested in in the store through their respective functions. Through the private removeFromStore and addBackToStore functions the program is then able to update the contents of the store if the player chooses to purchase or return an item. 
 
 ## Screenshots
 > <img width="405" alt="image1" src="https://github.com/cs100/final-project-ncha007-jzhan591-akanc003-jwang705/assets/146978867/3585cea9-81c0-48c3-950d-bcc84dadf726">
 > <img width="399" alt="image2" src="https://github.com/cs100/final-project-ncha007-jzhan591-akanc003-jwang705/assets/146978867/80571a66-b3a4-4ffe-848b-d7fb3c7e67d6">
 > <img width="445" alt="image3" src="https://github.com/cs100/final-project-ncha007-jzhan591-akanc003-jwang705/assets/146978867/02210b84-5a7b-4a65-a797-a9b2370c658d">
 > <img width="462" alt="image4" src="https://github.com/cs100/final-project-ncha007-jzhan591-akanc003-jwang705/assets/146978867/4ff9ebd1-9338-4eec-9cb9-e61c853a0eb6">
 > <img width="643" alt="image5" src="https://github.com/cs100/final-project-ncha007-jzhan591-akanc003-jwang705/assets/146978867/2b450d59-2702-4457-bbbd-b35791ed378a">
 > <img width="646" alt="image6" src="https://github.com/cs100/final-project-ncha007-jzhan591-akanc003-jwang705/assets/146978867/df6448fc-ff5d-4fdd-9f9b-854420c9f440">


 ## Installation/Usage
 > To run the game, you need to download the necessary files within this repository. Once downloaded, open the terminal and navigate to the directory in which you have downloaded these files. Run the commands "cmake .", "make", then "./game". This will run the application/executable "game". Once you exit out of the application, you can always run the game again by running the command "./game" in your terminal.
 ## Testing
 > The project was tested through unit tests and gameplay runs, testing the different options that are available in gameplay.
 
