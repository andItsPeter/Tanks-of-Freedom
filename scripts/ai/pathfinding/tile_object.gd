const NON_WALKABLE = 999

var parent
var G = int(0)
var H = int(0)
var F = int(0)
var cost
var walkable = true

func _init(cost):
	if cost == NON_WALKABLE:
		self.walkable = false

	self.cost = cost