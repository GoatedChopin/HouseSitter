extends AudioStreamPlayer

var play_music = true
var loop = 'Explore'

func play_loop(loop):
	if play_music:
		play(0)

func _on_AudioStreamPlayer_finished():
	play_loop(loop)


func _on_Ghost_Door_area_entered(area):
	queue_free()
