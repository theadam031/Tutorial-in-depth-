extends Node2D

var laser_scene: PackedScene = preload("res://Tutorial-in-depth-/scenes/projectiles/laser.tscn")
var granade_scene: PackedScene = preload("res://Tutorial-in-depth-/scenes/projectiles/granade.tscn")

func _on_gate_player_entered_gate(body) -> void:
	print("body entered")
	print(body)


func _on_player_shot_laser(pos, player_direction) -> void:
	var laser = laser_scene.instantiate() as Area2D
	laser.position = pos
	laser.rotation_degrees = rad_to_deg(player_direction.angle()) + 90
	laser.direction = player_direction
	$Projectiles.add_child(laser)


func _on_player_shot_granade(pos, player_direction) -> void:
	var granade = granade_scene.instantiate() as RigidBody2D
	granade.position = pos
	granade.linear_velocity = player_direction * granade.speed
	$Projectiles.add_child(granade)
