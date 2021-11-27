extends TileMap

func _ready():
	self.visible = true
	self.collision_layer = 1
	
	

func _on_SilverMechanism_area_entered(_area):
	self.clear()
	self.update_bitmask_region()
