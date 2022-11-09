extends Node2D

export (PackedScene) var Gem

var level = 0

func _ready():
	randomize()
	spawn_gems()

func _process(delta):
	if $GemContainer.get_child_count() == 0:
		level += 1
		spawn_gems()
	
func spawn_gems():
	if Gem != null:
		for i in range(5 + level):
			var gem = Gem.instance()
			gem.position = Vector2(rand_range(0, 480), rand_range(0, 720))
			$GemContainer.add_child(gem)
			
			
