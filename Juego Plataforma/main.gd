extends Node2D

export (PackedScene) var star

func _ready():
	OS.center_window()
	$Collectibles.hide()
	spawn_star()
	
func spawn_star():
	for cell in $Collectibles.get_used_cells():
		var estrella = star.instance()
		estrella.position = $Collectibles.map_to_world(cell) * 2 + $Collectibles.cell_size /2
		add_child(estrella)
