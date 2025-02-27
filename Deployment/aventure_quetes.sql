CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    LocationName TEXT,
    LocationDesc TEXT
);

CREATE TABLE Objects (
    ObjectID INT PRIMARY KEY,
    ObjectName TEXT,
    ObjectDesc TEXT,
    LocationID INT FOREIGN KEY
);

CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    PlayerName TEXT,
    PlayerHealth INT,
    PlayerStrenght INT,
    LocationID INT FOREIGN KEY
);

CREATE TABLE NPCs (
    NpcID INT PRIMARY KEY,
    NpcName TEXT,
    NpcDesc TEXT,
    LocationID INT FOREIGN KEY,
    NpcDialogue TEXT
);

CREATE TABLE Enemies (
    EnemyID INT,
    EnemyName TEXT,
    EnemyHealth INT,
    EnemyStrength INT,
    LocationID INT FOREIGN KEY
);

CREATE TABLE Inventory (
    InventoryID INT,
    PlayerID INT FOREIGN KEY,
    ObjectID INT FOREIGN KEY
);

CREATE TABLE Quests (
    QuestID INT PRIMARY KEY,
    QuestDesc TEXT,
    QuestIsComplete BOOLEAN,
    PlayerID INT FOREIGN KEY,
    NpcID INT FOREIGN KEY
);

CREATE TABLE NpcQuests (
    NpcQuestID INT,
    NpcID INT FOREIGN KEY,
    QuestID INT FOREIGN KEY
);

INSERT INTO Locations (LocationID,LocationName,LocationDesc)
VALUES
(1,'Diddy Underground Passages',"You have stumbled in an abandonned mansion thus leading you to an hidden passageway, You find a lot of ways to go through, as if someone lived in there.. That's when you saw a sign saying: Diddy Underground Passages... As a drop of baby oil dripped onto your head"),
(2,"Drake's Pizzeria","You were walking through abandonned lands when you stumbled onto a building that seemed to look like a pizzeria. You entered The building seeing many odd children looking humanoids/robots. That's when you saw a menu book reading: Drake's Pizzeria"),
(3,"Spooky Ahh Grandpa's Infinite Sauna","Wanting to relax you found yourself a sauna, when entering it you realized something wasn't right, the sauna was.. infinite?"),
(4,"Don Pollo's Domain","You stumbled in an abandonned building, as you explored it you kept hearing stuff, as if someone was spying on you while singing...");

INSERT INTO Objects (ObjectID,ObjectName,ObjectDesc,LocationID)
VALUES
(1,"Taco Con Salsa Y Picante","A legendary Taco found in Don Pollo's Domain that is said to be a myth, this taco heals about 40% of the player's current health, recommended to be used with higher health points",4),
(2,"Drip Of Baby Oil","This relic allows the player to enchant any weapon giving it double the damage but making the weapon weight 50% more heavier",1),
(3,"Drake's Orange Slipper","The legendary slipper of the infamous drake, it's said to be able to slay dragons but with a bit of difficulty",2),
(4,"Pizza Of Youth", "This box of pizza is said to be able to heal 50 health points per slice",2),
(5,"Hello Kitty BackPack","This backpack is told to be welding legendary items but who knows what it's real content is", 3);


