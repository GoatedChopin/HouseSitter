extends KinematicBody2D

const ghost_speed = 30
var ghost_acceleration = 0
var ghost_velocity = Vector2.ZERO
var player_direction = Vector2.ZERO
var chase = false

func _ready():
	print(self.global_position)
	
func _physics_process(delta):
	if chase:
		if ghost_acceleration < 60:
			ghost_acceleration += 1
		ChasePlayer(delta)
	
	
func ChasePlayer(delta):
	var player_position = get_node("../Player").global_position
	player_direction = player_position - self.global_position
	player_direction = player_direction.normalized()
	ghost_velocity = ghost_velocity.move_toward(player_direction * ghost_speed, ghost_acceleration * delta)
	move_and_slide(ghost_velocity)


func _on_Ghost_Door_area_entered(area):
	print('Ghost Door working')
	self.visible = true
	$Area2D/CollisionShape2D.disabled = false
	chase = true
