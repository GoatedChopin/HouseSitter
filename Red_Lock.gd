extends StaticBody2D

onready var player_unlocks = get_node("../Player").player_unlocks

func _on_ready():
	self.visible = false

func _on_SilverMechanism_area_entered(area):
	self.visible = true

func _on_Timer_timeout():
	player_unlocks = get_node("../Player").player_unlocks

func _on_Red_Unlock_area_entered(area):
	queue_free()
