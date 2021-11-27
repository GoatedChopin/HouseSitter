extends StaticBody2D

onready var player_unlocks = get_node("../Player").player_unlocks

func _on_ready():
	self.visible = false
	$CollisionShape2D.set_deferred("disabled", true)

func _on_BronzeMechanism_area_entered(_area):
	self.visible = true
	$CollisionShape2D.set_deferred("disabled", false)

func _on_Timer_timeout():
	player_unlocks = get_node("../Player").player_unlocks

func _on_Purple_Unlock_area_entered(area):
	var player_unlocks = get_node("../Player").player_unlocks
	if player_unlocks.has('Purple'):
		queue_free()
