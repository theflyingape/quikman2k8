# quikman2k8
Commodore VIC20: 2008 completed version of original 1984 machine language game 
using modern 6502 assembler

Programmer’s Delight
by Robert Hurst on November 1, 2008

Earlier this morning, I had the pleasure of scratching a 24-year old itch which 
resulted in the 2008 completed version of Quikman for the venerable Commodore 
VIC20.  It was just the other week I wrote about the ‘feat’ of converting a 
disassembled listing of my old game, reformatting it into suitable assembler 
source code so that if compiled, it produces the exact same binary of the 
original program file.

The days that followed was something I did not expect.  With this new 
assembler, I found that I was able to recall what each part of the program did, 
reorganize the code and data in a manner that was much more memory efficient (a 
stock VIC20 only has 3583 bytes for loading a program), and remove all 
unnecessary data and NOP (no operation) instructions that were useful then for 
reserving bytes for future machine code.  This internal house-cleaning did not 
change any part of the game, but it did free up 88-bytes and assure me that the 
assembly process was in a manageable, relocatable address state.  That was all 
I needed to get motivated to make the changes I could not do in 1984 without 
these tools — no excuses for me now not to get it done right! This is what got 
done:

-   fix the character cell-based graphics to reduce flickering and color “noise”
-   fix the number of lives remaining in the status bar
-   fix a software interrupt that can cause a joystick poll to occur during 
quikman’s move
-   reverse monsters direction after swallowing a powerpill
-   any monster released from the cage remains aggressive, even during 
powerpill play
-   add a startup “demo” mode
-   improve quikman’s death sequence
-   improve completed level sequence
-   add a cheat key to advance to the next fruit level

A bonus feature from all the above fixes and optimizations allowed me to 
integrate progressive playing speed as the fruit levels advance.  The player 
will require teenager reflexes to exceed the apple level — without the use of 
the cheat key (ESC).  I decided to make the “demo” mode look like an old Atari 
VCS home video game — a steady flicker from its player / missile graphics while 
cycling the screen’s color palette.  This was quite intentional, because that 
look definitely invokes an authentic retro-arcade gaming feel about it.

The final result of this program is that it completely uses — not just occupies 
— all 3583-bytes of available RAM.  Fortunately, it was enough for my skill and 
determination to complete my objective in making a quality Pac-Man clone for a 
stock Commodore VIC20.  Too bad it took 24-years to complete, because there was 
no other clone of that era that I ever played which came this close to the 
original.

After playing a few rounds of my new found toy, an overwhelming mix of 
satisfaction and pride took hold of my senses — which after a short time, I 
found myself a bit physically shaken as if I were nervous.  Talk about a coding 
session hangover… ha!  The only other time I felt that, but it was more potent, 
was witnessing the birth of my daughter, Erin.  It is that feeling from 
accomplishment in software invention that I describe as “programmer’s delight”.

P.S., this program runs perfectly on another fine machine emulator, mess, and 
uses a joystick.  It uses the PC’s F4 key for the VIC’s F7 key (which is 
accurate as the VIC only had four function keys, but used SHIFT to yield eight) 
and the HOME key as VIC’s STOP key for cheating.  From the command-line, simply:

mess vic20 -quik quikman2k8.prg

And you will need to type RUN after a few seconds from its READY prompt.

