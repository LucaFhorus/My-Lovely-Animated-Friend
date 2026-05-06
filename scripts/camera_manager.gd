extends Node


@onready var front_camera = $"../Cameras/FrontCamera"
@onready var back_camera = $"../Cameras/BackCamera"
@onready var angled_camera_right = $"../Cameras/AngledCameraRight"
@onready var angled_camera_left = $"../Cameras/AngledCameraLeft"

@onready var cameras = [
	front_camera, 
	back_camera, 
	angled_camera_right, 
	angled_camera_left]

var current_camera : int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_test()
	if current_camera == 4:
		current_camera = 0
	if current_camera == -4:
		current_camera = 0
	cameras[current_camera].current = true

func _test():
	if Input.is_action_just_pressed("action"):
		print("fuck me")
		current_camera += 1
	if Input.is_action_just_pressed("negative_action"):
		current_camera -= 1
