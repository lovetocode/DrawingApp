extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	OS.set_low_processor_usage_mode(true)
	OS.set_window_title("Express Yourself")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
