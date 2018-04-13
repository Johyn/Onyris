extends Node2D

var encounter = {
	"encounter_type": [ "Battle with", "Quest from"],
	"encounter_person": [ "Bandit", "Dragon", "Knight", "Rat", "Talking Sword" ],
	"encounter_person_kind": [ "drunk", "poor", "hungry", "bald", "old" ],
	"encounter_reason": [ "wrong place wrong type", "you looked tasty", "you're not batman", "that's the way thinks work around here" ]
}

onready var encounters = $CenterContainer/encounter_container
func _ready():
	$CenterContainer/encounter_container/Button.connect("button_down",self,"reroll")
	
func reroll():
	var what_happend = roll(encounter)
	for k in what_happend.keys():
		encounters.get_node(k).get_node("value").text = what_happend[k]
	pass
	
func roll(something):
	var result = {}
	for k in something.keys():
		var values = something[k]
		result[k] = values[randi() % values.size()]
	return result
