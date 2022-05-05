extends KinematicBody2D

export var speed := 500
export var friction := 0.18

var _velocity := Vector2.ZERO


func _physics_process(delta):
	var direction := Vector2(
		Input.get_action_raw_strength("game_right")-Input.get_action_raw_strength("game_left"),
		Input.get_action_raw_strength("game_down")-Input.get_action_raw_strength("game_up")
	)
	if direction.length() > 1.0:
		direction = direction.normalized()
	var target_velocity = direction * speed
	#_velocity = (target_velocity - _velocity)
	print(direction)
	#_velocity = move_and_slide(target_velocity)
	
