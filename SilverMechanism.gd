extends Area2D

func _ready():
	self.visible = false
	$CollisionShape2D.set_deferred("disabled", true)

func _on_BronzeMechanism_area_entered(area):
	$CollisionShape2D.set_deferred("disabled", false)
	self.visible = true
