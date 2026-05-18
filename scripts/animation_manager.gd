extends Node

@onready var animation_player = $"../AnimatedFriend/AnimationPlayer"
@onready var animation_array : Array = animation_player.get_animation_list()
var animation_index : int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	change_animation()
	if animation_index == animation_array.size():
		animation_index = 0
	if animation_index == animation_array.size():
		animation_index = 0
	animation_player.play(animation_array[animation_index])


func change_animation():
	if Input.is_action_just_pressed("previous_animation"):
		print("Previous animation")
		animation_index -= 1
	if Input.is_action_just_pressed("next_animation"):
		print("Next animation")
		animation_index += 1
	
