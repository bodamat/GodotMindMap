extends WindowDialog


onready var groups: Tree = $MarginContainer/AboutUI/Credits/Groups
onready var developers: Tree = $MarginContainer/AboutUI/Credits/Developers/DevelopersTree

onready var group_root = groups.create_item()
onready var developers_button = groups.create_item(group_root)

func _ready():
	developers_button.set_text(0, " " + tr("Developers"))
	# We use metadata to avoid being affected by translations
	developers_button.set_metadata(0, "Developers")
