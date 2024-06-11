extends BaseScene

@onready var camera = $FollowCamera

func _ready():
	super()
	camera.follow_node = player
	

