class_name Player extends CharacterBody2D

var cardinal_direction : Vector2 = Vector2.DOWN
var direction : Vector2 = Vector2.ZERO

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite : Sprite2D = $Sprite2D
@onready var state_machine : PlayerStateMachine = $StateMachine




func _ready():
	state_machine.Initialize(self)
	pass
	
	
	
func _process(delta):
	
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	pass
	
	
func _physics_process(delta):
	move_and_slide()



func SetDirection() -> bool:
	
	return true
	


func SetState() -> bool:
	
	return true
	
	

func UpdateAnimation(state) -> void:
	animation_player.play("idle")
	pass
