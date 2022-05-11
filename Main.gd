extends Node2D


onready var SaveButton = $SaveButton
onready var ClearnButton = $CleanButton
onready var FDialog = $FileDialog

var save = false


# Called when the node enters the scene tree for the first time.
func _ready():
	SaveButton.connect("pressed", self, "on_save_pressed")
	ClearnButton.connect("pressed", self, "on_clear_pressed")
	FDialog.connect("confirmed", self, "on_confirmed")
	FDialog.connect("visibility_changed", self, "on_visibility_change")
	$SpinBox.value = 5


func on_save_pressed():
	FDialog.show()

func on_clear_pressed():
	for pencil in range(0, $ViewportContainer/Viewport/Canvas.get_child_count()):
		$ViewportContainer/Viewport/Canvas.get_child(pencil).queue_free()
	
func on_confirmed():
	var img = $ViewportContainer/Viewport.get_texture().get_data()
	if FDialog.current_file.get_extension() == "png":
		img.convert(Image.FORMAT_RGBA8)
	img.flip_y()
	img.save_png(FDialog.current_path)

	
func on_visibility_change():
	save = !save
	
	
