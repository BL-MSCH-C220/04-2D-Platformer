extends Camera2D



func _process(_delta):
	var player = get_node_or_null("/root/Game/Player_Container/Player")
	if player != null:
		position = player.position


func _on_Zoom_Area_body_entered(body):
	if body.name == "Player":
		$Tween.interpolate_property(self, "zoom", Vector2(1,1), Vector2(0.5,0.5), 1.0, Tween.TRANS_LINEAR, Tween.EASE_IN)
		$Tween.start()


func _on_Zoom_Area_body_exited(body):
	if body.name == "Player":
		$Tween.interpolate_property(self, "zoom", Vector2(0.5,0.5), Vector2(1,1), 1.0, Tween.TRANS_LINEAR, Tween.EASE_IN)
		$Tween.start()
