extends Node2D

onready var House = load("res://House.tscn")
onready var ColorRect = get_node("ColorRect")
onready var mainmenu = get_node("ColorRect/MainMenu")

func Start_Game():
	ColorRect.queue_free()
	add_child(House.instance())

func _on_MainMenu_Start_Game():
	Start_Game()
