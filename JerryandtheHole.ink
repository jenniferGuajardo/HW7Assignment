VAR extraNoRope = false // Apparently, I can do a label in one knot and call it at another. I think the parenthesis count is as a declaration.'
VAR lungFail = 0 // For a small cigarette gag.

You are Jerry.

Jerry is trying to go down into the hole, since he dropped his hat down there.


// Introduction
+ [Approach the Hole] When Jerry approached the whole, he found that his forgot his rope. This wasn't good. If he didn't use a rope, he wouldn't be able to return back up.

- The only option now is to turn back, and retrieve some from the toolbench in his garage.

// This is my "two doors" situation.
    + +[Approach the Garage] Jerry approached the garage.
    
    ->Shed 

    + + (initialNoRope) [Jump Down the Hole] // Here's the label "No Rope." This will alter events in the hole.
    ->MidHoleFall 

// Rope time :)
== Shed ==
Entering from the side, Jerry found that the rope was in plain-view.

As Jerry grabs the rope, he feels a sense of dopamine flow through him. He trembles at the very notion of using the rope to secure his dissent.

+ [Grab the Rope and Leave]
    // Down the hole!
    -> MidHoleFall

// A time waster on the narrator's side.
+ [Smoke a Cigarette] {!Jerry lit up a cigarette. Despite it being bad for him, he felt as if it calmed his nerves.| Jerry lit up another cigarette, seemingly oblivious to the time he's wasting when there's a hat that needs retrieving.| Jerry clearly displays his tobacco addiction, lighting up a third cigarette | You light up yet another cigarette. Honestly, I'm starting to worry about you. | Your lungs will collapse you know, if you continue.| This is getting old.| Okay, you want to smoke so much? Fine. You die of lung failure. Lol.}
    ~ lungFail += 1 

    {lungFail == 8: GAME OVER. Jerry's lung bursts!->END|} // Smoking is bad for health.
    -> Shed


// Narration reacts to player ability to enter and reenter.
+ [Exit Without The Rope] {!It appears as if Jerry forgot to bring the rope.| Perhaps, Jerry wanted to simply experience the joys of his garage once more, without the pressure of rope-grabbing. It's good for the soul, actually. As it would provide the mental clarity to envision one's goals.| Why do you keep leaving and re-entering? | Stop it. | I mean it. | This is getting old.| Just progress with or without the rope. I don't care.}

    - So long as Jerry goes back to toolbench, he can go grab it.
    + [Approach the Garage] Jerry approached the garage.
        -> Shed
    + [Jump Down the Hole] //An even extra-ier version of the other label.
    ~ extraNoRope = true
        ->MidHoleFall 
    

// Regardless of where 
== MidHoleFall ==
// This is a one-way thing. As in, the choice that led you here can't be undone.
Jerry jumped down into the hole, eager to find his hat.

{initialNoRope: However, he'd be trapped down there without a means to get out.}
{extraNoRope: Despite having the clear ability to see how the rope would allow him to escape once he found his hat, he willfully neglected the fact. Perhaps, he felt confident in his ability to crawl out?}

Will Jerry get his hat?
* [Continue] -> Cave

== Cave == 
// Some reactions up to this point.
Jerry presses on through the cave.
{extraNoRope: However, given his previous decision making. It's doubtful he won't get lost.}
{lungFail > 1: Honestly, the enviornment is so stressful, Jerry feels his nicotine cravings kicking back in. | The cool breeze of the cave makes Jerry shiver.}
Jerry hears a bat in the distance.
    ->Section1

= Section1 // Some clicky navigation. Here, and illusion of choice will occur.
Jerry came to an intersection of the cave. How odd! He could've sworn the cave was linear. Thankfully, though, he went in the correct direction.
    *  [Take the Wide Path] Instead of going the correct direction, Jerry went to the wide path{extraNoRope:, like the idiot he is. |.} // Dialogue change.
        Finding nothing, he turned back.
        ->Section1
    *  [Take the Higher Path] But rather than go to the correct direction, Jerry climbed up the higher path. {extraNoRope: Why would Jerry think this when it's so obviously the wrong one?| Honestly, I don't blame him. It looked rather convincing.} // More dialogue change.
        But all he found was a dead end.
        ->Section1
    *  [Take the Swirly Path] Jerry takes the swirly path and has some fun going through the near fun-house levels of complexity. Despite going up, down, and all around, Jerry finds himself back to the crossroads.
        {lungFail > 0: Frankly, Jerry feels over-exterted, probably from the cigarettes he smokes. }
        You don't understand how, but the path manages to loop back around toward the intersection.
        ->Section1
    * -> Section2 // Fallback Choice
-> END
= Section2
Is it not clear where you need to progress? Here, let me show you:
AHEM! Turn your attention to that rock. Yes, THAT rock by your feet. There's a small passageway nearby it.
* [Crawl Down A Narrow Crevice] Jerry, trying to flex and contort his body to fit, made his way deeper into the cave. {initialNoRope or extraNoRope: Honestly, it's about time he started listening to my directions. | Considering his penchant for listening to me, it's a wonder he hadn't found this place sooner.}
-> Section3
= Section3
    // I know it would be more efficient to use initialNoRope as a global, but this should work just as fine for the sake of learning how to use it.
    // Effectively the choice that allows the player to undo the damage they done.
    As Jerry crawls, he comes towards the a spider!
    {initialNoRope: Thankfully, this is the nice, friendly Rope Spider! She passed Jerry rope, knowing he probably jumped down without one on accident. | The spider minds her own business, and Jerry tactfully avoids her. ->Section4 }
    * [Accept the Rope] Jerry accepted the rope, and thanked the spider, politely.
        ~ extraNoRope = false
    * [Refuse the Rope] Unfortunately, Jerry was an ungreatful prune who DOESN'T ACCEPT THE HELP GIVEN TO HIM.
        Jerry shooed the Spider away.
        ~ extraNoRope = true
    
    - With that, he continued further downward.
After awhile, he finally found his hat!
-> Section4
= Section4
The Hat itself is a fine {~Baseball Cap|Fedora|Top Hat|King's Crown|Beanie|, pure leather Cowboy Hat.}

"Marvelous," Jerry thought to himself, and he put it on his head with pride.

{extraNoRope: Alas, however, as nice as the hat may be, Jerry shall remain in this cave forever, since he didn't consider the OBVIOUS warnings. Frankly, I hope your proud of yourself, Jerry. You got what you wanted. You are your own free man. | You see, Jerry got the hat by being obedient. To win at life, you must be obedient. With hat on head, and rope back at the entrance, he lived the remainder of his life with his cool hat. You see, submission to authority must ALWAYS be rewarded, or else order would be non-existent.}

We could all learn a thing or too about Jerry.

THE END
-> END