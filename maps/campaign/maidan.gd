var map_data = [
	{'x': 0, 'y': 2, 'terrain': 4, 'unit': -1},
	{'x': 0, 'y': 3, 'terrain': 4, 'unit': -1},
	{'x': 0, 'y': 4, 'terrain': 4, 'unit': -1},
	{'x': 0, 'y': 5, 'terrain': 4, 'unit': -1},
	{'x': 0, 'y': 6, 'terrain': 4, 'unit': -1},
	{'x': 0, 'y': 7, 'terrain': 4, 'unit': -1},
	{'x': 0, 'y': 8, 'terrain': 4, 'unit': -1},
	{'x': 0, 'y': 9, 'terrain': 4, 'unit': -1},
	{'x': 1, 'y': 1, 'terrain': 4, 'unit': -1},
	{'x': 1, 'y': 2, 'terrain': 4, 'unit': -1},
	{'x': 1, 'y': 3, 'terrain': 4, 'unit': -1},
	{'x': 1, 'y': 4, 'terrain': 13, 'unit': 0},
	{'x': 1, 'y': 5, 'terrain': 13, 'unit': -1},
	{'x': 1, 'y': 6, 'terrain': 13, 'unit': -1},
	{'x': 1, 'y': 7, 'terrain': 13, 'unit': -1},
	{'x': 1, 'y': 8, 'terrain': 4, 'unit': -1},
	{'x': 1, 'y': 9, 'terrain': 4, 'unit': -1},
	{'x': 1, 'y': 10, 'terrain': 4, 'unit': -1},
	{'x': 2, 'y': 0, 'terrain': 4, 'unit': -1},
	{'x': 2, 'y': 1, 'terrain': 4, 'unit': -1},
	{'x': 2, 'y': 2, 'terrain': 4, 'unit': -1},
	{'x': 2, 'y': 3, 'terrain': 13, 'unit': -1},
	{'x': 2, 'y': 4, 'terrain': 13, 'unit': -1},
	{'x': 2, 'y': 5, 'terrain': 13, 'unit': -1},
	{'x': 2, 'y': 6, 'terrain': 13, 'unit': -1},
	{'x': 2, 'y': 7, 'terrain': 13, 'unit': 0},
	{'x': 2, 'y': 8, 'terrain': 13, 'unit': -1},
	{'x': 2, 'y': 9, 'terrain': 4, 'unit': -1},
	{'x': 2, 'y': 10, 'terrain': 4, 'unit': -1},
	{'x': 2, 'y': 11, 'terrain': 4, 'unit': -1},
	{'x': 3, 'y': 0, 'terrain': 4, 'unit': -1},
	{'x': 3, 'y': 1, 'terrain': 4, 'unit': -1},
	{'x': 3, 'y': 2, 'terrain': 11, 'unit': -1},
	{'x': 3, 'y': 3, 'terrain': 13, 'unit': -1},
	{'x': 3, 'y': 4, 'terrain': 13, 'unit': -1},
	{'x': 3, 'y': 5, 'terrain': 13, 'unit': -1},
	{'x': 3, 'y': 6, 'terrain': 13, 'unit': -1},
	{'x': 3, 'y': 7, 'terrain': 13, 'unit': -1},
	{'x': 3, 'y': 8, 'terrain': 13, 'unit': -1},
	{'x': 3, 'y': 9, 'terrain': 11, 'unit': -1},
	{'x': 3, 'y': 10, 'terrain': 4, 'unit': -1},
	{'x': 3, 'y': 11, 'terrain': 4, 'unit': -1},
	{'x': 4, 'y': 0, 'terrain': 4, 'unit': -1},
	{'x': 4, 'y': 1, 'terrain': 13, 'unit': -1},
	{'x': 4, 'y': 2, 'terrain': 13, 'unit': 3},
	{'x': 4, 'y': 3, 'terrain': 13, 'unit': -1},
	{'x': 4, 'y': 4, 'terrain': 13, 'unit': -1},
	{'x': 4, 'y': 5, 'terrain': 13, 'unit': -1},
	{'x': 4, 'y': 6, 'terrain': 13, 'unit': -1},
	{'x': 4, 'y': 7, 'terrain': 13, 'unit': 0},
	{'x': 4, 'y': 8, 'terrain': 13, 'unit': -1},
	{'x': 4, 'y': 9, 'terrain': 13, 'unit': 0},
	{'x': 4, 'y': 10, 'terrain': 13, 'unit': -1},
	{'x': 4, 'y': 11, 'terrain': 4, 'unit': -1},
	{'x': 5, 'y': 0, 'terrain': 4, 'unit': -1},
	{'x': 5, 'y': 1, 'terrain': 13, 'unit': -1},
	{'x': 5, 'y': 2, 'terrain': 13, 'unit': 3},
	{'x': 5, 'y': 3, 'terrain': 13, 'unit': -1},
	{'x': 5, 'y': 4, 'terrain': 13, 'unit': -1},
	{'x': 5, 'y': 5, 'terrain': 5, 'unit': -1},
	{'x': 5, 'y': 6, 'terrain': 13, 'unit': 0},
	{'x': 5, 'y': 7, 'terrain': 13, 'unit': -1},
	{'x': 5, 'y': 8, 'terrain': 13, 'unit': -1},
	{'x': 5, 'y': 9, 'terrain': 13, 'unit': -1},
	{'x': 5, 'y': 10, 'terrain': 6, 'unit': -1},
	{'x': 5, 'y': 11, 'terrain': 4, 'unit': -1},
	{'x': 6, 'y': 0, 'terrain': 4, 'unit': -1},
	{'x': 6, 'y': 1, 'terrain': 7, 'unit': -1},
	{'x': 6, 'y': 2, 'terrain': 13, 'unit': 3},
	{'x': 6, 'y': 3, 'terrain': 13, 'unit': -1},
	{'x': 6, 'y': 4, 'terrain': 13, 'unit': -1},
	{'x': 6, 'y': 5, 'terrain': 13, 'unit': -1},
	{'x': 6, 'y': 6, 'terrain': 13, 'unit': 0},
	{'x': 6, 'y': 7, 'terrain': 13, 'unit': -1},
	{'x': 6, 'y': 8, 'terrain': 13, 'unit': -1},
	{'x': 6, 'y': 9, 'terrain': 13, 'unit': -1},
	{'x': 6, 'y': 10, 'terrain': 13, 'unit': -1},
	{'x': 6, 'y': 11, 'terrain': 4, 'unit': -1},
	{'x': 7, 'y': 0, 'terrain': 4, 'unit': -1},
	{'x': 7, 'y': 1, 'terrain': 13, 'unit': -1},
	{'x': 7, 'y': 2, 'terrain': 13, 'unit': 3},
	{'x': 7, 'y': 3, 'terrain': 13, 'unit': -1},
	{'x': 7, 'y': 4, 'terrain': 13, 'unit': -1},
	{'x': 7, 'y': 5, 'terrain': 13, 'unit': -1},
	{'x': 7, 'y': 6, 'terrain': 13, 'unit': -1},
	{'x': 7, 'y': 7, 'terrain': 13, 'unit': 0},
	{'x': 7, 'y': 8, 'terrain': 13, 'unit': -1},
	{'x': 7, 'y': 9, 'terrain': 13, 'unit': 0},
	{'x': 7, 'y': 10, 'terrain': 13, 'unit': -1},
	{'x': 7, 'y': 11, 'terrain': 4, 'unit': -1},
	{'x': 8, 'y': 0, 'terrain': 4, 'unit': -1},
	{'x': 8, 'y': 1, 'terrain': 4, 'unit': -1},
	{'x': 8, 'y': 2, 'terrain': 4, 'unit': -1},
	{'x': 8, 'y': 3, 'terrain': 13, 'unit': -1},
	{'x': 8, 'y': 4, 'terrain': 13, 'unit': -1},
	{'x': 8, 'y': 5, 'terrain': 13, 'unit': -1},
	{'x': 8, 'y': 6, 'terrain': 13, 'unit': -1},
	{'x': 8, 'y': 7, 'terrain': 13, 'unit': -1},
	{'x': 8, 'y': 8, 'terrain': 13, 'unit': -1},
	{'x': 8, 'y': 9, 'terrain': 4, 'unit': -1},
	{'x': 8, 'y': 10, 'terrain': 4, 'unit': -1},
	{'x': 8, 'y': 11, 'terrain': 4, 'unit': -1},
	{'x': 9, 'y': 0, 'terrain': 4, 'unit': -1},
	{'x': 9, 'y': 1, 'terrain': 4, 'unit': -1},
	{'x': 9, 'y': 2, 'terrain': 4, 'unit': -1},
	{'x': 9, 'y': 3, 'terrain': 13, 'unit': -1},
	{'x': 9, 'y': 4, 'terrain': 13, 'unit': -1},
	{'x': 9, 'y': 5, 'terrain': 13, 'unit': -1},
	{'x': 9, 'y': 6, 'terrain': 13, 'unit': -1},
	{'x': 9, 'y': 7, 'terrain': 13, 'unit': 0},
	{'x': 9, 'y': 8, 'terrain': 13, 'unit': -1},
	{'x': 9, 'y': 9, 'terrain': 4, 'unit': -1},
	{'x': 9, 'y': 10, 'terrain': 4, 'unit': -1},
	{'x': 9, 'y': 11, 'terrain': 4, 'unit': -1},
	{'x': 10, 'y': 1, 'terrain': 4, 'unit': -1},
	{'x': 10, 'y': 2, 'terrain': 4, 'unit': -1},
	{'x': 10, 'y': 3, 'terrain': 13, 'unit': -1},
	{'x': 10, 'y': 4, 'terrain': 13, 'unit': -1},
	{'x': 10, 'y': 5, 'terrain': 13, 'unit': 0},
	{'x': 10, 'y': 6, 'terrain': 13, 'unit': -1},
	{'x': 10, 'y': 7, 'terrain': 13, 'unit': -1},
	{'x': 10, 'y': 8, 'terrain': 4, 'unit': -1},
	{'x': 10, 'y': 9, 'terrain': 4, 'unit': -1},
	{'x': 10, 'y': 10, 'terrain': 4, 'unit': -1},
	{'x': 11, 'y': 2, 'terrain': 4, 'unit': -1},
	{'x': 11, 'y': 3, 'terrain': 4, 'unit': -1},
	{'x': 11, 'y': 4, 'terrain': 4, 'unit': -1},
	{'x': 11, 'y': 5, 'terrain': 4, 'unit': -1},
	{'x': 11, 'y': 6, 'terrain': 4, 'unit': -1},
	{'x': 11, 'y': 7, 'terrain': 4, 'unit': -1},
	{'x': 11, 'y': 8, 'terrain': 4, 'unit': -1},
	{'x': 11, 'y': 9, 'terrain': 4, 'unit': -1},
]