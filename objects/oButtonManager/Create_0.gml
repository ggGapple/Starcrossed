button_width = room_width/4;
button_height = room_height/6;
startButton = instance_create_depth(room_width/2-button_width/2,room_height/2+50,-1,oButton);
startButton.image_xscale = button_width/sprite_get_width(sButton);
startButton.image_yscale = button_height/sprite_get_height(sButton);
depth = -2