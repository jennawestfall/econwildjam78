extends CharacterBody2D

func _physics_process(delta: float) -> void:
	var target = Vector2.ZERO
	var speed = 0
	
	target = get_global_mouse_position()
	if Input.is_mouse_button_pressed(1): # when click Left mouse button
		speed = 600
		velocity = global_position.direction_to(target) * speed
		if global_position.distance_to(target) > 5:
			move_and_slide()
			get_node("HappyBoo").play_walk_animation()
	else:
		get_node("HappyBoo").play_idle_animation()
