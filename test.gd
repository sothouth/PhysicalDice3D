extends Node3D

var l:Vector3=Vector3(-100,-20,-100)
var r:Vector3=Vector3(100,20,100)
const PHYSICAL_DICE_3D = preload("res://physical_dice_3d.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in 10:
		var dice=PHYSICAL_DICE_3D.instantiate()
		dice.linear_velocity=Vector3(randf_range(l.x,r.x),randf_range(l.y,r.y),randf_range(l.z,r.z))
		%Dices.add_child(dice)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
