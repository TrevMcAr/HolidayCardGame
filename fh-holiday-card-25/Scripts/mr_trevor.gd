extends Area2D

@onready var player = $"../Player"

func _physics_process(delta: float) -> void:
	var overlapping = self.get_overlapping_bodies()
	if Input.is_action_just_pressed("action_key") and player in overlapping:
		$AudioStreamPlayer2D.play()
