extends Node

@export var ball_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_bottom_gameover():
	pass
	$Ball.queue_free() # Delete Ball
	$UI/Start_Button.show()
	$UI/Label.text = 'Try Again?'
	$UI/Label.show()
	

func _on_ui_start():
	var Ball = ball_scene.instantiate()
	Ball.transform = $Ball_Spawn_Point.transform
	add_child(Ball)
	$Ball.start()
	
