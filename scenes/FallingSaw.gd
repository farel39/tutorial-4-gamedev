extends RigidBody2D

@export var sceneName = "LoseScreen"
func _ready():
	contact_monitor = true
	max_contacts_reported = 1
	
func _on_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://scenes/" + sceneName + ".tscn")
	else:
		queue_free()
