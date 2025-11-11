extends Node2D

@export var player_cont : PlayerController
@onready var animation_player = %PlayerAnimations
@onready var sprite = %PlayerSprites

func _process(_float) -> void:
	if player_cont.direction > 0:
		sprite.flip_h = false
	elif player_cont.direction < 0:
		sprite.flip_h = true
	
	if abs(player_cont.velocity.y) > 0:
		animation_player.play("jump")
	elif abs(player_cont.velocity.x) > 0.0:
		animation_player.play("walk")
	else:
		animation_player.play("idle")
	
	
	
