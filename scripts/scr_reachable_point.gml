// Script finds available points to move to that are adjacent to a point being passed in
/*
var x = argument0;
var y = argument1;
var pathsArray = argument2;

var adjList = ds_list_create();

if(x - 1 >= 0) {
    if(pathsArray[x-1,y] == 0) {
        var tempArray = pathsArray[x-1,y];
        ds_list_add(adjList, "x-1, y");
    }
}
if(x + 1 <= ((room_width - 32)/32)) {
    if(pathsArray[x+1, y] == 0) {
        ds_list_add(adjList, "x+1, y");
    }
}
if(y - 1 >= 0) {
    if(pathsArray[x, y - 1] == 0) {
        ds_list_add(adjList, "x, y-1");
    }
}
if(y + 1 <= ((room_height - 32)/32)) {
    if(pathsArray[x, y+1] == 0) {
        ds_list_add(adjList, "x, y+1");
    }
}

return adjList;

