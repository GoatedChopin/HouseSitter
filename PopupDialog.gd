extends PopupDialog

onready var tween = $Tween
onready var Text = $RichTextLabel
onready var scrollpct = $RichTextLabel.percent_visible
onready var timer = $Timer

func show_text():
	scrollpct = 0
	tween.interpolate_property(Text, "percent_visible", 0, 1, 30, tween.TRANS_LINEAR, tween.EASE_IN_OUT)
	tween.start()

func _ready():
	popup()
	show_text()


func _on_Tween_tween_all_completed():
	timer.wait_time = 8
	timer.start()

func _on_Timer_timeout():
	get_parent().queue_free()
