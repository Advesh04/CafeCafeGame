// In Mouse Left Pressed Event of obj_questionOverlay
if (show)
{
    // Check if click is on Button 1
    if (point_in_rectangle(mouse_x, mouse_y, button1.x, button1.y, button1.x + button1.width, button1.y + button1.height))
    {
        show = false; // Hide overlay
        // Handle Button 1 action here
    }
    // Check if click is on Button 2
    else if (point_in_rectangle(mouse_x, mouse_y, button2.x, button2.y, button2.x + button2.width, button2.y + button2.height))
    {
        show = false; // Hide overlay
        // Handle Button 2 action here
    }
}
