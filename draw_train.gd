extends Control

var bogey_num: int = 2
var wheel_scale: float = 50

func _ready() -> void:
	for i in range(0,bogey_num):
		var slider = get_node("BogeyContainer/Bogey"+str(i+1)+"/HSlider")
		slider.value_changed.connect(_axl_slider_update) #connecting sliders to update draw

func _draw():
	#wheel generation
	for i in range (0,bogey_num): #once for each bogey
		var targ_bog = get_node("BogeyContainer/Bogey"+str(i+1))
		var axl_num = get_node("BogeyContainer/Bogey"+str(i+1)+"/HSlider").value
		draw_circle(targ_bog.position,1,Color("FF0000")) #debug markers
		for j in range (0,axl_num): #once for each axle within the bogey
			var x_pos = targ_bog.position.x + (j+0.5) * wheel_scale - (axl_num) * (wheel_scale/2)
			draw_circle(
				Vector2(x_pos, 0), #position
				wheel_scale/2.5, #radius
				Color("FFFFFF"), #color
				false, #fill
				5.0, #line width
				true #anti-aliasing
			)

func _axl_slider_update(value):
	queue_redraw()
