extends RigidBody2D

var velocity
@export var ball_speed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	set_linear_damp(-0.1)
	velocity = Vector2(1,1) # x+1 = right, y+1 = down
	velocity = velocity.normalized() * ball_speed
	
	#apply_central_impulse(velocity)
	#state.apply_impulse(velocity)
	#assign impulse

func start():
	$Start_Timer.start()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	apply_central_impulse(velocity)
	pass # Replace with function body.
