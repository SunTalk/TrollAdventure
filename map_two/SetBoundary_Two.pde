void map_two_boundary()
{
	// left limit
	boundaries.add(new Boundary(-10, 900, 10, 300, 0, 0, true));
	//boundaries.add(new Boundary(-10, 1800, 10, 1800, 0, 0, true));

	// top
	boundaries.add(new Boundary(1400, 650, 200, 10, 0, -1, true));
	// top star
	boundaries.add(new Boundary(1700, 530, 200, 10, 0, -1, false));
	boundaries.add(new Boundary(1850, 400, 200, 10, 0, -1, false));
	boundaries.add(new Boundary(1400, 300, 200, 10, 0, -1, false));

	// floor
	boundaries.add(new Boundary(200, 900, 800, 300, 0, -1, true));
	boundaries.add(new Boundary(1100, 900, 400, 300, 0, -1, true));
	boundaries.add(new Boundary(1700, 900, 400, 300, 0, -1, true));
	boundaries.add(new Boundary(2900, 900, 1400, 300, 0, -1, true));

	// Under World
	// Alicization (x
	// ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ
	boundaries.add(new Boundary(0, 1300, 1100, 10, 0, -1, true));
	boundaries.add(new Boundary(0, 1600, 700, 10, 0, -1, true));
	boundaries.add(new Boundary(750, 1400, 200, 10, 0, -1, true));
	boundaries.add(new Boundary(800, 1800, 400, 20, 0, -1, true));

	// Win Area
	boundaries.add(new Boundary(1500, 1550, 1000, 100, 0, -1, true));
	boundaries.add(new Boundary(1850, 1650, 300, 300, 0, -1, true));
	boundaries.add(new Boundary(1500, 1800, 1000, 150, 0, -1, true));

	// floor
	boundaries.add(new Boundary(3300, 1800, 1800, 200, 0, -1, true));

	// star
	// right limit
	boundaries.add(new Boundary(3610, 1600, 10, 200, 0, -1, true));

	// jump
	boundaries.add(new Boundary(3300, 1550, 10, 200, 0.9, 2.6, false));
}

void disapear()
{
	fill(182);
	rect(1500, 1650, 1000, 300);
}

void dis_boundary()
{
	// star
	// Air
	if(lying > 1 || lying < 0)
	{
		boundaries.add(new Boundary(3000, 600, 200, 10, 0, -1, true));
		boundaries.add(new Boundary(3200, 500, 200, 10, 0, -1, true));
		boundaries.add(new Boundary(3500, 400, 200, 10, 0.5, 2.5, true));
	}
}