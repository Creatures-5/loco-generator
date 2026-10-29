extends Control

signal bogey_update(value, bogey)

@onready var slider = get_node("HSlider")

func _ready() -> void:
	pass # Replace with function body.

func _slider_value_changed(value: float) -> void:
	bogey_update.emit(slider.value, get_node("."))
