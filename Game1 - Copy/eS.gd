extends CollisionShape2D

var eHP = 20
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position.move_toward(Global.charpos, delta*200)
	if eHP == 0:
		queue_free
