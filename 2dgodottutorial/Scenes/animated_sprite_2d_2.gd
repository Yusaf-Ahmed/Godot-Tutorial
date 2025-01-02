extends Node2D # This is the node your script is attached to.

@onready var colorbutton: ColorPickerButton = $"ColorPickerButton"
@onready var colorbutton_2: ColorPickerButton = $"ColorPickerButton2"
@onready var colorbutton_3: ColorPickerButton = $"ColorPickerButton3"

func _ready():
	print("Material:", material)
	print("ColorButton:", colorbutton)
	# Ensure shader material exists
	if not (material is ShaderMaterial):  # Accessing the material directly
		print("Error: Sprite material is not a ShaderMaterial.")
		return



func _on_color_picker_button_color_changed(color: Color):
	if material and material is ShaderMaterial:
		print("Inner Colour Changed")
		material.set_shader_parameter("NEWCOLOR1", color)
		material.resource_changed()  # Notify Godot that the material has changed

func _on_color_picker_button_2_color_changed(color: Color):
	if material and material is ShaderMaterial:
		print("Outer Colour Changed")
		material.set_shader_parameter("NEWCOLOR2", color)
		material.resource_changed()  # Notify Godot that the material has changed

func _on_color_picker_button_3_color_changed(color: Color):
	if material and material is ShaderMaterial:
		print("Bottom Colour Changed")
		material.set_shader_parameter("NEWCOLOR3", color)
		material.resource_changed()  # Notify Godot that the material has changed


#func _on_color_picker_button_color_changed(color: Color):
	#if sprite_material and sprite_material is ShaderMaterial:
		#sprite_material.set_shader_parameter("NEWCOLOR1", color)
	 


#func _on_color_picker_button_2_color_changed(color: Color):
	#colorbutton_2.get_material().set_shader_parameter("NEWCOLOR2", color)
	#pass 


#func _on_color_picker_button_3_color_changed(color: Color):
	#colorbutton_3.get_material().set_shader_parameter("NEWCOLOR3", color)
	#pass 
