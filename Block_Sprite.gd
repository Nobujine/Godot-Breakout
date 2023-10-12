extends ColorRect

@export var rotation_delta = 10
@export var breath_duration = 1
var tween 

# Called when the node enters the scene tree for the first time.
func _ready():
	pivot_offset = size / 2
	tween = get_tree().create_tween()
	#self.scale = Vector2(1-size_delta, 1-size_delta)
	#tween.tween_property(self, "scale", Vector2(1+size_delta, 1+size_delta), breath_duration)
	#tween.tween_property(self, "scale", Vector2(1-size_delta, 1-size_delta), breath_duration)
	tween.tween_property(self, "rotation", deg_to_rad(rotation_delta), breath_duration).set_trans(Tween.TRANS_CUBIC)
	tween.tween_property(self, "rotation", deg_to_rad(-rotation_delta), breath_duration).set_trans(Tween.TRANS_CUBIC)
	tween.set_loops()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
