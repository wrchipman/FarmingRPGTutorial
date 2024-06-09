extends Node2D

@export var next_level: PackedScene = null

@onready var player = $Player

func _ready():
	player.set_camera_limits($TileMap.get_used_rect(), $TileMap.tile_set.tile_size)
 


		
