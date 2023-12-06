extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_sleeping_state_changed():
	if sleeping:
		#Determine the dice points here.
		print(rotation2points())


func rotation2points()->int:
	var points:Array[Node]=%Points.get_children()
	var res:Marker3D=points[0]
	for point:Marker3D in points.slice(1):
		if point.global_position.y>res.global_position.y:
			res=point
	return res.get_index()+1
