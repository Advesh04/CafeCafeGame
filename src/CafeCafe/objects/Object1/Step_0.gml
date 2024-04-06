// Define movement speed
var moveSpeed = 4;

// Moving Up
if (keyboard_check(ord("W")))
{
    y -= moveSpeed;
}

// Moving Down
if (keyboard_check(ord("S")))
{
    y += moveSpeed;
}

// Moving Left
if (keyboard_check(ord("A")))
{
    x -= moveSpeed;
}

// Moving Right
if (keyboard_check(ord("D")))
{
    x += moveSpeed;
}
