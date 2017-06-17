extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var player_size
var screen_size
const PLAYER_SPEED = 150

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	player_size = self.get_texture().get_size()
	screen_size = self.get_viewport_rect().size
	self.set_pos(Vector2(100,185))
	self.set_process(true)
	
func _process(delta):
	var cur_pos = self.get_pos()
	if(Input.is_action_pressed("move_left") && cur_pos.x >= player_size.x/2):
		cur_pos.x -= delta * PLAYER_SPEED
	if(Input.is_action_pressed("move_right") && cur_pos.x <= screen_size.x - player_size.x/2):
		cur_pos.x += delta * PLAYER_SPEED
	self.set_pos(cur_pos)