extends RigidBody2D

var e = preload("res://e.tscn")


@export var Bdamage: int = 1
@export var BknockBack_dir = Vector2(100,0)
 
@onready var pos = Global.charpos
@onready var sprite = $Sprite2D
var movedir = Vector2()
var velocity = Vector2()
const JUMP_VELOCITY = -400.0

signal enemy_attacked

# Called when the node enters the scene tree for the first time.
func _ready():
	gravity_scale = 0
	
	pass




func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
	
#nc _on_visible_on_screen_enabler_2d_screen_entered():
#if area.is_in_group("Enemy"):
#	area.get_parent().BknockBck = player.Bknockback_dir * 2
#	area.get_parent().health -= Bdamage
#	emit_signal("enemy_attacked")

func CE():
	queue_free()

