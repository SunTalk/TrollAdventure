void map_one_boundary()
{
	// left and left
	boundaries.add(new Boundary(-1210, 450, 10, 900, 0, 0, true));

	// left limit
	boundaries.add(new Boundary(-3, 450, 1, 3000, 0, 0, true));

	// right
	boundaries.add(new Boundary(3610, 450, 10, 9000, 0, 5, true));

	// top
	boundaries.add(new Boundary(1400, 620, 200, 10, 0, -1, true));

	// floor
	boundaries.add(new Boundary(300, 890, 600, 300, 0, -1, true));
	boundaries.add(new Boundary(1100, 900, 400, 300, 0, -1, true));
	boundaries.add(new Boundary(1600, 900, 200, 300, 0, -1, true));
	boundaries.add(new Boundary(2700, 900, 1300, 300, 0, -1, true));

	// Under World
	// Alicization (x
	boundaries.add(new Boundary(3000, 1800, 6000, 600, 0, -1, true));
}