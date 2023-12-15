extends Area2D



var eHP = 20
func _ready():
	pass


func _process(delta):
	
	position = position.move_toward(Global.charpos, delta*100)
	if eHP == 0 or eHP < 0:
		queue_free()
		Global.Esd -= 1
		Global.score += 10

func _on_body_entered(body):
	print("done")
	if body.has_method("CE"):
		body.CE()
		eHP -= 5
		print("hit")
	

