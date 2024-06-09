extends Node2D

@onready var player = $Player

func _ready():
	player.set_camera_limits($TileMap.get_used_rect(), $TileMap.tile_set.tile_size)
	player.global_position = $SpawnPoint.global_position
