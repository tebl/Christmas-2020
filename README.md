# Christmas 2020
I wanted to do this project last year, but my health deteriorated and so the big Christmas 2019 project became the big Christmas 2020 project instead. 2020, if anything, provided plenty of time for sitting around the house thinking up how to make a blinking LED christmas tree with an Arduino Nano built into it! I even got around to adding a small video of it in action on [YouTube](https://www.youtube.com/watch?v=C256A0oTeUM)!

![Christmas tree](https://github.com/tebl/Christmas-2020/raw/main/gallery/2020-10-29%2002.12.32.jpg)

The project is composed of three PCB designs, parts A/B are the actual tree and have been made so that they slot into eachother. Part C is the base, it holds the Arduino Nano and a couple of shift registers in addition to a switch that is used in order to toggle the various modes (I added a second Part C board to the bottom to add a little more weight).

As with any Christmas tree, you can decorate it with any LEDs though you might need to adjust the resistor values accordingly so that some of them aren't extremely bright (when in doubt, try them on a breadboard first). Alternatively - you could choose to skip the whole decorating step and put some string at the top and hang it from your tree (you will need to use some wire on the bottom to keep it from falling apart).

![Bare christmas tree](https://github.com/tebl/Christmas-2020/raw/main/gallery/2020-10-30%2019.44.00.jpg)

## Building it
Start by examining all three PCBs, assuming you already have those handy - refer to the BOM below if you're wondering what parts to order from your favourite electronics boutique. Both of the A/B, the two tree parts should have a christmas bauble (at least I think that is the correct English translation of the round glass decorations) specifying both the part name (A or B) and wether you're looking at the front or the back. The latter details, the front and back bit, matters because this is the orientation it needs to be in when you want to slot it into the base (part C).

![PCBs](https://github.com/tebl/Christmas-2020/raw/main/gallery/2020-10-27%2020.44.24.jpg)

Because I wanted something that looked good without any components, parts A/B will look different from the standard markings used for LEDs and resistors you would expect to encounter any other time of the year. The baubles with the two holes are for LEDs, you can solder them straight on or aim them upwards if you'd like to - feel free to use those weird LEDs you got as a gift (it's your tree after all) - the important bit is that the **square pad** is for the negative leg of the LED (the **shorter** one). The squiggly lines are for the resistors, you need to pick values that work with your LEDs, so test them in a breadboard first in order to figure out which value to use (or just put 100 Ohm for the dim ones, 330 for the normal LEDs and something like 1K for those bright ones like the blue). Try installing components so that every side gets something, at least that's what my parents always instruct me to do on the big plastic tree.

Parts A/B are attached to the base using right-angle pin headers, take care that you match the orientation to the corresponding parts on part C. While on the subject of part C, the only important part here is that you'll probably need to solder the switch into place before putting in the Arduino Nano (unless you'll be using female header pins so that you can remove it later). The rest of the components (including the Nano) will be installed on the underside of part C.

![PCB component side](https://github.com/tebl/Christmas-2020/raw/main/gallery/2020-10-28%2022.58.43.jpg)

Given that there are components on the underside of the base, you'll need to add some M3 hex spacers to it so that it won't scrape against the table - if you have an extra part C PCB I recommend putting it on the bottom as well so that it doesn't get knocked around so easily.

## BOM
The BOM, or bill of manufacturing, is a list of the components used when constructing the complete christmas tree. Note that since you can substitute the LEDs/resistors you want to use - the following may be more of a suggestion though you'd need all of it in order to make everything blink. Most of these components should be easily obtainable through your favourite local electronics components store. Right-angle pin headers are usually sold in breakable strips with 40 pins, so just break off 5 pin segments where needed.

| Reference    | Item                                       | Count |
| ------------ | ------------------------------------------ | ----- |
| Christmas A  | Fabricate using Gerber files ([order](https://www.pcbway.com/project/shareproject/Christmas_2020__part_A_.html))   |     1 |
| D1-D9        | LED (3mm or 5mm, colour as wanted)         |     9 |
| R1-R9        | 220, 330 or 1k ohm resistor *              |     9 |
| J1,J2        | 1x5-pin right-angle header                 |     2 |
| Christmas B  | Fabricate using Gerber files ([order](https://www.pcbway.com/project/shareproject/Christmas_2020__part_B_.html))   |     1 |
| D2-D9        | LED (3mm or 5mm, colour as wanted)         |     8 |
| R2-R9        | 220, 330 or 1k ohm resistor *              |     8 |
| J1,J2        | 1x5-pin right-angle header                 |     2 |
| Christmas C  | Fabricate using Gerber files ([order](https://www.pcbway.com/project/shareproject/Christmas_2020__part_C_.html))   |     1 |
| SW1          | SPST momentary push button                 |     1 |
| A1           | Arduino Nano                               |     1 |
| U1,U2        | 74HC595 (DIP-16)                           |     2 |
|              | M3 nylon hex standoffs with screws         |     4 |

*) Use resistors with values that would correspond to the LED you installed, use higher resistrance the brighter the LED (especially the blue ones). If a soldered in LED is too dim, install a lower value on the back as well in order to lower the resistance going to it.