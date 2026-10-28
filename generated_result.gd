extends Node2D

var axl_num: int = 3

func _ready() -> void:
	pass

func _draw():
	#wheel generation
	for i in range (0,axl_num):
		var x_pos = i*200 - (axl_num - 1) * 100
		draw_circle(Vector2(x_pos, 0), 100, Color("FFFFFF"))

func _axl_slider_update(value: int) -> void:
	axl_num = value
	queue_redraw()
