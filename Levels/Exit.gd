extends Area2D



func _on_Exit_body_entered(body):
	if body.name == "Player":
		Global.playable = false
		var UI = get_node_or_null("/root/Game/UI")
		if UI != null:
			UI.show()
			var AP = UI.get_node_or_null("Victory/AnimationPlayer")
			if AP != null:
				AP.play("Victory")


func _on_AnimationPlayer_animation_finished(_anim_name):
	var _scene = get_tree().change_scene("res://Game.tscn")
