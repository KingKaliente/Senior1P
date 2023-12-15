extends Area2D
var E = preload("res://e.tscn")
var sR = 1
var sV = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if sV and Global.Esd <= Global.ELim:
		var instance = E
		var spawn = instance.instantiate()
		spawn.position = $sP.get_global_position()
		get_tree().get_root().add_child(spawn)
		sV = false
		Global.Esd +=1
		await get_tree().create_timer(sR).timeout
		sV = true
#		return Global.esd
