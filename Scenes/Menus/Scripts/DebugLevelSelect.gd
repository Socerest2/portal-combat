extends Button

#script for play button lmao
func _ready():
	pass # Replace with function body.


func _on_TestLevel_pressed():
	get_tree().change_scene("res://Scenes/Levels/Testlevel.tscn")
