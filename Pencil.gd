extends Line2D



# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.connect("timeout", self, "_on_timeout")



func _process(delta):
	if Input.is_action_just_released("Draw"):
		$Timer.stop()

func _on_timeout():
	add_point(get_global_mouse_position())
	$Timer.start()	
