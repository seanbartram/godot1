extends AnimatedSprite

var facing = false

func _ready():
	#connect("animation_finished",self,"on_AnimatedSprite_animation_finished")
	pass
	
	
func _process(delta):
	var movement = 0
	var anim = "idle"	
	
	if Input.is_key_pressed(KEY_LEFT):
		movement = -1
		anim = "walk"
		facing = true
	if Input.is_key_pressed(KEY_RIGHT):
		movement = 1
		anim = "walk"
		facing = false
	if Input.is_key_pressed(KEY_SHIFT):
		movement = movement * 5	
		if anim == "walk": 
			anim = "run"
	
	self.position.x += movement
	self.animation = anim
	self.flip_h = facing
	
	
	
	
#func on_AnimatedSprite_animation_finished():
#	if self.animation == "run":
#		animation = "jumpattack"
#	else:
#		animation = "run"
	