extends StaticBody2D

func _on_ready():
	$CollisionShape2D.set_deferred("disabled", true)

func _on_BronzeMechanism_area_entered(_area):
	self.visible = true
	$CollisionShape2D.set_deferred("disabled", false)

func _on_Yellow_Unlock_area_entered(area):
	if get_node("../Player").player_unlocks.has('Yellow') == true:
		queue_free()

