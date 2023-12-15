extends Sprite2D

@onready var player = get_parent().getnode("Player")

func _ready():
	pass

func _process(delta):
	position = position.move_toward(player.position, delta*200)
