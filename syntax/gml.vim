
" Vim syntax file
" Language: GML
" Maintainer: Jafar Dakhan <https://github.com/JafarDakhan>
" Last Update:	2022 July 15

if exists("b:current_syntax")
  finish
endif

" GML keywords
syntax keyword _label case default
syntax keyword _repeat while for do repeat until 
syntax keyword _statement break return delete continue exit end new finally begin constructor  
syntax keyword _exc throw try catch
syntax keyword _cond if else switch with 
syntax keyword _other function
syntax keyword _structure enum 

" Macros 
syntax match _macro "s*\(#macro\)\>" 

" bool
syntax keyword _bool true false

" types & stuff
syntax keyword _type var globalvar static 

" global vars
syntax match _globalVar contained "\w\+"
syntax match _global "\<global\." nextgroup=_globalVar skipwhite

" function call
syntax match _funcCall /\<\K\k*\ze\s*(/


"""
""" built-in functions
"""
syntax keyword _variableFunc variable_instance_exists variable_instance_get variable_instance_set variable_instance_get_names variable_instance_names_count
	\ variable_global_exists variable_global_get variable_global_set
	\ variable_struct_exists variable_struct_get variable_struct_set variable_struct_get_names variable_struct_names_count variable_struct_remove
	\ instanceof
	\ array_create array_set array_get array_copy array_equals array_push array_pop array_insert array_delete array_sort array_length array_resize 
	\ array_length_1d array_length_2d array_height_2d
	\ method method_get_self method_get_index
	\ is_string is_real is_numeric is_bool is_array is_struct is_method is_ptr is_int32 is_int64 is_vec3 is_vec4 is_matrix is_nan is_undefined is_infinity
	\ typeof bool ptr int64

syntax keyword _gameControl game_end game_restart game_load game_load_buffer game_save game_save_buffer game_get_speed game_set_speed
	\ highscore_add highscore_name highscore_value highscore_clear
	\ cursor_sprite

syntax keyword _moveAndCol place_empty place_free place_meeting
	\ position_empty position_meeting position_change position_destroy collision_circle collision_circle_list 
	\ collision_line collision_line_list collision_point collision_point_list collision_ellipse collision_ellipse_list
	\ collision_rectangle collision_rectangle_list point_in_rectangle point_in_circle point_in_triangle
	\ rectangle_in_rectangle rectangle_in_circle rectangle_in_triangle
	\ motion_add motion_set move_towards_point move_bounce_all move_bounce_solid move_contact_all move_contact_solid
	\ move_outside_all move_outside_solid move_random move_snap move_wrap place_snapped
	\ mp_linear_step mp_linear_step_object mp_linear_path mb_linear_path_object
	\ mp_potential_step mp_potential_step_object mp_potential_path mb_potential_path_object mb_potential_settings
	\ mp_grid_create mp_grid_destroy mp_grid_path mp_grid_add_cell mp_grid_add_instance mp_grid_add_rectangle mp_grid_get_cell mp_grid_clear_all
	\ mp_grid_clear_cell mp_grid_clear_rectangle mp_grid_to_ds_grid mp_grid_draw
	
syntax keyword _assetsInfo asset_get_index asset_get_type
	\ asset_get_tags asset_add_tags asset_remove_tags asset_has_tags asset_has_any_tag asset_clear_tag tag_get_asset_ids tag_get_assets

syntax keyword _animcurve animcurve_get animcurve_get_channel animcurve_get_channel_index animcurve_channel_evaluate 
	\ animcurve_create animcurve_exists animcurve_destroy animcurve_channel_new animcurve_point_new

syntax keyword _sprites sprite_get_name sprite_get_number sprite_get_speed sprite_get_speed_type sprite_get_width sprite_get_height sprite_get_xoffset 
	\ sprite_get_yoffset sprite_get_bbox_bottom sprite_get_bbox_left sprite_get_bbox_right sprite_get_bbox_top sprite_get_bbox_mode sprite_get_nineslice
	\ sprite_get_tpe sprite_get_texture sprite_get_uvs sprite_get_info 
	\ sprite_exists sprite_add sprite_replace
	\ sprite_duplicate sprite_assign sprite_merge sprite_create_from_surface sprite_add_from_surface
	\ sprite_collision_mask sprite_nineslice_create sprite_set_nineslice sprite_set_offset sprite_set_bbox_mode sprite_set_bbox sprite_set_speed
	\ sprite_delete sprite_set_alpha_from_sprite sprite_set_cache_size sprite_set_cache_size_ext sprite_save sprite_save_strip
	\ sprite_flush sprite_flush_multi
	\ sprite_prefetch sprite_prefetch_multi
	\ skeleton_animation_get skeleton_animation_set
	\ skeleton_animation_get_ext skeleton_animation_set_ext
	\ skeleton_animation_get_duration skeleton_animation_mix
	\ skeleton_animation_list skeleton_animation_clear
	\ skeleton_animation_get_frames skeleton_animation_get_frame
	\ skeleton_animation_set_frame skeleton_animation_get_event_frames
	\ skeleton_skin_get skeleton_skin_set
	\ skeleton_skin_list skeleton_attachment_get
	\ skeleton_attachment_set skeleton_attachment_create
	\ skeleton_attachment_create_colour skeleton_attachment_create_color
	\ skeleton_bone_data_get skeleton_bone_data_set
	\ skeleton_bone_state_get skeleton_bone_state_set
	\ skeleton_bone_list skeleton_slot_list
	\ skeleton_slot_data skeleton_slot_data_instance
	\ skeleton_find_slot skeleton_slot_colour_set
	\ skeleton_slot_color_set skeleton_slot_colour_get
	\ skeleton_slot_color_get skeleton_slot_alpha_get
	\ skeleton_get_minmax skeleton_get_num_bounds skeleton_get_bounds
	\ skeleton_collision_draw_set draw_skeleton draw_skeleton_instance draw_skeleton_collision draw_skeleton_time draw_enable_skeleton_blendmodes
	\ draw_get_enable_skeleton_blendmodes

syntax keyword _tilesets tileset_get_name
	\ tileset_get_texture
	\ tileset_get_uvs

syntax keyword _audio audio_exists
	\ audio_get_name
	\ audio_get_type
	\ audio_play_sound
	\ audio_play_sound_at
	\ audio_pause_sound
	\ audio_pause_all
	\ audio_resume_sound
	\ audio_resume_all
	\ audio_stop_sound
	\ audio_stop_all
	\ audio_is_playing
	\ audio_is_paused
	\ audio_create_stream
	\ audio_destroy_stream
	\ audio_emitter_create
	\ audio_emitter_exists
	\ audio_emitter_position
	\ audio_emitter_velocity
	\ audio_emitter_falloff
	\ audio_emitter_gain
	\ audio_emitter_pitch
	\ audio_emitter_set_listener_mask
	\ audio_emitter_free
	\ audio_play_sound_on
	\ audio_emitter_get_gain
	\ audio_emitter_get_pitch
	\ audio_emitter_get_x
	\ audio_emitter_get_y
	\ audio_emitter_get_z
	\ audio_emitter_get_vx
	\ audio_emitter_get_vy
	\ audio_emitter_get_vz
	\ audio_emitter_get_listener_mask
	\ audio_listener_position
	\ audio_listener_velocity
	\ audio_listener_orientation
	\ audio_listener_get_data
	\ audio_listener_set_position
	\ audio_listener_set_velocity
	\ audio_listener_set_orientation
	\ audio_get_listener_count
	\ audio_get_listener_info
	\ audio_get_listener_mask
	\ audio_set_listener_mask
	\ audio_group_load
	\ audio_group_unload
	\ audio_group_is_loaded
	\ audio_group_load_progress
	\ audio_group_name
	\ audio_group_stop_all
	\ audio_group_set_gain
	\ audio_create_buffer_sound
	\ audio_free_buffer_sound
	\ audio_create_play_queue
	\ audio_free_play_queue
	\ audio_queue_sound
	\ audio_start_recording
	\ audio_stop_recording
	\ audio_get_recorder_count
	\ audio_get_recorder_info
	\ audio_create_syntaxc_group
	\ audio_play_in_syntaxc_group
	\ audio_start_syntaxc_group
	\ audio_stop_syntaxc_group
	\ audio_pause_syntaxc_group
	\ audio_resume_syntaxc_group
	\ audio_syntaxc_group_get_track_pos
	\ audio_destroy_syntaxc_group
	\ audio_syntaxc_group_debug
	\ audio_syntaxc_group_is_playing

syntax keyword _paths path_start
	\ path_end
	\ path_get_closed
	\ path_get_kind
	\ path_get_length
	\ path_get_name
	\ path_get_number
	\ path_get_point_speed
	\ path_get_point_x
	\ path_get_point_y
	\ path_get_precision
	\ path_get_speed
	\ path_get_x
	\ path_get_y
	\ path_exists
	\ path_add
	\ path_add_point
	\ path_change_point
	\ path_insert_point
	\ path_delete_point
	\ path_clear_points
	\ path_append
	\ path_assign
	\ path_delete
	\ path_duplicate
	\ path_flip
	\ path_mirror
	\ path_reverse
	\ path_rotate
	\ path_rescale
	\ path_set_closed
	\ path_set_kind
	\ path_set_precision
	\ path_shift

syntax keyword _scripts script_exists
	\ script_get_name
	\ script_execute
	\ script_execute_ext

syntax keyword _shaders shader_get_name
	\ shader_get_uniform
	\ shader_get_sampler_index
	\ shader_set
	\ shader_set_uniform_f
	\ shader_set_uniform_f_array
	\ shader_set_uniform_i
	\ shader_set_uniform_i_array
	\ shader_set_uniform_matrix
	\ shader_set_uniform_matrix_array
	\ shader_reset
	\ shader_is_compiled
	\ shaders_are_supported
	\ shader_current
	\ shader_enable_corner_id

syntax keyword _seq sequence_exists
	\ sequence_create
	\ sequence_destroy
	\ sequence_get
	\ sequence_track_new
	\ sequence_keyframe_new
	\ sequence_keyframedata_new
	\ sequence_get_objects
	\ sequence_instance_override_object

syntax keyword _fonts font_get_name
	\ font_get_fontname
	\ font_get_first
	\ font_get_last
	\ font_get_italic
	\ font_get_bold
	\ font_get_size
	\ font_get_texture
	\ font_get_uvs
	\ font_get_info
	\ font_exists
	\ font_set_cache_size
	\ font_add_enable_aa
	\ font_add_get_enable_aa
	\ font_add
	\ font_add_sprite
	\ font_add_sprite_ext
	\ font_replace
	\ font_replace_sprite
	\ font_replace_sprite_ext
	\ font_delete
	\ font_texture_page_size

syntax keyword _timelines timeline_exists
	\ timeline_get_name
	\ timeline_add
	\ timeline_delete
	\ timeline_moment_add_script
	\ timeline_moment_clear
	\ timeline_clear
	\ timeline_size
	\ timeline_max_moment
	\ timeline_index
	\ timeline_running
	\ timeline_speed
	\ timeline_position
	\ timeline_loop

syntax keyword _objs event_inherited
	\ event_perform
	\ event_perform_asyntaxc
	\ event_perform_object
	\ event_user
	\ event_action
	\ event_number
	\ event_object
	\ event_type
	\ object_index
	\ object_exists
	\ object_get_name
	\ object_get_mask
	\ object_get_parent
	\ object_get_persistent
	\ object_get_solid
	\ object_get_sprite
	\ object_get_visible
	\ object_get_physics
	\ object_is_ancestor
	\ object_set_mask
	\ object_set_persistent
	\ object_set_solid
	\ object_set_sprite
	\ object_set_visible

syntax keyword _instances instance_create_layer
	\ instance_create_depth
	\ instance_destroy
	\ instance_exists
	\ instance_change
	\ instance_copy
	\ instance_find
	\ instance_furthest
	\ instance_nearest
	\ instance_number
	\ instance_place
	\ instance_place_list
	\ instance_position
	\ instance_position_list
	\ instance_id_get
	\ alarm_set
	\ alarm_get
	\ instance_activate_all
	\ instance_activate_object
	\ instance_activate_region
	\ instance_activate_layer
	\ instance_deactivate_all
	\ instance_deactivate_object
	\ instance_deactivate_region
	\ instance_deactivate_layer

syntax keyword _rooms room_next
	\ room_previous
	\ room_get_name
	\ room_goto
	\ room_goto_next
	\ room_goto_previous
	\ room_restart
	\ room_exists
	\ room_add
	\ room_duplicate
	\ room_assign
	\ room_instance_add
	\ room_instance_clear
	\ room_set_height
	\ room_set_width
	\ room_set_persistent
	\ room_set_view_enabled
	\ room_set_viewport
	\ room_get_viewport
	\ room_set_camera
	\ room_get_camera
	\ layer_exists
	\ layer_get_id
	\ layer_get_depth
	\ layer_get_id_at_depth
	\ layer_get_name
	\ layer_get_all
	\ layer_get_all_elements
	\ layer_get_element_layer
	\ layer_get_element_type
	\ layer_get_x
	\ layer_get_y
	\ layer_get_hspeed
	\ layer_get_vspeed
	\ layer_create
	\ layer_destroy
	\ layer_x
	\ layer_y
	\ layer_hspeed
	\ layer_vspeed
	\ layer_add_instance
	\ layer_has_instance
	\ layer_instance_get_instance
	\ layer_destroy_instances
	\ layer_element_move
	\ layer_set_visible
	\ layer_get_visible
	\ layer_depth
	\ layer_force_draw_depth
	\ layer_is_draw_depth_forced
	\ layer_get_forced_depth
	\ layer_script_begin
	\ layer_script_end
	\ layer_shader
	\ layer_get_script_begin
	\ layer_get_script_end
	\ layer_get_shader
	\ layer_set_target_room
	\ layer_get_target_room
	\ layer_reset_target_room
	\ layer_tilemap_get_id
	\ layer_tilemap_exists
	\ layer_tilemap_create
	\ layer_tilemap_destroy
	\ tilemap_tileset
	\ tilemap_clear
	\ tilemap_x
	\ tilemap_y
	\ tilemap_set
	\ tilemap_set_at_pixel
	\ tilemap_set_mask
	\ tilemap_set_global_mask
	\ tilemap_set_width
	\ tilemap_set_height
	\ tilemap_get_mask
	\ tilemap_get_global_mask
	\ tilemap_get_tileset
	\ tilemap_get_frame
	\ tilemap_get_tile_width
	\ tilemap_get_tile_height
	\ tilemap_get_width
	\ tilemap_get_height
	\ tilemap_get_x
	\ tilemap_get_y
	\ tilemap_get
	\ tilemap_get_at_pixel
	\ tilemap_get_cell_x_at_pixel
	\ tilemap_get_cell_y_at_pixel
	\ tile_get_empty
	\ tile_get_index
	\ tile_get_flip
	\ tile_get_mirror
	\ tile_get_rotate
	\ tile_set_empty
	\ tile_set_index
	\ tile_set_flip
	\ tile_set_mirror
	\ tile_set_rotate
	\ layer_background_get_id
	\ layer_background_exists
	\ layer_background_create
	\ layer_background_destroy
	\ layer_background_visible
	\ layer_background_sprite
	\ layer_background_htiled
	\ layer_background_vtiled
	\ layer_background_stretch
	\ layer_background_blend
	\ layer_background_alpha
	\ layer_background_index
	\ layer_background_speed
	\ layer_background_xscale
	\ layer_background_yscale
	\ layer_background_get_visible
	\ layer_background_get_sprite
	\ layer_background_get_htiled
	\ layer_background_get_vtiled
	\ layer_background_get_stretch
	\ layer_background_get_blend
	\ layer_background_get_alpha
	\ layer_background_get_index
	\ layer_background_get_speed
	\ layer_background_get_xscale
	\ layer_background_get_yscale
	\ layer_sprite_get_id
	\ layer_sprite_exists
	\ layer_sprite_create
	\ layer_sprite_destroy
	\ layer_sprite_change
	\ layer_sprite_index
	\ layer_sprite_speed
	\ layer_sprite_xscale
	\ layer_sprite_yscale
	\ layer_sprite_angle
	\ layer_sprite_blend
	\ layer_sprite_alpha
	\ layer_sprite_x
	\ layer_sprite_y
	\ layer_sprite_get_sprite
	\ layer_sprite_get_index
	\ layer_sprite_get_speed
	\ layer_sprite_get_xscale
	\ layer_sprite_get_yscale
	\ layer_sprite_get_angle
	\ layer_sprite_get_blend
	\ layer_sprite_get_alpha
	\ layer_sprite_get_x
	\ layer_sprite_get_y
	\ layer_sequence_exists
	\ layer_sequence_create
	\ layer_sequence_destroy
	\ layer_sequence_x
	\ layer_sequence_y
	\ layer_sequence_angle
	\ layer_sequence_xscale
	\ layer_sequence_yscale
	\ layer_sequence_headpos
	\ layer_sequence_headdir
	\ layer_sequence_pause
	\ layer_sequence_play
	\ layer_sequence_speedscale
	\ layer_sequence_get_x
	\ layer_sequence_get_y
	\ layer_sequence_get_angle
	\ layer_sequence_get_xscale
	\ layer_sequence_get_yscale
	\ layer_sequence_get_headpos
	\ layer_sequence_get_headdir
	\ layer_sequence_get_speedscale
	\ layer_sequence_get_length
	\ layer_sequence_get_instance
	\ layer_sequence_get_sequence
	\ layer_sequence_is_paused
	\ layer_sequence_is_finished
	\ fx_create fx_get_parameter fx_get_parameters fx_get_name fx_get_parameter_names fx_get_single_layer fx_set_parameter fx_set_parameters
	\ fx_set_single_layer
	\ layer_set_fx layer_get_fx layer_clear_fx layer_enable_fx layer_fx_is_enabled

syntax keyword _extensions extension_get_options
	\ extension_get_option_value
	\ extension_get_option_names
	\ extension_get_option_count

syntax keyword _math random random_range irandom irandom_range random_set_seed random_get_seed randomize choose abs round floor ceil sign 
  \ frac sqrt sqr exp ln log2 log10 sin cos tan arcsin arccos arctan arctan2 dsin dcos dtan darcsin darccos darctan darctan2
  \ degtorad radtodeg power logn min max mean median clamp lerp dot_product dot_product_3d dot_product_normalised dot_product_3d_normalised
  \ math_set_epsilon math_get_epsilon angle_difference point_distance_3d point_distance point_direction lengthdir_x lengthdir_y

syntax keyword _strFunc real string string_format chr ansi_char ord 
  \ string_length string_byte_length string_pos string_copy string_char_at string_ord_at string_byte_at string_set_byte_at string_delete 
  \ string_insert string_lower string_upper string_repeat string_letters string_digits string_lettersdigits string_replace string_replace_all 
  \ string_count clipboard_has_text clipboard_set_text clipboard_get_text 

syntax keyword _date date_current_datetime date_create_datetime date_valid_datetime 
  \ date_inc_year date_inc_month date_inc_week date_inc_day date_inc_hour date_inc_minute date_inc_second 
  \ date_get_year date_get_month date_get_week date_get_day date_get_hour date_get_minute date_get_second date_get_weekday 
  \ date_get_day_of_year date_get_hour_of_year date_get_minute_of_year date_get_second_of_year 
  \ date_year_span date_month_span date_week_span date_day_span date_hour_span date_minute_span date_second_span 
  \ date_compare_datetime date_compare_date date_compare_time date_date_of date_time_of date_datetime_string date_date_string 
  \ date_time_string date_days_in_month date_days_in_year date_leap_year date_is_today date_set_timezone date_get_timezone 

syntax keyword _otherFunc distance_to_point distance_to_object
  \ event_perform event_user event_perform_object event_inherited 
  \ show_debug_message show_debug_overlay debug_event alarm_get alarm_set variable_global_exists variable_global_get variable_global_set 
  \ keyboard_set_map keyboard_get_map keyboard_unset_map keyboard_check keyboard_check_pressed keyboard_check_released keyboard_check_direct 
  \ keyboard_get_numlock keyboard_set_numlock keyboard_key_press keyboard_key_release keyboard_clear io_clear browser_input_capture
  \ mouse_check_button mouse_check_button_pressed mouse_check_button_released mouse_wheel_up mouse_wheel_down mouse_clear 
  \ draw_self draw_sprite draw_sprite_pos draw_sprite_ext draw_sprite_stretched draw_sprite_stretched_ext draw_sprite_tiled draw_sprite_tiled_ext  
  \ draw_sprite_part draw_sprite_part_ext draw_sprite_general 
  \ draw_clear draw_clear_alpha draw_point draw_line draw_line_width draw_rectangle draw_roundrect draw_roundrect_ext draw_triangle draw_circle  
  \ draw_ellipse draw_set_circle_precision draw_arrow draw_button draw_path draw_healthbar draw_getpixel draw_getpixel_ext draw_set_colour  
  \ draw_set_color draw_set_alpha draw_get_colour draw_get_color draw_get_alpha
  \ make_colour_rgb make_colour_hsv colour_get_red colour_get_green colour_get_blue colour_get_hue
  \ colour_get_saturation colour_get_value merge_colour make_color_rgb make_color_hsv
  \ color_get_red color_get_green color_get_blue color_get_hue color_get_saturation color_get_value
  \ merge_color screen_save screen_save_part gif_open gif_add_surface gif_save
  \ draw_set_font draw_set_halign draw_set_valign draw_text draw_text_ext string_width string_height
  \ string_width_ext string_height_ext draw_text_transformed draw_text_ext_transformed draw_text_colour draw_text_ext_colour
  \ draw_text_transformed_colour draw_text_ext_transformed_colour draw_text_color draw_text_ext_color
  \ draw_text_transformed_color draw_text_ext_transformed_color draw_point_colour draw_line_colour draw_line_width_colour 
  \ draw_rectangle_colour draw_roundrect_colour draw_roundrect_colour_ext draw_triangle_colour draw_circle_colour draw_ellipse_colour 
  \ draw_point_color draw_line_color draw_line_width_color draw_rectangle_color draw_roundrect_color draw_roundrect_color_ext 
  \ draw_triangle_color draw_circle_color draw_ellipse_color draw_primitive_begin draw_vertex draw_vertex_colour draw_vertex_color 
  \ draw_primitive_end sprite_get_uvs font_get_uvs sprite_get_texture font_get_texture texture_get_width texture_get_height 
  \ draw_primitive_begin_texture draw_vertex_texture draw_vertex_texture_colour draw_vertex_texture_color texture_global_scale 
  \ surface_create surface_create_ext surface_resize surface_free surface_exists surface_get_width surface_get_height 
  \ surface_get_texture surface_set_target surface_set_target_ext surface_reset_target draw_surface
  \ draw_surface_stretched draw_surface_tiled draw_surface_part draw_surface_ext draw_surface_stretched_ext draw_surface_tiled_ext 
  \ draw_surface_part_ext draw_surface_general surface_getpixel surface_getpixel_ext surface_save surface_save_part surface_copy 
  \ surface_copy_part application_surface_draw_enable application_get_position application_surface_enable application_surface_is_enabled
  \ display_get_width display_get_height display_get_frequency display_get_orientation display_get_gui_width display_get_gui_height
  \ display_reset display_mouse_get_x display_mouse_get_y display_mouse_set display_set_ui_visibility
  \ window_set_fullscreen window_get_fullscreen window_set_caption window_set_min_width window_set_max_width
  \ window_set_min_height window_set_max_height window_get_visible_rects window_get_caption window_set_cursor
  \ window_get_cursor window_set_colour window_get_colour window_set_color
  \ window_get_color window_set_position window_set_size window_set_rectangle window_center
  \ window_get_x window_get_y window_get_width window_get_height window_mouse_get_x window_mouse_get_y window_mouse_set
  \ window_view_mouse_get_x window_view_mouse_get_y window_views_mouse_get_x window_views_mouse_get_y
  \ show_message show_message_async clickable_add clickable_add_ext clickable_change clickable_change_ext clickable_delete clickable_exists
  \ clickable_set_style
  \ show_question show_question_async get_integer get_string get_integer_async get_string_async get_login_async
  \ get_open_filename get_save_filename get_open_filename_ext get_save_filename_ext
  \ show_error
  \ draw_highscore
  \ timeline_exists timeline_get_name
  \ timeline_moment_clear timeline_moment_add_script
  \ timeline_size timeline_max_moment timeline_add timeline_delete timeline_clear
  \ timeline_moment_add_script room_set_background_colour room_set_background_color
  \ file_text_open_from_string file_text_open_read file_text_open_write file_text_open_append file_text_close file_text_write_string
  \ file_text_write_real file_text_writeln file_text_read_string file_text_read_real file_text_readln
  \ file_text_eof file_text_eoln file_exists file_delete file_rename file_copy directory_exists directory_create directory_destroy
  \ file_find_first file_find_next file_find_close file_attributes filename_name filename_path
  \ filename_dir filename_drive filename_ext filename_change_ext file_bin_open file_bin_rewrite file_bin_close
  \ file_bin_position file_bin_size file_bin_seek file_bin_write_byte file_bin_read_byte parameter_count parameter_string
  \ environment_get_variable
  \ ini_open_from_string ini_open ini_close ini_read_string ini_read_real ini_write_string ini_write_real
  \ ini_key_exists ini_section_exists ini_key_delete ini_section_delete
  \ ds_set_precision ds_exists ds_stack_create ds_stack_destroy ds_stack_clear ds_stack_copy ds_stack_size ds_stack_empty
  \ ds_stack_push ds_stack_pop ds_stack_top ds_stack_write ds_stack_read ds_queue_create ds_queue_destroy ds_queue_clear
  \ ds_queue_copy ds_queue_size ds_queue_empty ds_queue_enqueue ds_queue_dequeue ds_queue_head ds_queue_tail
  \ ds_queue_write ds_queue_read ds_list_create ds_list_destroy ds_list_clear ds_list_copy ds_list_size ds_list_empty ds_list_add
  \ ds_list_insert ds_list_replace ds_list_delete ds_list_find_index ds_list_find_value ds_list_mark_as_list ds_list_mark_as_map
  \ ds_list_sort ds_list_shuffle ds_list_write ds_list_read
  \ ds_map_create ds_map_destroy ds_map_clear ds_map_copy ds_map_size ds_map_empty
  \ ds_map_add ds_map_add_list ds_map_add_map ds_map_replace ds_map_replace_map ds_map_replace_list ds_map_delete
  \ ds_map_exists ds_map_find_value ds_map_find_previous ds_map_find_next ds_map_find_first ds_map_find_last ds_map_write
  \ ds_map_read ds_map_secure_save ds_map_secure_load ds_map_secure_load_buffer ds_map_secure_save_buffer ds_priority_create
  \ ds_priority_destroy ds_priority_clear ds_priority_copy ds_priority_size ds_priority_empty ds_priority_add ds_priority_change_priority
  \ ds_priority_find_priority ds_priority_delete_value ds_priority_delete_min
  \ ds_priority_find_min ds_priority_delete_max ds_priority_find_max ds_priority_write ds_priority_read
  \ ds_grid_create ds_grid_destroy ds_grid_copy ds_grid_resize ds_grid_width ds_grid_height 
  \ ds_grid_clear ds_grid_set ds_grid_add ds_grid_multiply ds_grid_set_region ds_grid_add_region ds_grid_multiply_region 
  \ ds_grid_set_disk ds_grid_add_disk ds_grid_multiply_disk ds_grid_set_grid_region ds_grid_add_grid_region
  \ ds_grid_multiply_grid_region ds_grid_get ds_grid_get_sum ds_grid_get_max ds_grid_get_min ds_grid_get_mean ds_grid_get_disk_sum 
  \ ds_grid_get_disk_min ds_grid_get_disk_max ds_grid_get_disk_mean ds_grid_value_exists ds_grid_value_x ds_grid_value_y 
  \ ds_grid_value_disk_exists ds_grid_value_disk_x ds_grid_value_disk_y ds_grid_shuffle ds_grid_write ds_grid_read ds_grid_sort
  \ effect_create_below effect_create_above effect_clear
  \ part_type_create part_type_destroy part_type_exists part_type_clear part_type_shape part_type_sprite
  \ part_type_size part_type_scale part_type_orientation part_type_life part_type_step part_type_death
  \ part_type_speed part_type_direction part_type_gravity part_type_colour1 part_type_colour2 part_type_colour3
  \ part_type_colour_mix part_type_colour_rgb part_type_colour_hsv part_type_color1 part_type_color2 part_type_color3
  \ part_type_color_mix part_type_color_rgb part_type_color_hsv part_type_alpha1 part_type_alpha2
  \ part_type_alpha3 part_type_blend part_system_create part_system_destroy part_system_exists part_system_clear
  \ part_system_draw_order part_system_depth part_system_position part_system_automatic_update part_system_automatic_draw
  \ part_system_update part_system_drawit
  \ part_particles_create part_particles_create_colour part_particles_create_color part_particles_clear
  \ part_particles_count part_emitter_create
  \ part_emitter_destroy part_emitter_destroy_all part_emitter_exists part_emitter_clear part_emitter_region
  \ part_emitter_burst part_emitter_stream
  \ external_call external_define external_free window_handle window_device matrix_get matrix_set matrix_build matrix_multiply
  \ os_get_config os_get_info os_get_language os_get_region os_lock_orientation display_get_dpi_x display_get_dpi_y
  \ display_set_gui_size display_set_gui_maximise device_mouse_dbclick_enable
  \ virtual_key_add virtual_key_hide virtual_key_delete virtual_key_show 
  \ draw_enable_drawevent draw_enable_swf_aa draw_set_swf_aa_level draw_get_swf_aa_level draw_texture_flush draw_flush
  \ shop_leave_rating
  \ url_get_domain url_open url_open_ext url_open_full get_timer
  \ achievement_login achievement_logout achievement_post achievement_increment achievement_post_score achievement_available
  \ achievement_show_achievements achievement_show_leaderboards achievement_load_friends achievement_load_leaderboard
  \ achievement_send_challenge achievement_load_progress achievement_reset achievement_login_status
  \ achievement_get_pic achievement_show_challenge_notifications achievement_get_challenges achievement_event
  \ achievement_show achievement_get_info
  \ physics_world_create physics_world_gravity physics_world_update_speed physics_world_update_iterations physics_world_draw_debug
  \ physics_pause_enable physics_fixture_create physics_fixture_set_kinematic physics_fixture_set_density physics_fixture_set_awake
  \ physics_fixture_set_restitution physics_fixture_set_friction physics_fixture_set_collision_group physics_fixture_set_sensor
  \ physics_fixture_set_linear_damping physics_fixture_set_angular_damping physics_fixture_set_circle_shape physics_fixture_set_box_shape
  \ physics_fixture_set_edge_shape physics_fixture_set_polygon_shape physics_fixture_set_chain_shape physics_fixture_add_point
  \ physics_fixture_bind physics_fixture_bind_ext physics_fixture_delete
  \ physics_apply_force physics_apply_impulse physics_apply_angular_impulse physics_apply_local_force physics_apply_local_impulse
  \ physics_apply_torque physics_mass_properties physics_draw_debug physics_test_overlap physics_remove_fixture
  \ physics_set_friction physics_set_density physics_set_restitution physics_get_friction
  \ physics_get_density physics_get_restitution
  \ physics_joint_distance_create physics_joint_rope_create physics_joint_revolute_create physics_joint_prismatic_create
  \ physics_joint_pulley_create physics_joint_wheel_create physics_joint_weld_create physics_joint_friction_create
  \ physics_joint_gear_create physics_joint_enable_motor physics_joint_get_value physics_joint_set_value
  \ physics_joint_delete physics_particle_create
  \ physics_particle_delete physics_particle_delete_region_circle physics_particle_delete_region_box physics_particle_delete_region_poly
  \ physics_particle_set_flags physics_particle_set_category_flags physics_particle_draw
  \ physics_particle_draw_ext physics_particle_count physics_particle_get_data
  \ physics_particle_get_data_particle physics_particle_group_begin physics_particle_group_circle physics_particle_group_box
  \ physics_particle_group_polygon physics_particle_group_add_point physics_particle_group_end
  \ physics_particle_group_join physics_particle_group_delete physics_particle_group_count physics_particle_group_get_data
  \ physics_particle_group_get_mass physics_particle_group_get_inertia physics_particle_group_get_centre_x
  \ physics_particle_group_get_centre_y physics_particle_group_get_vel_x physics_particle_group_get_vel_y
  \ physics_particle_group_get_ang_vel physics_particle_group_get_x physics_particle_group_get_y
  \ physics_particle_group_get_angle physics_particle_set_group_flags physics_particle_get_group_flags
  \ physics_particle_get_max_count physics_particle_get_radius physics_particle_get_density physics_particle_get_damping
  \ physics_particle_get_gravity_scale physics_particle_set_max_count physics_particle_set_radius physics_particle_set_density
  \ physics_particle_set_damping physics_particle_set_gravity_scale
  \ cloud_file_save cloud_string_save cloud_synchronise
  \ device_get_tilt_x device_get_tilt_y device_get_tilt_z device_is_keypad_open device_mouse_check_button
  \ device_mouse_check_button_pressed device_mouse_check_button_released device_mouse_x
  \ device_mouse_y device_mouse_raw_x device_mouse_raw_y
  \ device_mouse_x_to_gui device_mouse_y_to_gui iap_activate
  \ iap_status iap_enumerate_products iap_restore_all iap_acquire
  \ iap_consume iap_product_details iap_purchase_details gamepad_is_supported
  \ gamepad_get_device_count gamepad_is_connected gamepad_get_description gamepad_get_button_threshold gamepad_set_button_threshold
  \ gamepad_get_axis_deadzone gamepad_set_axis_deadzone gamepad_button_count gamepad_button_check gamepad_button_check_pressed
  \ gamepad_button_check_released gamepad_button_value gamepad_axis_count gamepad_axis_value gamepad_set_vibration gamepad_set_color
  \ gamepad_set_colour gamepad_set_color os_is_paused window_has_focus code_is_compiled http_get http_get_file http_post_string
  \ http_request json_encode json_decode zip_unzip
  \ base64_encode base64_decode md5_string_unicode md5_string_utf8 md5_file os_is_network_connected
  \ sha1_string_unicode sha1_string_utf8 sha1_file os_powersave_enable
  \ analytics_event analytics_event_ext
  \ win8_livetile_tile_notification win8_livetile_tile_clear
  \ win8_livetile_badge_notification win8_livetile_badge_clear win8_livetile_queue_enable
  \ win8_secondarytile_pin win8_secondarytile_badge_notification win8_secondarytile_delete
  \ win8_livetile_notification_begin win8_livetile_notification_secondary_begin win8_livetile_notification_expiry
  \ win8_livetile_notification_tag win8_livetile_notification_text_add win8_livetile_notification_image_add
  \ win8_livetile_notification_end win8_appbar_enable win8_appbar_add_element
  \ win8_appbar_remove_element win8_settingscharm_add_entry win8_settingscharm_add_html_entry win8_settingscharm_add_xaml_entry
  \ win8_settingscharm_set_xaml_property win8_settingscharm_get_xaml_property win8_settingscharm_remove_entry
  \ win8_share_image win8_share_screenshot win8_share_file win8_share_url win8_share_text
  \ win8_search_enable win8_search_disable win8_search_add_suggestions
  \ win8_device_touchscreen_available win8_license_initialize_sandbox
  \ win8_license_trial_version winphone_license_trial_version winphone_tile_title winphone_tile_count
  \ winphone_tile_back_title winphone_tile_back_content winphone_tile_back_content_wide winphone_tile_front_image winphone_tile_front_image_small
  \ winphone_tile_front_image_wide winphone_tile_back_image winphone_tile_back_image_wide
  \ winphone_tile_background_colour winphone_tile_background_color winphone_tile_icon_image winphone_tile_small_icon_image winphone_tile_wide_content
  \ winphone_tile_cycle_images winphone_tile_small_background_image
  \ network_create_socket network_create_socket_ext network_create_server network_create_server_raw network_connect
  \ network_connect_raw network_send_packet network_send_raw network_send_broadcast network_send_udp network_send_udp_raw
  \ network_set_timeout network_set_config network_resolve network_destroy gml_release_mode
  \ gml_pragma steam_activate_overlay steam_is_overlay_enabled steam_is_overlay_activated steam_get_persona_name steam_initialised
  \ steam_is_cloud_enabled_for_app steam_is_cloud_enabled_for_account steam_file_persisted steam_get_quota_total steam_get_quota_free
  \ steam_file_write steam_file_write_file steam_file_read steam_file_delete steam_file_exists
  \ steam_file_size steam_file_share steam_is_screenshot_requested steam_send_screenshot steam_is_user_logged_on steam_get_user_steam_id
  \ steam_user_owns_dlc steam_user_installed_dlc steam_set_achievement steam_get_achievement steam_clear_achievement
  \ steam_set_stat_int steam_set_stat_float steam_set_stat_avg_rate steam_get_stat_int steam_get_stat_float steam_get_stat_avg_rate
  \ steam_reset_all_stats steam_reset_all_stats_achievements steam_stats_ready steam_create_leaderboard steam_upload_score
  \ steam_upload_score_ext steam_download_scores_around_user steam_download_scores steam_download_friends_scores steam_upload_score_buffer
  \ steam_upload_score_buffer_ext steam_current_game_language steam_available_languages steam_activate_overlay_browser steam_activate_overlay_user
  \ steam_activate_overlay_store steam_get_user_persona_name
  \ steam_get_app_id steam_get_user_account_id steam_ugc_download
  \ steam_ugc_create_item steam_ugc_start_item_update steam_ugc_set_item_title steam_ugc_set_item_description
  \ steam_ugc_set_item_visibility steam_ugc_set_item_tags steam_ugc_set_item_content steam_ugc_set_item_preview
  \ steam_ugc_submit_item_update steam_ugc_get_item_update_progress
  \ steam_ugc_subscribe_item steam_ugc_unsubscribe_item steam_ugc_num_subscribed_items steam_ugc_get_subscribed_items
  \ steam_ugc_get_item_install_info steam_ugc_get_item_update_info steam_ugc_request_item_details
  \ steam_ugc_create_query_user steam_ugc_create_query_user_ex steam_ugc_create_query_all steam_ugc_create_query_all_ex
  \ steam_ugc_query_set_cloud_filename_filter steam_ugc_query_set_match_any_tag steam_ugc_query_set_search_text
  \ steam_ugc_query_set_ranked_by_trend_days steam_ugc_query_add_required_tag
  \ steam_ugc_query_add_excluded_tag steam_ugc_query_set_return_long_description steam_ugc_query_set_return_total_only
  \ steam_ugc_query_set_allow_cached_response steam_ugc_send_query
  \ vertex_format_begin vertex_format_end vertex_format_delete vertex_format_add_position vertex_format_add_position_3d
  \ vertex_format_add_colour vertex_format_add_color vertex_format_add_normal vertex_format_add_textcoord vertex_format_add_custom
  \ vertex_create_buffer vertex_create_buffer_ext vertex_delete_buffer vertex_begin vertex_end vertex_position vertex_position_3d vertex_colour
  \ vertex_color vertex_argb vertex_texcoord vertex_normal vertex_float1 vertex_float2 vertex_float3 vertex_float4 vertex_ubyte4 vertex_submit
  \ vertex_freeze vertex_get_number vertex_get_buffer_size vertex_create_buffer_from_buffer vertex_create_buffer_from_buffer_ext
  \ push_local_notification push_get_first_local_notification push_get_next_local_notification push_cancel_local_notification


"""
""" constants
""" 
syntax keyword _colorConst c_aqua c_black c_blue c_dkgray c_fuchsia c_gray c_white c_green c_lime c_ltgray c_maroon c_navy c_olive c_orange
	\ c_purple c_red c_silver c_teal c_yellow

syntax keyword _blendConst bm_add 
	\ bm_dest_alpha bm_dest_color bm_dest_colour bm_inv_dest_colour bm_inv_dest_color bm_inv_dest_alpha bm_inv_src_color bm_inv_src_colour
	\ bm_inv_src_alpha bm_max bm_normal bm_one bm_src_alpha bm_src_alpha_sat bm_src_color bm_src_colour bm_subtract bm_zero

syntax keyword _bufferConst buffer_fixed
	\ buffer_grow buffer_wrap buffer_fast buffer_vbuffer
	\ buffer_u8	buffer_s8 buffer_u16 buffer_s16 buffer_u32 buffer_s32 buffer_u64 buffer_f16 buffer_f32 buffer_f64 buffer_bool buffer_string buffer_text
	\ buffer_network buffer_seek_start buffer_seek_relative buffer_seek_end
	\ buffer_generalerror buffer_outofspace buffer_outofbounds buffer_invalidtype 

syntax keyword _otherConst debug_mode infinity NaN self other noone all undefined pointer_null pointer_invalid pi GM_build_date GM_version 
	\ timezone_local timezone_utc path_action_stop path_action_restart path_action_continue path_action_reverse
	\ ev_create ev_destroy ev_step ev_alarm ev_keyboard ev_mouse ev_collision ev_other ev_draw ev_draw_begin ev_draw_end ev_draw_pre ev_draw_post 
	\ ev_keypress ev_keyrelease ev_trigger ev_left_button ev_right_button ev_middle_button ev_no_button ev_left_press ev_right_press ev_middle_press 
	\ ev_left_release ev_right_release ev_middle_release ev_mouse_enter ev_mouse_leave ev_mouse_wheel_up ev_mouse_wheel_down ev_global_left_button 
	\ ev_global_right_button ev_global_middle_button ev_global_left_press ev_global_right_press ev_global_middle_press ev_global_left_release 
	\ ev_global_right_release ev_global_middle_release 
	\ ev_outside ev_boundary ev_game_start ev_game_end ev_room_start ev_room_end ev_no_more_lives ev_animation_end ev_end_of_path 
	\ ev_no_more_health ev_close_button ev_user0 ev_user1 ev_user2 ev_user3 ev_user4 ev_user5 ev_user6 ev_user7 ev_user8 ev_user9 ev_user10 ev_user11 
	\ ev_user12 ev_user13 ev_user14 ev_user15 ev_step_normal ev_step_begin ev_step_end ev_gui ev_gui_begin ev_gui_end 
	\ vk_nokey vk_anykey vk_enter vk_return vk_shift vk_control vk_alt vk_escape vk_space vk_backspace vk_tab vk_pause vk_printscreen vk_left 
	\ vk_right vk_up vk_down vk_home vk_end vk_delete vk_insert vk_pageup vk_pagedown vk_f1 vk_f2 vk_f3 vk_f4 vk_f5 vk_f6 vk_f7 vk_f8 vk_f9 vk_f10 
	\ vk_f11 vk_f12 vk_numpad0 vk_numpad1 vk_numpad2 vk_numpad3 vk_numpad4 vk_numpad5 vk_numpad6 vk_numpad7 vk_numpad8 vk_numpad9 vk_divide vk_multiply 
	\ vk_subtract vk_add vk_decimal vk_lshift vk_lcontrol vk_lalt vk_rshift vk_rcontrol vk_ralt 
	\ mb_any mb_none mb_left mb_right mb_middle
	\ fa_left fa_center fa_right fa_top fa_middle fa_bottom 
	\ pr_pointlist pr_linelist pr_linestrip pr_trianglelist pr_trianglestrip pr_trianglefan 
	\ audio_falloff_none audio_falloff_inverse_distance audio_falloff_inverse_distance_clamped audio_falloff_linear_distance 
	\ audio_falloff_linear_distance_clamped audio_falloff_exponent_distance audio_falloff_exponent_distance_clamped 
	\ audio_old_system audio_new_system audio_mono audio_stereo audio_3d 
	\ vbm_fast vbm_compatible vbm_most_compatible 
	\ cr_default cr_none cr_arrow cr_cross cr_beam cr_size_nesw cr_size_ns cr_size_nwse cr_size_we cr_uparrow cr_hourglass cr_drag 
	\ cr_appstart cr_handpoint cr_size_all 
	\ asset_object asset_unknown asset_sprite asset_sound asset_room asset_background asset_path asset_script asset_font asset_timeline 
	\ fa_readonly fa_hidden fa_sysfile fa_volumeid fa_directory fa_archive 
	\ ds_type_map ds_type_list ds_type_stack ds_type_queue ds_type_grid ds_type_priority 
	\ ef_explosion ef_ring ef_ellipse ef_firework ef_smoke ef_smokeup ef_star ef_spark ef_flare ef_cloud ef_rain ef_snow 
	\ pt_shape_pixel pt_shape_disk pt_shape_square pt_shape_line pt_shape_star pt_shape_circle pt_shape_ring pt_shape_sphere pt_shape_flare pt_shape_spark 
	\ pt_shape_explosion pt_shape_cloud pt_shape_smoke pt_shape_snow 
	\ ps_distr_linear ps_distr_gaussian ps_distr_invgaussian ps_shape_rectangle ps_shape_ellipse ps_shape_diamond ps_shape_line 
	\ ty_real ty_string dll_cdecl dll_stdcall 
	\ matrix_view matrix_projection matrix_world 
	\ os_win32 os_windows os_macosx os_psp os_ios os_android os_symbian os_linux os_unknown os_winphone os_tizen os_win8native os_wiiu os_3ds 
	\ os_psvita os_bb10 os_ps4 os_xboxone os_ps3 os_xbox360 os_uwp 
	\ browser_not_a_browser browser_unknown browser_ie browser_firefox browser_chrome browser_safari browser_safari_mobile browser_opera browser_tizen 
	\ browser_windows_store browser_ie_mobile 
	\ device_ios_unknown device_ios_iphone device_ios_iphone_retina device_ios_ipad device_ios_ipad_retina device_ios_iphone5 device_ios_iphone6 
	\ device_ios_iphone6plus device_ios_iphone6s device_ios_iphone6splus 
	\ device_emulator device_tablet 
	\ display_landscape display_landscape_flipped display_portrait display_portrait_flipped 
	\ leaderboard_type_number leaderboard_type_time_mins_secs 
	\ iap_ev_storeload iap_ev_product iap_ev_purchase iap_ev_consume iap_ev_restore iap_storeload_ok iap_storeload_failed 
	\ iap_status_uninitialised iap_status_unavailable iap_status_loading iap_status_available iap_status_processing iap_status_restoring 
	\ iap_failed iap_unavailable iap_available iap_purchased iap_canceled iap_refunded 
	\ fb_login_default fb_login_fallback_to_webview fb_login_no_fallback_to_webview fb_login_forcing_webview fb_login_use_system_account 
	\ fb_login_forcing_safari 
	\ phy_joint_anchor_1_x phy_joint_anchor_1_y phy_joint_anchor_2_x phy_joint_anchor_2_y phy_joint_reaction_force_x 
	\ phy_joint_reaction_force_y phy_joint_reaction_torque phy_joint_motor_speed phy_joint_angle phy_joint_motor_torque phy_joint_max_motor_torque 
	\ phy_joint_translation phy_joint_speed phy_joint_motor_force phy_joint_max_motor_force phy_joint_length_1 phy_joint_length_2 
	\ phy_joint_damping_ratio phy_joint_frequency phy_joint_lower_angle_limit phy_joint_upper_angle_limit phy_joint_angle_limits 
	\ phy_joint_max_length phy_joint_max_torque phy_joint_max_force 
	\ phy_debug_render_aabb phy_debug_render_collision_pairs phy_debug_render_coms phy_debug_render_core_shapes phy_debug_render_joints 
	\ phy_debug_render_obb phy_debug_render_shapes 
	\ phy_particle_flag_water phy_particle_flag_zombie phy_particle_flag_wall phy_particle_flag_spring phy_particle_flag_elastic 
	\ phy_particle_flag_viscous phy_particle_flag_powder phy_particle_flag_tensile phy_particle_flag_colourmixing phy_particle_flag_colormixing 
	\ phy_particle_group_flag_solid phy_particle_group_flag_rigid 
	\ phy_particle_data_flag_typeflags phy_particle_data_flag_position phy_particle_data_flag_velocity phy_particle_data_flag_colour 
	\ phy_particle_data_flag_color phy_particle_data_flag_category 
	\ achievement_our_info achievement_friends_info achievement_leaderboard_info achievement_achievement_info achievement_filter_all_players 
	\ achievement_filter_friends_only achievement_filter_favorites_only 
	\ achievement_type_achievement_challenge achievement_type_score_challenge achievement_pic_loaded 
	\ achievement_show_ui achievement_show_profile achievement_show_leaderboard achievement_show_achievement achievement_show_bank 
	\ achievement_show_friend_picker achievement_show_purchase_prompt 
	\ network_socket_tcp network_socket_udp network_socket_bluetooth network_type_connect network_type_disconnect network_type_data 
	\ network_type_non_blocking_connect 
	\ network_config_connect_timeout network_config_use_non_blocking_socket network_config_enable_reliable_udp network_config_disable_reliable_udp 
	\ gp_face1 gp_face2 gp_face3 gp_face4 gp_shoulderl gp_shoulderr gp_shoulderlb gp_shoulderrb gp_select gp_start gp_stickl gp_stickr gp_padu gp_padd 
	\ gp_padl gp_padr gp_axislh gp_axislv gp_axisrh gp_axisrv 
	\ vertex_usage_position vertex_usage_colour vertex_usage_color vertex_usage_normal vertex_usage_textcoord vertex_usage_blendweight 
	\ vertex_usage_blendindices vertex_usage_psize vertex_usage_tangent vertex_usage_binormal vertex_usage_fog vertex_usage_depth vertex_usage_sample 
	\ vertex_type_float1 vertex_type_float2 vertex_type_float3 vertex_type_float4 vertex_type_colour vertex_type_color vertex_type_ubyte4 

syntax keyword _steamConsts ov_friends ov_community ov_players ov_settings ov_gamegroup ov_achievements lb_sort_none lb_sort_ascending lb_sort_descending 
	\ lb_disp_none lb_disp_numeric lb_disp_time_sec lb_disp_time_ms 
	\ugc_result_success ugc_filetype_community ugc_filetype_microtrans  ugc_visibility_public ugc_visibility_friends_only ugc_visibility_private 

syntax keyword _ugcQueryConsts ugc_query_RankedByVote ugc_query_RankedByPublicationDate ugc_query_AcceptedForGameRankedByAcceptanceDate 
	\ ugc_query_RankedByTrend ugc_query_FavoritedByFriendsRankedByPublicationDate ugc_query_CreatedByFriendsRankedByPublicationDate 
	\ ugc_query_RankedByNumTimesReported ugc_query_CreatedByFollowedUsersRankedByPublicationDate ugc_query_NotYetRated ugc_query_RankedByTotalVotesAsc 
	\ ugc_query_RankedByVotesUp ugc_query_RankedByTextSearch 
	\ ugc_sortorder_CreationOrderDesc ugc_sortorder_CreationOrderAsc ugc_sortorder_TitleAsc 
	\ ugc_sortorder_LastUpdatedDesc 
	\ ugc_sortorder_SubscriptionDateDesc ugc_sortorder_VoteScoreDesc ugc_sortorder_ForModeration 
	\ ugc_list_Published ugc_list_VotedOn ugc_list_VotedUp ugc_list_VotedDown ugc_list_WillVoteLater ugc_list_Favorited ugc_list_Subscribed 
	\ ugc_list_UsedOrPlayed ugc_list_Followed 
	\ ugc_match_Items ugc_match_Items_Mtx ugc_match_Items_ReadyToUse ugc_match_Collections ugc_match_Artwork ugc_match_Videos ugc_match_Screenshots 
	\ ugc_match_AllGuides ugc_match_WebGuides ugc_match_IntegratedGuides ugc_match_UsableInGame ugc_match_ControllerBindings 

"""
""" built-in variables 
""" 
syntax keyword _builtInVar argument argument_count async_load event_data score health lives
  \ argument_relative
  \ x y xprevious yprevious xstart ystart hspeed vspeed direction speed
  \ friction gravity gravity_direction in_collision_tree
  \ path_index path_position path_positionprevious path_speed path_scale path_orientation path_endaction
  \ object_index id solid persistent mask_index instance_count instance_id
  \ room_speed fps fps_real current_time current_year 
  \ current_month current_day current_weekday current_hour current_minute current_second 
  \ timeline_index timeline_position timeline_speed timeline_running timeline_loop
  \ alarm
  \ room room_first room_last room_width room_height room_caption room_persistent
  \ event_type event_number event_object event_action
  \ application_surface
  \ keyboard_key keyboard_lastkey keyboard_lastchar keyboard_string
  \ mouse_x mouse_y mouse_button mouse_lastbutton cursor_sprite
  \ visible sprite_index sprite_width  sprite_height  sprite_xoffset  sprite_yoffset  image_number  image_index image_speed depth image_xscale 
  \ image_yscale image_angle image_alpha image_blend bbox_left  bbox_right  bbox_top  bbox_bottom  
  \ background_colour background_color background_showcolour background_showcolor 
  \ view_enabled view_current view_visible view_xport view_yport view_wport view_hport view_surface_id
  \ game_id game_display_name game_project_name game_save_id working_directory temp_directory program_directory 
  \ os_type os_device os_browser os_version 
  \ display_aa async_load delta_time webgl_enabled
  \ iap_data
  \ phy_rotation phy_position_x phy_position_y phy_angular_velocity phy_linear_velocity_x phy_linear_velocity_y phy_speed_x phy_speed_y 
  \ phy_speed phy_angular_damping phy_linear_damping phy_bullet
  \ phy_fixed_rotation phy_active phy_mass phy_inertia phy_com_x phy_com_y phy_dynamic 
  \ phy_kinematic phy_sleeping phy_collision_points phy_collision_x phy_collision_y phy_col_normal_x phy_col_normal_y 
  \ phy_position_xprevious phy_position_yprevious 

syntax match _builtInVar '\v<argument\ze\[([0-9]|1[0-5]|(\S+\s*)+)\]'
syntax match _builtInVar '\v<argument(1[0-5]|[0-9])>'


" strings
syntax match _specialStr display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syntax region _string start='"' end='"' contains=_specialStr

" numbers
syntax match _number	display transparent "\<\d\|\.\d" contains=_number,_float						| " Number
syntax match _number	display contained "\i\@<![-+]\?\d\+\%([eE][+-]\?\d\+\)\?"					| " Integer
syntax match _number	display contained "0x\x\+\>"															| " Hex
syntax match _float display contained "\i\@<![-+]\?\d*\.\@<!\.\d\+\%([eE][+-]\?\d\+\)\?"		| " Float

" accessors
syntax match _accessor '\v\[\zs\s*\|'  | " [| ]
syntax match _accessor '\v\[\zs\s*\?'  | " [? ]
syntax match _accessor '\v\[\zs\s*\#'  | " [# ]
syntax match _accessor '\v\[\zs\s*\@'  | " [@ ]

" operators
syntax keyword _divmode div mod    | " mod and div operators
syntax keyword _boolOp not or xor and  | " not , or, xor, and

" arithmetic operators
syntax match _operator "\v\+"
syntax match _operator "\v-"
syntax match _operator "\v\%"
syntax match _operator "\v([^\/]|^)\zs\*\ze([^\/]|$)"
syntax match _operator "\v/@<!//@!"

" assignment operators
syntax match _operator "\v\="
syntax match _operator "\v\+\="
syntax match _operator "\v\-\="
syntax match _operator "\v\*\="
syntax match _operator "\v/\="
syntax match _operator "\v\-\-"
syntax match _operator "\v\+\+"

" unary operators
syntax match _operator '\v\!\ze([^=]|$)' 
syntax match _operator '\v\~'             

" bitwise operators
syntax match _operator '\v\|'
syntax match _operator '\v\&'
syntax match _operator '\v\^'
syntax match _operator '\v\<\<'
syntax match _operator '\v\>\>'

" comparison operators
syntax match _operator '\v\<'
syntax match _operator '\v\<\='
syntax match _operator '\v\>'
syntax match _operator '\v\>\='
syntax match _operator '\v\!\='
syntax match _operator '\v\=\='

" boolean operators
syntax match _operator '\v\&\&'
syntax match _operator '\v\|\|'
syntax match _operator '\v\^\^'

" comments
syntax keyword _todo contained TODO NOTE FIXME FIX WARNING XXX TBD LOOK_AT_THIS_SHIT 																| " todo comments
syntax match _docComment contained "@\(param\|argument\|arg\|parameter\|func\|function\|desc\|description\|return\|returns\=\)\>"	| " DOC comments 
syntax match _docComment contained "@\(self\|hide\|ignore\|context\|pure\|depercated\)\>" 														| " Feather ONLY
syntax region _lineComment start='\v((\/)@<!\/{2}(\/)@!|\/{3,})' end='\v$' keepend contains=_todo,_docComment,@Spell						| " line comment
syntax region _blockComment start="/\*" end="\*/" contains=_todo,_docComment,@Spell fold extend  												| " block comment
syntax region _regionComment contained start=".\+" end="\v$" contains=_todo 

" regions
syntax match _regS "^\s*\%(#region\|#endregion\)\>" nextgroup=_regionComment skipwhite
syntax region _region start="^\s*#\s*region" end="^\s*#\s*endregion" transparent fold

" code blocks
syntax match _bracesHighlight "\v\{"
syntax match _bracesHighlight "\v\}"
syntax region _parens start='(' end=')' transparent extend
syntax region _braces start='\v\{' end='\v\}' transparent extend fold


"""
""" highlight
"""
hi def link _label 						Label
hi def link _cond							Conditional
hi def link _repeat						Repeat
hi def link _exc 							Exception
hi def link _statement 					Statement
hi def link _structure 					Structure
hi def link _other 						Special

hi def link _type 						Type
hi def link _bool							Boolean
hi def link _macro 						Macro

hi def link _assetsInfo					_assetsManagement
hi def link _animcurve					_assetsManagement
hi def link _sprites 					_assetsManagement
hi def link _tilesets 					_assetsManagement
hi def link _audio	 					_assetsManagement
hi def link _paths	 					_assetsManagement
hi def link _scripts	 					_assetsManagement
hi def link _shaders	 					_assetsManagement
hi def link _seq		 					_assetsManagement
hi def link _fonts	 					_assetsManagement
hi def link _objs		 					_assetsManagement
hi def link _instances					_assetsManagement
hi def link _rooms						_assetsManagement
hi def link _extensions 				_assetsManagement

hi def link _moveAndCol 				_func
hi def link _variableFunc				_func
hi def link _gameControl 				_func
hi def link _assetsManagement			_func
hi def link _math                   _func
hi def link _strFunc                _func
hi def link _date                   _func
hi def link _otherFunc              _func
hi def link _funcCall 					_func
hi def link _func 						Function

hi def link _colorConst					_const
hi def link _blendConst					_const
hi def link _bufferConst				_const
hi def link _otherConst					_const
hi def link _steamConsts				_const
hi def link _ugcQueryConsts			_const
hi def link _const 						Constant

hi def link _global						Constant
hi def link _globalVar              SpecialChar

hi def link _builtInVar					Identifier

hi def link _string						String
hi def link _specialStr      			SpecialChar

hi def link _divmode						Special
hi def link _boolOp 						Special
hi def link _accessor					Special
hi def link _operator 					Special
hi def link _number						Number
hi def link _float						Float

hi def link _todo							Todo
hi def link _docComment					SpecialChar
hi def link _lineComment				Comment
hi def link _blockComment				Comment
hi def link _regionComment          Comment

hi def link _bracesHighlight        SpecialChar

hi def link _regS							PreProc

let b:current_syntax = "gml"

