// Moves object in a rectangele



if(y > y2){
    direction = 0;
    y = y - 1;
}else if(x > x2){
    direction = 90;
    x = x - 1;
}else if(y < y1){
    direction = 180;
    y = y + 1;
}else if(x < x1){
    direction = 270;
    x = x + 1;
}

