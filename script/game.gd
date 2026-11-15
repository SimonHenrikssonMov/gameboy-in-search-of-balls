extends Node2D

var level: int = 1
var current_level_root: Node = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_level_root = get_node("levelRoot")
	
	var exit = current_level_root.get_node_or_null("Exit")
	if exit:
		exit. body_entered.connect(on_exit_body_entered)

func on_exit_body_entered(body: Node2D) ->void:
	print(body.name)
