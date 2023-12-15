extends CharacterBody2D

var nerf_b = preload("res://nerf_b.tscn")

var health = 10
const SPEED = 300.0
const Bspeed = 800
const JUMP_VELOCITY = -400.0
const fireR = 0.5
var canF = true 

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta):
	Global.pos = self.position
	
	look_at(get_global_mouse_position())
		
	if Input.is_action_pressed("ui_shoot") and canF:
		var instance = nerf_b
		var spawn = instance.instantiate()
		spawn.position = $Marker2D.get_global_position()
		spawn.rotation_degrees = rotation_degrees
		spawn.apply_impulse(Vector2(Bspeed, 0).rotated(rotation), Vector2(Bspeed, 0).rotated(rotation))
		get_tree().get_root().add_child(spawn)
		canF = false
		await get_tree().create_timer(fireR).timeout
		canF = true

	
func _physics_process(delta):
	Global.charpos = self.position
	if Input.is_action_pressed("ui_up"):
		velocity.y = JUMP_VELOCITY
		
	if Input.is_action_pressed("ui_down"):
		velocity.y = JUMP_VELOCITY * -1

	if Input.is_action_pressed("ui_left"):
		velocity.x =  JUMP_VELOCITY
		
	if Input.is_action_pressed("ui_right"):
		velocity.x = JUMP_VELOCITY * -1
		
	else: 
		if velocity.y > 0:
			velocity.y -= 100
			
		if velocity.y < 0:
			velocity.y += 100
		
		if velocity.x > 0:
			velocity.x -= 100
		if velocity.x < 0:
			velocity.x += 100


	move_and_slide()
	
func attack():
	health -= 2
	print(health)
		
		
