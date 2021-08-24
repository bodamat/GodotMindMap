extends GridContainer

onready var link_button := preload("./Link.tscn")

func add_link(text, url):
	var b = link_button.instance()
	b.url = url
	b.text = text
	add_child(b)


func get_links():
	var ret = []
	for c in get_children():
		ret.append({"text": c.text, "url": c.url})
	return ret

func update_link(idx:int, text:String, url:String):
	if get_child_count() > idx:
		var child = get_child(idx)
		child.text = text
		child.url = url
	
	
func remove_link(idx:int):
	if get_child_count() > idx:
		remove_child(get_child(idx))
