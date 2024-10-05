extends MarginContainer
class_name CollectList

var dict:Dictionary = {}

var item_list_container_scene:PackedScene = preload("res://scenes/tree/list_item_container.tscn")

func _add_item(item:Item, amount:int, _customer:Customer):
	if item.item_name in dict:
		dict[item.item_name].add_item(item)
		return
	
	var temp = item_list_container_scene.instantiate()
	$VFlowContainer.add_child(temp)
	temp.add_item(item)
	dict[item.item_name] = temp

