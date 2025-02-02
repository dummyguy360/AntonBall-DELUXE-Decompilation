event_inherited();

switch (room)
{
    case rm_menu_antonball:
        drawString[0] = "ANTONBALL!\n\nANTONBALL is the adventure of THE world famous ANTON, BOILER CITY's local over-consumer of fizzy libation.";
        drawString[1] = "Using his trusty ANTONBALL, ANTON decides to take the most direct path home after an unfortunate trip into the SEWERS: Breaking straight through every single wall between the SEWERS and the CITY he calls home in 30 stages of brick-smashing fun!";
        drawString[2] = "Break every brick in the stage, and keep an eye out for special POWER-UP bricks! Breaking those will temporarily grant you a special ability!";
        drawString[3] = "If you find yourself struggling with those last pesky bricks, keep at it! A special POWER-UP may eventually show up to save the day!";
        break;
    
    case rm_menu_punchball:
        drawString[0] = "PUNCHBALL!\n\nPUNCHBALL is the tale of ANTON's building mate ANNIE, and her indefatigable need to be the absolute best.";
        drawString[1] = "When ANNIE discovers a new LOCAL SPORT sponsored by BRULO'S CASINO, with the grand prize being a lifetime supply of her favorite niche beverage, she sets out to win first place! That the sport involves throwing heavy medicine balls at small animals is just the cherry on top.";
        drawString[2] = "Defeat all of the trickster beasts that have volunteered to take part in BRULO'S wild game! Just touch the punch ball to pick it up, then throw it to flip enemies over. Run into flipped enemies to kick them right out of the stage!";
        drawString[3] = "The sides of the stage loop around, so don't be afraid to make hasty escapes from one side to the other!";
        break;
    
    case rm_menu_vs:
        drawString[0] = "VS. ANTONBALL!\n\nVS. ANTONBALL is ANTONBALL but competitive! Each team has their own BRICK WALL and aims to break the other team's wall first.";
        drawString[1] = "Defeat the other team by destroying their wall! Play 1v1, 2v2, or 2v1 (if you're into that)!";
        drawString[2] = "Many POWER-UPs are in play, with some twists and turns depending on which arena you're having your ball-based blitz in! You can even pick some up and throw them!";
        break;
}

array_push(drawString, "If you want to view or change your controls, just press SELECT or SHIFT after choosing your character on the character select screen.");
page = 0;
center = drawRect.getCenter();
