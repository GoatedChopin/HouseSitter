extends AudioStreamPlayer2D

var music_playing = true

func _on_Ghost_Door_area_entered(area):
	play()

func _on_GhostPlayer_finished():
	if music_playing:
		play()
