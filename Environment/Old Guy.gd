extends KinematicBody2D

onready var timer = $Timer
onready var animationPlayer = $AnimationPlayer
var walkout = false

func _ready():
	timer.wait_time = 8
	timer.start()
	
func _on_Timer_timeout():
	walkout = true

func _physics_process(delta):
	if walkout == true:
		animationPlayer.play("WalkUp")
		global_position.y -= 0.5
		if global_position.y <=16:
			queue_free()
