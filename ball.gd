extends RigidBody2D

var initial_velocity
@export var ball_speed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	set_linear_damp(-0.1)
	initial_velocity = Vector2(1,1) # x+1 = right, y+1 = down
	initial_velocity = initial_velocity.normalized() * ball_speed
	
	#apply_central_impulse(velocity)
	#state.apply_impulse(velocity)
	#assign impulse

func start():
	$Start_Timer.start()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	apply_central_impulse(initial_velocity)
	pass # Replace with function body.
	

func _on_body_entered(body):
	if body.is_in_group('Player'):
		# Calculate new velocity
		var ball_pos = self.position
		var ball_velocity = self.linear_velocity
		var paddle_pos = body.position
		var new_velocity = Vector2(self.position - body.position)
		new_velocity = new_velocity.normalized() * self.linear_velocity.length()
		self.linear_velocity = new_velocity
		print('Paddle hit')
		
	
