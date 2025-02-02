function tutorial_prompt()
{
    scr_label("PLAY THE TUTORIAL?");
    
    if (scr_button("NO"))
    {
        global.tutorialEnabled = 0;
        on_select();
    }
    
    if (scr_button("YES"))
    {
        global.tutorialEnabled = 1;
        on_select();
    }
}
