extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	print(event);
	if (event is InputEventMouseMotion):
		print (event.pressure);
		get_node("Label").text = str(event.pressure);
	if (event is InputEventScreenDrag):
		get_node("Label").text = event.to_string()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
