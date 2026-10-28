extends Node2D

@export var axl_num: int = 4 
@export var wheel_texture: Texture2D

func _ready() -> void:
	_wheel_gen()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _wheel_gen():
	for i in range (0,axl_num):
		var wheel = Sprite2D.new()
		add_child(wheel)
		wheel.set_texture(wheel_texture)
		wheel.position.x += i*200 - (axl_num - 1) * 100
		wheel.self_modulate = Color(1, 1, 1, 0.5)
