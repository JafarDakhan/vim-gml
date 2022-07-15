
//
// NOTE: tile_meeting script by @Pixelated_Pope
//

/// @description TileMeeting(x, y, layer)
/// @param x
/// @param y
/// @param layer

function TileMeeting(){
	var _layer = argument[2],
	_tilemap = layer_tilemap_get_id(_layer);

	var _x1 = tilemap_get_cell_x_at_pixel(_tilemap, bbox_left + (argument0 - x), y),
   _y1 = tilemap_get_cell_y_at_pixel(_tilemap, x, bbox_top + (argument1 - y)),
   _x2 = tilemap_get_cell_x_at_pixel(_tilemap, bbox_right + (argument0 - x), y),
   _y2 = tilemap_get_cell_y_at_pixel(_tilemap, x, bbox_bottom + (argument1 - y));

	for(var _x = _x1; _x <= _x2; _x++){
		for(var _y = _y1; _y <= _y2; _y++){
	   	if(tile_get_index(tilemap_get(_tilemap, _x, _y))){
	   		return true;
	   	}
		}
	}
	return false;
}


