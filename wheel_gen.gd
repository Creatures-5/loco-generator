extends Control

var axl_num: int = 3
var wheel_scale: float = 50

func _ready() -> void:
	pass

func _draw():
	#wheel generation
	for i in range (0,axl_num):
		var x_pos = position.x + (i*wheel_scale - (axl_num - 1) * (wheel_scale/2))
		draw_circle(
			Vector2(x_pos, 0), #position
			wheel_scale/2.5, #radius
			Color("FFFFFF"), #color
			false, #fill
			5.0, #line width
			true #anti-aliasing
		)

func _axl_slider_update(value: int) -> void:
	axl_num = value
	queue_redraw()
