extends CharacterBody2D

signal hit
var screen_size
@export var move_speed = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("right"):
		position.x += move_speed
	if Input.is_action_pressed('left'):
		position.x -= move_speed
	
	position = position.clamp(Vector2.ZERO, screen_size)


func _on_body_entered(body):
	print('Paddle Hit')
	hit.emit()
