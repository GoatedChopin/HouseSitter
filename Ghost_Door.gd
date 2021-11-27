extends Area2D

func _ready():
	self.visible = false

func _on_SilverMechanism_area_entered(area):
	self.visible = true
