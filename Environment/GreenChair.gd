extends StaticBody2D

func _on_BronzeMechanism_area_entered(area):
	queue_free()
