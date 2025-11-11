extends Area2D

@onready var player = $"../Player"
@onready var exit = $respawn.global_position

func _physics_process(delta: float) -> void:
	var overlapping = self.get_overlapping_bodies()
	if player in overlapping:
		player.global_position = exit
