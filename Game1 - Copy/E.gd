extends CharacterBody2D
var eHP = 20
var speed = 200


var player = preload("res://Player.tscn")

@onready var nav_agent:= $NavigationAgent2D as NavigationAgent2D

func _physics_process(delta: float) -> void:
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()
	
func makepath() -> void:
	nav_agent.target_position = Global.pos
	
func _process(delta):
	position = position.move_toward(Global.charpos, delta*200)
	if eHP == 0 or eHP < 0:
		queue_free()
		Global.Esd -= 1
		Global.score += 10

func hit():
	eHP -= 5
	
func _on_area_2d_body_entered(body):
	if body.has_method("attack"):
		body.attack()
	
	pass
	

func _on_timer_timeout():
	makepath()
