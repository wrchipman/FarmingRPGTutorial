extends Camera2D

@export var tilemap: TileMap
@export var follow_node: Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var map_rect = tilemap.get_used_rect()
	var tile_size = tilemap.tile_set.tile_size

	limit_left = map_rect.position.x * tile_size.x
	limit_right = map_rect.end.x * tile_size.x
	limit_top = map_rect.position.y * tile_size.y
	limit_bottom = map_rect.end.y * tile_size.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	global_position = follow_node.global_position
