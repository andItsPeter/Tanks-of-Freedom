var tileSize = 40
var tileSizeVector = Vector2(tileSize,tileSize)
var gridWidth= 30;
var gridHeight = 30
var grid = {}
var startTile
var endTile
var prev
var path
var searched_children = []

var openList = []
var closedList = []

var lastCurrent
var path_cache = {}
var possible_neighbours = Vector2Array([Vector2(-1,-1), Vector2(-1,0), Vector2(-1,1), Vector2(0,-1), Vector2(0,0), Vector2(0,1),Vector2(1,-1), Vector2(1,0), Vector2(1,1)])

const CACHE_MINIMUM_PATH_SIZE = 3

func flush_cache():
    self.path_cache = {}

func pathSearch(startTile, endTile, own_units):

    searched_children.append(startTile)
    var add_path_to_cache = true
    var end_pos
    var start_pos
    var cached = Vector2Array()
    var index_range
    for cache in self.path_cache:

        cache = self.path_cache[cache]
        end_pos = cache.find(endTile)
        start_pos = cache.find(startTile)

        if (end_pos != -1 && start_pos != -1):
            cached = Vector2Array()
            if (start_pos > end_pos):
                index_range = range(end_pos, start_pos)
            else:
                index_range = range(start_pos, end_pos)

            for i in index_range:
                cached.append(cache[i])

            if (self.__invalid_check(cached, own_units)):
                add_path_to_cache = false
                continue

            return cached

    var result = __pathSearch2(startTile, endTile)
    var result_hash = result.hash()
    if (add_path_to_cache && result.size() >= self.CACHE_MINIMUM_PATH_SIZE && !self.path_cache.has(result_hash)):
        self.path_cache[result_hash] = result

    return result

func set_cost_grid(cost_grid):
    grid = cost_grid
    self.path_cache.clear()

func __invalid_check(cached, own_units):
    # temp cache invalidation
    for unit_pos in own_units:
        if (cached.find(startTile) == 1):
            return true

    return false

# new path search
func __pathSearch2(start, goal):
    var closedset = []    #The set of nodes already evaluated.
    var openset = []   #The set of tentative nodes to be evaluated, initially containing the start node
    openset.append(start)
    var current
    var came_from = {}  # The map of navigated nodes.
    var tentative_g_score

    grid[start].G = int(0)    # Cost from start along best known path.
    # Estimated total cost from start to goal through y.
    grid[start].F = int(grid[start].G + __get_manhattan(start, goal))

    while openset.size() > 0:
        current = __smallestF(openset)
        if current == goal:
            return __reconstruct_path(came_from, goal)

        openset.remove(openset.find(current))
        closedset.append(current)
        for neighbor in __identify_successors(current, start, goal):
            if neighbor in closedset:
                continue

            tentative_g_score = grid[current].G + 1

            if !(neighbor in openset) or tentative_g_score < grid[neighbor].G :
                came_from[neighbor] = current
                grid[neighbor].G = tentative_g_score
                grid[neighbor].F = grid[neighbor].G + __get_manhattan(neighbor, goal)
                if !(neighbor in openset):
                    openset.append(neighbor)
                    searched_children.append(neighbor)
    return {}

func __identify_successors(current, start, goal):
    var successors = []
    var neighbours = self.__get_adjacent_tiles(current)
    var dx = clamp(goal.x - current.x, -1, 1)
    var dy = clamp(goal.y - current.y, -1, 1)

    for neighbor in neighbours:
        var exact_neighbor = false
        if clamp(neighbor.x - current.x, -1, 1) == dx && clamp(neighbor.x - current.y, -1, 1) == dy:
            exact_neighbor = true
            successors.append(neighbor)

        if !exact_neighbor && clamp(neighbor.x - current.x, -1, 1) != -dx && clamp(neighbor.x - current.y, -1, 1) != -dy:
            successors.append(neighbor)

    if successors.size() == 0:
        successors = neighbours

    return successors

# find the tile with the smallest F value that is open
func __smallestF(openSet):
    var smallest = openSet[0]
    for t in openSet:
        if grid[t].F < grid[smallest].F:
            smallest = t
    return smallest

# create the path based
func __reconstruct_path(came_from, current_node):
    if current_node in came_from:
        var p = __reconstruct_path(came_from, came_from[current_node])
        p.append(current_node)
        return p
    else:
        return [current_node]

func __get_manhattan(start, end):
    return abs(start.x-end.x) +abs (start.y-end.y)

func __get_adjacent_tiles(center_tile):
    var result = []
    var vector
    for mod in self.possible_neighbours:
        if mod.x == 0 or mod.y == 0:
            vector = center_tile + mod
            if grid.has(vector) and grid[vector].walkable == true:
                result.append(vector)
    return result