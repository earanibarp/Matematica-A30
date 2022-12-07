extends Node2D

export (PackedScene) var star

var score = 0

func _ready():
	OS.center_window()
	$Tilemaps/Collectibles.hide()
	$HUD/PauseButton.visible = false
	$HUD/LabelGameOver.visible = false
	spawn_star()

func spawn_star():
	var locations = $Tilemaps/Collectibles.get_used_cells()
	for cell in locations:
		var estrella = star.instance()
		estrella.position = $Tilemaps/Collectibles.map_to_world(cell) * 2 + $Tilemaps/Collectibles.cell_size/2
		add_child(estrella)

func _input(event):
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().paused = true
		$HUD/PauseButton.visible = true


func _on_Button_pressed():
	get_tree().paused = false
	$HUD/PauseButton.visible = false


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
#		yield(get_tree().create_timer(0.3), "timeout")
		$HUD/LabelGameOver.visible = true
		yield(get_tree().create_timer(1), "timeout")
		get_tree().change_scene("res://menu/MenuInicio.tscn")
