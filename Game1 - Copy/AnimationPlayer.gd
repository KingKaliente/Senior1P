extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		play("Pwalk")
		
	elif Input.is_action_pressed("ui_left"):
		play_backwards("Pwalk")
	
	elif Input.is_action_pressed("ui_down"):
		play("Pwalk")
		
	elif Input.is_action_pressed("ui_up"):
		play("Pwalk")
	elif Input.is_action_just_pressed("ui_text_backspace"):
		play("Bwalk")
		
	else:
		stop(true)
	#if Input.is_action_just_pressed("ui_left"):
	
