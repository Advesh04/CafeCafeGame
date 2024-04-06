// In Draw Event of obj_questionOverlay
if (show)
{
    // Draw semi-transparent background
    draw_set_alpha(0.5);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
    
    // Draw the question box
    var boxX = 50, boxY = 150, boxWidth = 300, boxHeight = 100;
    draw_set_color(c_white);
    draw_rectangle(boxX, boxY, boxX + boxWidth, boxY + boxHeight, false);
    draw_set_color(c_white);
    draw_text(boxX + 10, boxY + 10, question);
    
    // Draw buttons
    // Button 1
    draw_set_color(c_gray);
    draw_rectangle(button1.x, button1.y, button1.x + button1.width, button1.y + button1.height, true);
    draw_set_color(c_white);
    draw_text(button1.x + 10, button1.y + 5, answer1);
    
    // Button 2
    draw_set_color(c_gray);
    draw_rectangle(button2.x, button2.y, button2.x + button2.width, button2.y + button2.height, true);
    draw_set_color(c_white);
    draw_text(button2.x + 10, button2.y + 5, answer2);
}
