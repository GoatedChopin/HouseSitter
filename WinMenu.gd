extends MarginContainer

onready var selector1 = get_node("HBoxContainer/VBoxContainer/VBoxContainer/HBoxContainer/Label")
onready var selector2 = get_node("HBoxContainer/VBoxContainer/VBoxContainer/HBoxContainer3/Label")

var selection = 0
signal Start_Game

func _process(_delta):
	if Input.is_action_just_pressed('ui_down') and selection < 1:
		selection += 1
	elif Input.is_action_just_pressed('ui_up') and selection > 0:
		selection -= 1
	set_selection(selection)
	handle_selection()

func set_selection(selection):
	selector1.text = ''
	selector2.text = ''
	if selection == 0:
		selector1.text = '>'
	if selection == 1:
		selector2.text = '>'

func handle_selection():
	if Input.is_action_just_pressed('ui_accept') and selection == 0:
		emit_signal('Start_Game')
	elif Input.is_action_just_pressed('ui_accept') and selection == 1:
		get_tree().quit()
		
