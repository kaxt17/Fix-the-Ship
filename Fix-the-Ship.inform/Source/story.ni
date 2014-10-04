"Fix the Ship" by Kyle Axt

When play begins, say "You are in a ship travelling through space on a mission to save your home planet.  You have been fighting off many other people on this journey. 

Suddenly, a ship comes at you at full speed.  It powers up its lasers, all three of them.  Each laser hits one of you rooms - Engine Room, Oxygen Room, and Reactor Room.

You quickly reach for your communication devices, and you ask them to stop attacking you.  They respond apoligizing because they thought you were going to attack them first.  They then beam over a wrench to help you fix the systems on your ship.

"

The maximum score is 3.

Wrench is a thing.  the description is "You can use this wrench to help you fix things."

The Cockpit is a room.  The description is "This is the area where you have full control over your ship.  You can control the engines, reactor, oxygen, and many other things.  You can also see the position of other ships around you and communicate with them.

The oxygen, engine room, and reactor are flashing red.  You really need to fix these now.

To the west is the Storage Room"

The Storage Room is west of The Cockpit. The description is "The storage room is the room where you keep all of your stuff.  Everything is kept neatly organized in boxes for tools, parts, and scrap.  Storage Box #1 is filled with parts to fix the oxygen room and the engine room.  Storage Box #2 is filled with parts to fix the reactor, but you seemed to have lost the key somewhere.  

To the north is the Oxygen Room, west is the Engine Room, south is the Reactor Room, and east is the Cockpit."

Storage Box #1 is a container in The Storage Room.  It is scenery.  It is undescribed.  It is openable and closed.  The description is "Parts to fix the oxygen room and the engine room."

Engine Parts is a thing in Storage Box #1.  The description is "These are the parts you need to fix the engine."

Oxygen Pipes is a thing in Storage Box #1.  The description is "You could use these to fix the oxygen."

Storage Box #2 is a container in The Storage Room.  It is scenery.  It is undescribed.  It is lockable and locked.  

Reactor Part is a thing in Storage Box #2.  The description is "This is a part you can use to fix the reactor, but it may not be enough."

The Engine Room is west of The Storage Room.  The description is  "The is the room where the engine power comes from.  If this is broken or has no power you can't move at all.  The ship engine is in the room."

TSM-946 Ship Engine is scenery in The Engine Room.  The description is "MODEL #: TSM-946

This is the engine of your ship.  It appears to be broken from the attacking ship.  Maybe you can fix it."

The Oxygen Room is north of The Storage Room.  The description is "This room provides oxygen.  It providea all the oxygen to support all lifeforms on your ship.  If this goes down you better fix it quick.  The oxygen system is in the room."

KBM-7924 Oxygen System is scenery in The Oxygen Room.  The description is "MODEL #: KBM-7924

This provides the oxygen for your ship.  The system is broken from the blast of the attacking ship."

The Reactor Room is south of The Storage Room.  The description is  "This is the reactor room.  It provides the power for everything in your ship.  There is a reactor in the middle of the room."

DIG-8459 System Reactor is scenery in The Reactor Room.  The description is "MODEL #: DIG-8459

This is the system reactor for your ship.  It provides power to everything
"

STUFFYOUDONTNEEDANYMORE is a container.

Spare Parts is a thing.  The description is "You might be able to use these spare parts to fix something else."

Understand "fix [something]" as fixing.
Fixing is an action applying to one thing.

Instead of fixing TSM-946 Ship Engine:
	if TSM-946 Ship Engine is fixed:
		say "You've already fixed this." instead;
	if TSM-946 Ship Engine is not fixed:
		if the player is carrying Wrench:
			if the player is carrying Engine Parts:
				move Engine Parts to STUFFYOUDONTNEEDANYMORE;
				say "The Engine is fixed";
				move Spare Parts to player;
			if the player is not carrying Engine Parts:
				say "you need the engine parts";
		if the player is not carrying Wrench:
			say "You're gonna need a wrench";

Instead of fixing KBM-7924 Oxygen System:
	if KBM-7924 Oxygen System is fixed:
		say "You've already fixed this." instead;
	if KBM-7924 Oxygen System is not fixed:
		if the player is carrying Wrench:
			if the player is carrying Oxygen Pipes:
				move Oxygen Pipes to STUFFYOUDONTNEEDANYMORE;
				say "The Oxygen System is fixed";
			[Move] [KEY]
			if the player is not carrying Oxygen Pipes:
				say "You need the Oxygen Pipes";
		if the player is not carrying Wrench:
			say "You're gonna need a wrench";
			
Instead of fixing DIG-8459 System Reactor:
	if DIG-8459 System Reactor is fixed:
		say "You've already fixed this." instead;
	if DIG-8459 System Reactor is not fixed:
		if the player is carrying Wrench:
			if the player is carrying Reactor Part:
				move Engine Parts to STUFFYOUDONTNEEDANYMORE;
				say "The Reactor is fixed";
			if the player is not carrying Reactor Part:
				say "you need the Reactor Part";
		if the player is not carrying Wrench:
			say "You're gonna need a wrench";











