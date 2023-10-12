extends CanvasLayer

signal start

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Start_Button.visible and Input.is_action_pressed("Start"):
		start_game()
	pass

func start_game():
	$Start_Button.hide()
	$Label.hide()
	start.emit()

func _on_start_button_pressed():
	start_game()
	pass # Replace with function body.
