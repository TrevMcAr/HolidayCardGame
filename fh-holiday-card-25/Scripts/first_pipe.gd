extends Area2D

@onready var player = $"../Player"
@onready var exit = $pipe_exit.global_position

func _physics_process(delta: float) -> void:
	var overlapping = self.get_overlapping_bodies()
	if Input.is_action_just_pressed("crouch") and player in overlapping:
		player.global_position = exit
