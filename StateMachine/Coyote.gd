extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	$Timer.start()

func physics_process(_delta):
	if Input.is_action_pressed("jump") and player.jump_reset:
		SM.set_state("Jumping")
	else:
		SM.set_state("Falling")


func _on_Timer_timeout():
	SM.set_state("Falling")
