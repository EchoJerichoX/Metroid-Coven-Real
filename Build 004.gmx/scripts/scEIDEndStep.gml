scTransition();

// Only use the in-game pause if a message is not currently in use/being displayed.
if (keyboard_check_pressed(vk_enter))
or (keyboard_check_pressed(vk_return))
{
    if (fadeStage = -1)
        { scPause(); exit; }
}
if (keyboard_check_pressed(vk_escape))
{
    if (fadeStage = -1)
    {
        scPause();
        fadeStage = 0;
        text = Exit;
        alarm[0] = 5;
        exit;
    }
}
switch (fadeStage) 
{
    case 0: // Fade background in.
        if (alpha1 < 0.6) alpha1 += 0.02;
        if (alpha1 = 0.6) fadeStage = 1;
        break;
    case 1: // Show message and fade text in.
        if (alpha2 < 1) alpha2 += 0.05;
        if (alpha2 = 1) complete = true;
        break;
    case 2: // Fade text out.
        if (alpha2 > 0) alpha2 -= 0.05;
        if (alpha2 <= 0) fadeStage = 3;
        break;
    case 3: // Fade background out.
        if (gonextroom = 1) 
        {
            if (titlevol > 0) titlevol -= 0.05;
            sound_volume(Title,titlevol);
            if (alpha1 < 1) alpha1 += 0.02;
            if (alpha1 = 1) 
            {
                if (wait > 0) wait -= 1;
                else
                {
                    if (eId.paused = .2) scPause();
                    eId.pausedelay = 10;
                    fadeStage = -1;
                    scItemPauseAnimationFix();
                    text = 0;
                    alpha1 = 0;
                    alpha2 = 0;
                    room_goto(IntroSceneShip); gonextroom = 0; 
                }
            }
            exit;
        }
        if (alpha1 > 0) alpha1 -= 0.02;
        if (alpha1 <= 0)
        {
            if (eId.paused = .2) scPause();
            eId.pausedelay = 10;
            fadeStage = -1;
            scItemPauseAnimationFix();
            text = 0;
            alpha1 = 0;
            alpha2 = 0;
        }
        break;
}
if (fadeStage > -1)
{
    if (!complete)
    {
        alpha1 = 0.6;
        fadeStage = 1;
        canEnter = false;
        alarm[0] = 5;
        exit;
    }
    if (text = Exit)
    {
        if (mouse_check_button_pressed(mb_left))
        or (keyboard_check_pressed(vk_space))
        or (keyboard_check_pressed(vk_enter))
        or (keyboard_check_pressed(vk_return))
        or (keyboard_check_pressed(ord("Y")))
            { game_end(); }
        if (keyboard_check_pressed(vk_escape))
        or (keyboard_check_pressed(ord("N")))
        {
            fadeStage = 2;
            canEnter = false;
            exit;
        }
    }
    if (text = Start)
    {
        if (mouse_check_button_pressed(mb_left))
        or (keyboard_check_pressed(vk_space))
        or (keyboard_check_pressed(vk_enter))
        or (keyboard_check_pressed(vk_return))
        or (keyboard_check_pressed(ord("Y")))
        {
            fadeStage = 2;
            canEnter = false;
            gonextroom = true;
            exit;
        }
        if (keyboard_check_pressed(vk_escape))
        or (keyboard_check_pressed(ord("N")))
        {
            fadeStage = 2;
            canEnter = false;
            exit;
        }
    }
    if (mouse_check_button_pressed(mb_left))
    or (keyboard_check_pressed(vk_space))
    or (keyboard_check_pressed(vk_enter))
    or (keyboard_check_pressed(vk_return))
    or (keyboard_check_pressed(vk_escape))
    {
        fadeStage = 2;
        canEnter = false;
    }
}
