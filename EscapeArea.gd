extends CollisionShape2D


func _on_BronzeMechanism_area_entered(area):
	self.set_deferred('disabled',false)
