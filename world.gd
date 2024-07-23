extends Node2D

@onready var tilemap = get_node("TileMap")

var noise1 = FastNoiseLite.new()

func _ready():
	noise1.set_noise_type(FastNoiseLite.TYPE_PERLIN)
	noise1.seed = 12313
	noise1.fractal_octaves = 8
	noise1.frequency = 0.008
	for x in 100:
		var value = noise1.get_noise_1d(x)
		print(value)
		var offset : int = ceil(value * 50)
		for y in 80:
			var pos := Vector2(x - 50, y - 50)
			if pos.y < offset:
				continue
			tilemap.set_cell(0, pos, 0, Vector2(4, 2) )
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
