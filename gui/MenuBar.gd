extends HBoxContainer

onready var graph_edit = $"../HSplitContainer/GraphEdit"
onready var file_button = $MenuButtonFile
onready var node_button = $MenuButtonNode
onready var about_button = $ToolButtonAbout

func _ready():
	file_button.get_popup().connect("id_pressed", self, "file_item_selected")
	node_button.get_popup().connect("id_pressed", self, "node_item_selected")

func file_item_selected(id: int) -> void:
	match id:
		0:
			graph_edit.save()
		1: 
			graph_edit.saveas()
		2: 
			graph_edit.menu_load()
		4:
			print('Settings')
		6: 
			get_tree().quit()

func node_item_selected(id: int):
	match id:
		0:
			graph_edit.menu_new_node()


func _on_ToolButtonAbout_pressed():
	print('About')
