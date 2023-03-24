extends Area2D



func _on_Exit_body_entered(body):
	if body.name == "Player":
		get_tree().quit()


func _on_Key_body_entered(body):
	var key = get_node_or_null("/root/Game/Key")
	if key != null and body.name == "Player":
		key.queue_free()
		$StaticBody2D.queue_free()
		$Open.show()
		$Closed.hide()
		
