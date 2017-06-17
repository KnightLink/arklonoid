extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	self.set_process(true)

func _process(delta):
	self.set_pos(self.get_pos()+Vector2(delta*100, 0))
	