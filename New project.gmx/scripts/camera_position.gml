/// camera_position(obj, radius, division)

var targetx,targety,obj,rad,divider,maxWidth,maxHeight;

obj = argument0;
rad = argument1;
divider = argument2;

maxWidth = 3200;
maxHeight = 1800;

// Divider should be around 25.

move_towards_point(mouse_x,mouse_y,0);

targetx = obj.x + lengthdir_x(min(rad,distance_to_point(mouse_x,mouse_y)),direction);
targety = obj.y + lengthdir_y(min(rad,distance_to_point(mouse_x,mouse_y)),direction);

x += (targetx-x)/divider;
y += (targety-y)/divider;

view_xview = -(view_wview/2) + x;
view_yview = -(view_hview/2) + y;

view_xview = clamp(view_xview,0,room_width-view_wview);
view_yview = clamp(view_yview,0,room_height-view_hview)

if(keyboard_check(vk_tab)){
    view_wview = 6400
    view_hview = 3600
} else {
    view_wview = 1920
    view_hview = 1080
}


