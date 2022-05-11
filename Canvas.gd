extends Node2D


func _process(delta):
	var pencil = preload("res://Pencil.tscn").instance()
	if Input.is_action_just_pressed("Draw"):
		var parent = get_parent().get_parent().get_parent()
		pencil.default_color = parent.get_node("ColorPicker").color
		pencil.width = parent.get_node("SpinBox").value
		if parent.save == false:
			add_child(pencil)
	  
	
