extends Node2D

var LoseState = preload("res://LoseState.tscn")
var WinState = preload("res://WinState.tscn")
var dialogue = preload("res://Popup.tscn")
onready var TextureRect = $TextureRect
onready var YSort = $YSort

func _on_Area2D_area_entered(_area):
	TextureRect.queue_free()
	YSort.queue_free()
	add_child(LoseState.instance())


func _on_Escape_area_entered(area):
	TextureRect.queue_free()
	YSort.queue_free()
	add_child(WinState.instance())
	
func _ready():
	add_child(dialogue.instance())
