extends StaticBody2D

var player_unlocks = []
func _on_ready():
	self.visible = false
	player_unlocks = get_node("../Player").player_unlocks
	
func _on_SilverMechanism_area_entered(area):
	self.visible = true

func _on_Timer_timeout():
	player_unlocks = get_node("../Player").player_unlocks

func _on_Blue_Unlock_area_entered(area):
	if player_unlocks.has('Blue'):
		queue_free()
