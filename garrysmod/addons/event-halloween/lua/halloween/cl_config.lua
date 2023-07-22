local images = {
	'D81AsUU.png', -- freddy
	'NyJwvT6.png', -- headless
	'UH8uDXU.png', -- pennywise
	'QcjN7kN.png', -- scarecrow
	'7sp3ChY.png', -- scream
	'LleVpog.png', -- vampire
	'tQc7IY2.png', -- werewolf
	'9LF6kcF.png', -- zombie
}
local w = {
	{ -- Йорк
		{'KzQyhe9.png', 'Cs3PNZo.png'}, -- 3, 13
		{'qbTQV6X.png', 'NSNobBF.png'}, -- 9
	}, { -- Ирвин
		{'Xiusudh.png', 'IcGvAPK.png'}, -- 1
		{'B9PPmp8.png', '81YobY3.png'}, -- 3, 4, 8, 10, 13
		{'Jgir8mw.png', 'xBLr3qA.png'}, -- 9
	}, { -- Рурк
		{'Jgir8mw.png', 'xBLr3qA.png'}, -- 1
		{'e7Kmmf0.png', 'hBT64Hl.png'}, -- 8
	}, { -- Джойс
		{'KiOrU2e.png', 'xBLr3qA.png'}, -- 3
		{'6Rjf9nD.png', '5UO55J0.png'}, -- 5
		{'NkXud13.png', 'fFP8rhx.png'}, -- 6
		{'Cq8VAau.png', 'OXyQvnu.png'}, -- 8
		{'liHdx0A.png', 'JiZgoBt.png'}, -- 10
		{'Jgir8mw.png', 'xBLr3qA.png'}, -- 13
		{'CRafYma.png', 'fWUZUXW.png'}, -- 15
	}, { -- Стефан
		{'akaIYOQ.png', 'cjVKuUO.png'}, -- 2
	},
}

-- Everythings starts from bottom-right and moves snake-like and moves left and up
local windowPositions = {
	{ -- Йорк 3
		{ Vector(-3903.7,1644.1,235.9), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1516,236), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1260.1,236), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1260.1,364), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1388.1,364), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1516.1,363.9), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1772.0,364), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1772,491.9), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1644.1,492), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1516.0,491.9), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1388.1,492), Angle(0,90,90), 399.6, 717.8, w[1][1] },
		{ Vector(-3903.7,1260.1,492), Angle(0,90,90), 399.6, 717.8, w[1][1] },
	}, { -- Йорк 9
		{ Vector(-3116.1,767.3,295.9), Angle(0,180,90), 400, 717.8, w[1][2] },
		{ Vector(-2860.1,767.3,296), Angle(0,180,90), 400, 717.8, w[1][2] },
		{ Vector(-2732.1,767.3,296), Angle(0,180,90), 400, 717.8, w[1][2] },
		{ Vector(-2732.1,767.3,423.9), Angle(0,180,90), 400, 717.8, w[1][2] },
		{ Vector(-2988.1,767.3,423.9), Angle(0,180,90), 400, 717.8, w[1][2] },
		{ Vector(-3116.1,767.3,424), Angle(0,180,90), 400, 717.8, w[1][2] },
		{ Vector(-3116.1,767.3,551.9), Angle(0,180,90), 400, 717.8, w[1][2] },
		{ Vector(-2988.1,767.3,551.9), Angle(0,180,90), 400, 717.8, w[1][2] },
		{ Vector(-2860.1,767.3,552), Angle(0,180,90), 400, 717.8, w[1][2] },
		{ Vector(-2732.1,767.3,551.9), Angle(0,180,90), 400, 717.8, w[1][2] },
	}, { -- Йорк 13
		{ Vector(-2092.1,827.3,235.9), Angle(0,180,90), 398.7, 718.1, w[1][1] },
		{ Vector(-1836.7,827.3,234.8), Angle(0,180,90), 398.7, 718.1, w[1][1] },
		{ Vector(-1708.2,827.3,235.7), Angle(0,180,90), 398.7, 718.1, w[1][1] },
		{ Vector(-1708.2,827.3,363.9), Angle(0,180,90), 398.7, 718.1, w[1][1] },
		{ Vector(-1836.1,827.3,363.9), Angle(0,180,90), 398.7, 718.1, w[1][1] },
		{ Vector(-2092.1,827.3,363.9), Angle(0,180,90), 398.7, 718.1, w[1][1] },
		{ Vector(-2092.1,827.3,491.9), Angle(0,180,90), 398.7, 718.1, w[1][1] },
		{ Vector(-1836.2,827.3,491.9), Angle(0,180,90), 398.7, 718.1, w[1][1] },
		{ Vector(-1708.1,827.3,491.8), Angle(0,180,90), 398.7, 718.1, w[1][1] },
	}, { -- Ирвин 1
		{ Vector(-895.3,1423.9,223.9), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1551.9,223.9), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1679.9,224), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1807.9,224), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1807.8,351.9), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1679.8,351.9), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1551.9,352), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1423.9,479.9), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1551.9,479.9), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1679.9,479.9), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
		{ Vector(-895.3,1807.8,479.9), Angle(0,-90,90), 319.1, 603.8, w[2][1] },
	}, { -- Ирвин 3
		{ Vector(-895.3,915.8,235.9), Angle(0,-90,90), 397.3, 719.1, w[2][2] },
		{ Vector(-895.3,1171.9,235.9), Angle(0,-90,90), 397.3, 719.1, w[2][2] },
		{ Vector(-895.3,915.9,363.9), Angle(0,-90,90), 397.3, 719.1, w[2][2] },
		{ Vector(-895.3,915.9,491.9), Angle(0,-90,90), 397.3, 719.1, w[2][2] },
		{ Vector(-895.3,1043.9,491.9), Angle(0,-90,90), 397.3, 719.1, w[2][2] },
		{ Vector(-895.3,1171.8,491.8), Angle(0,-90,90), 397.3, 719.1, w[2][2] },
	}, { -- Ирвин 4
		{ Vector(-1669.7,620.1,235.9), Angle(0,90,90), 397.3, 721.4, w[2][2] },
		{ Vector(-1668.7,492.1,235.8), Angle(0,90,90), 397.3, 721.4, w[2][2] },
		{ Vector(-1668.7,492.2,363.9), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1669.7,620.2,363.9), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1669.7,748.1,363.9), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1669.7,748.2,491.8), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1669.7,620.1,491.9), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1668.7,492.2,491.8), Angle(0,90,90), 398.3, 721.4, w[2][2] },
	}, { -- Ирвин 8
		{ Vector(-1664.7,-19.8,235.8), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1664.7,-147.9,235.9), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1664.7,-403.9,235.8), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1664.7,-403.9,363.9), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1664.7,-19.8,491.8), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1664.7,-147.8,491.8), Angle(0,90,90), 398.3, 721.4, w[2][2] },
		{ Vector(-1664.7,-403.8,491.9), Angle(0,90,90), 398.3, 721.4, w[2][2] },
	}, { -- Ирвин 9
		{ Vector(-895.3,-732.1,264), Angle(0,-90,90), 400.2, 720, w[2][3] },
		{ Vector(-895.3,-604.1,263.9), Angle(0,-90,90), 400.2, 720, w[2][3] },
		{ Vector(-895.3,-604.1,391.9), Angle(0,-90,90), 400.2, 720, w[2][3] },
		{ Vector(-895.3,-732.1,391.9), Angle(0,-90,90), 400.2, 720, w[2][3] },
		{ Vector(-895.3,-732.1,519.9), Angle(0,-90,90), 400.2, 720, w[2][3] },
		{ Vector(-895.3,-604.1,520), Angle(0,-90,90), 400.2, 720, w[2][3] },
	}, { -- Ирвин 10
		{ Vector(-1632.7,-531.8,203.8), Angle(0,90,90), 397.4, 718.4, w[2][2] },
		{ Vector(-1632.7,-787.8,203.9), Angle(0,90,90), 397.4, 718.4, w[2][2] },
		{ Vector(-1632.7,-787.9,331.9), Angle(0,90,90), 397.4, 718.4, w[2][2] },
		{ Vector(-1632.7,-531.8,331.9), Angle(0,90,90), 397.4, 718.4, w[2][2] },
		{ Vector(-1632.7,-531.9,459.9), Angle(0,90,90), 397.4, 718.4, w[2][2] },
		{ Vector(-1632.7,-787.9,459.9), Angle(0,90,90), 397.4, 718.4, w[2][2] },
		{ Vector(-1632.7,-787.8,587.9), Angle(0,90,90), 397.4, 718.4, w[2][2] },
		{ Vector(-1632.7,-531.9,587.9), Angle(0,90,90), 397.4, 718.4, w[2][2] },
	}, { -- Ирвин 13
		{ Vector(-1440.1,-1351.7,187.8), Angle(0,180,90), 319.3, 598.4, w[2][2] },
		{ Vector(-1600.1,-1351.7,187.9), Angle(0,180,90), 319.3, 598.4, w[2][2] },
		{ Vector(-1520.1,-1351.7,187.9), Angle(0,180,90), 319.3, 598.4, w[2][2] },
		{ Vector(-1600.2,-1351.7,347.9), Angle(0,180,90), 319.3, 598.4, w[2][2] },
		{ Vector(-1440.1,-1351.7,347.9), Angle(0,180,90), 319.3, 598.4, w[2][2] },
	}, { -- Рурк 1
		{ Vector(-812.1,-560.7,264), Angle(0,180,90), 399.7, 719.2, w[3][1] },
		{ Vector(-428.1,-560.7,264), Angle(0,180,90), 399.7, 719.2, w[3][1] },
		{ Vector(-300.1,-624.7,263.9), Angle(0,180,90), 399.7, 719.2, w[3][1] },
		{ Vector(-172.1,-624.7,391.9), Angle(0,180,90), 399.7, 719.2, w[3][1] },
		{ Vector(-300.2,-624.7,391.9), Angle(0,180,90), 399.7, 719.2, w[3][1] },
		{ Vector(-428.1,-560.7,391.9), Angle(0,180,90), 399.7, 719.2, w[3][1] },
		{ Vector(-812.1,-560.7,519.9), Angle(0,180,90), 399.7, 719.2, w[3][1] },
		{ Vector(-428.1,-560.7,520), Angle(0,180,90), 399.7, 719.2, w[3][1] },
		{ Vector(-300.1,-624.7,519.9), Angle(0,180,90), 399.7, 719.2, w[3][1] },
		{ Vector(-172.2,-624.7,520), Angle(0,180,90), 399.7, 719.2, w[3][1] },
	}, { -- Рурк 8
		{ Vector(1330.9,-959.7,272.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1394.9,-959.7,272.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1459,-959.7,272.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1523,-1023.7,272.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1586.9,-1023.7,272.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1650.8,-1023.7,272.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1715,-1023.7,272.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1330.7,-959.7,400.2), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1394.6,-959.7,400.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1458.8,-959.7,400.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1522.7,-1023.7,400.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1586.7,-1023.7,400.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1650.6,-1023.7,400.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1714.8,-1023.7,400.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1714.7,-1023.7,528.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1650.7,-1023.7,528.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1586.6,-1023.7,528.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1522.9,-1023.7,528.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1458.8,-959.7,528.2), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1394.6,-959.7,528.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1330.9,-959.7,528.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1330.7,-959.7,656.2), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1394.9,-959.7,656.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1458.8,-959.7,656.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1522.9,-1023.7,656.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1587.1,-1023.7,656.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1651.1,-1023.7,656.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
		{ Vector(1715.1,-1023.7,656.1), Angle(0,180,90), 378.5, 719.2, w[3][2] },
	}, { -- Джойс 3
		{ Vector(2567.7,-19.2,231.6), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,52.9,231.9), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,180.9,231.5), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,236.8,231.6), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,236.9,359.5), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,180.9,359.6), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,-19.2,359.6), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,-19.3,487.6), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,52.9,487.6), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,180.9,487.5), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
		{ Vector(2567.7,236.9,487.6), Angle(0,-90,90), 338.6, 636.1, w[4][1] },
	}, { -- Джойс 5
		{ Vector(2336.7,-432.1,191.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2368.7,-304.1,191.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2368.7,-176.1,191.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2368.7,-176.1,319.8), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2368.7,-304.2,319.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2336.7,-432.1,319.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2336.7,-432.2,447.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2368.7,-304.1,447.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2368.7,-176.1,447.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2368.7,-176.1,575.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2368.7,-304.1,575.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
		{ Vector(2336.7,-432.1,575.9), Angle(0,-90,90), 318.5, 639.6, w[4][2] },
	}, { -- Джойс 6
		{ Vector(2375.7,-813.1,199.9), Angle(0,-90,90), 378.1, 720, w[4][3] },
		{ Vector(2375.7,-685.1,199.9), Angle(0,-90,90), 378.1, 720, w[4][3] },
		{ Vector(2375.7,-685.1,327.9), Angle(0,-90,90), 378.1, 720, w[4][3] },
		{ Vector(2375.7,-813.1,327.9), Angle(0,-90,90), 378.1, 720, w[4][3] },
		{ Vector(2375.7,-813.1,455.9), Angle(0,-90,90), 378.1, 720, w[4][3] },
		{ Vector(2375.7,-685.1,455.9), Angle(0,-90,90), 378.1, 720, w[4][3] },
	}, { -- Джойс 8
		{ Vector(2480.7,-3032,203.9), Angle(0,-90,90), 399.9, 720, w[4][4] },
		{ Vector(2480.7,-2776.1,203.9), Angle(0,-90,90), 399.9, 720, w[4][4] },
		{ Vector(2480.7,-2776,332), Angle(0,-90,90), 399.9, 720, w[4][4] },
		{ Vector(2480.7,-3032.1,331.9), Angle(0,-90,90), 399.9, 720, w[4][4] },
		{ Vector(2480.7,-3032.1,460), Angle(0,-90,90), 399.9, 720, w[4][4] },
		{ Vector(2480.7,-2776.1,459.9), Angle(0,-90,90), 399.9, 720, w[4][4] },
		{ Vector(2480.7,-2776.1,587.9), Angle(0,-90,90), 399.9, 720, w[4][4] },
		{ Vector(2480.7,-3032.1,587.9), Angle(0,-90,90), 399.9, 720, w[4][4] },
	}, { -- Джойс 10
		{ Vector(3816.1,-3119.3,191.9), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3688.1,-3119.3,192), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3560.1,-3119.3,191.9), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3432,-3119.3,192), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3432,-3119.3,319.9), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3560.1,-3119.3,319.9), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3688.1,-3119.3,319.9), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3816.1,-3119.3,447.9), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3688,-3119.3,447.9), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3560.1,-3119.3,447.9), Angle(0,0,90), 320.1, 599.3, w[4][5] },
		{ Vector(3432.1,-3119.3,447.9), Angle(0,0,90), 320.1, 599.3, w[4][5] },
	}, { -- Джойс 13
		{ Vector(1466.3,-2750.9,199.6), Angle(0,90,90), 339.3, 631.8, w[4][6] },
		{ Vector(1466.3,-2935.9,199.6), Angle(0,90,90), 339.3, 631.8, w[4][6] },
		{ Vector(1466.3,-2991.9,199.6), Angle(0,90,90), 339.3, 631.8, w[4][6] },
		{ Vector(1466.3,-2992,331.5), Angle(0,90,90), 339.3, 631.8, w[4][6] },
		{ Vector(1466.3,-2935.9,331.6), Angle(0,90,90), 339.3, 631.8, w[4][6] },
		{ Vector(1466.3,-2806.9,331.6), Angle(0,90,90), 339.3, 631.8, w[4][6] },
	}, { -- Джойс 15
		{ Vector(1506.5,-3401.4,185.6), Angle(0,128.7,90), 291.4, 533.2, w[4][7] },
		{ Vector(1521.3,-3470.9,185.6), Angle(0,90,90), 291.4, 533.2, w[4][7] },
		{ Vector(1487.9,-3533.8,185.6), Angle(0,51.3,90), 291.4, 533.2, w[4][7] },
		{ Vector(1487.9,-3533.8,313.6), Angle(0,51.3,90), 291.4, 533.2, w[4][7] },
		{ Vector(1521.3,-3470.9,313.6), Angle(0,90,90), 291.4, 533.2, w[4][7] },
		{ Vector(1506.4,-3401.3,313.6), Angle(0,128.7,90), 291.4, 533.2, w[4][7] },
		{ Vector(1506.4,-3401.3,441.5), Angle(0,128.7,90), 291.4, 533.2, w[4][7] },
		{ Vector(1521.3,-3470.9,441.6), Angle(0,90,90), 291.4, 533.2, w[4][7] },
		{ Vector(1487.9,-3533.8,441.6), Angle(0,51.3,90), 291.4, 533.2, w[4][7] },
	}, { -- Стефан 2
		{ Vector(3692.2,-767.3,203.9), Angle(0,0,90), 398.3, 719.8, w[5][1] },
		{ Vector(3436.2,-767.3,203.9), Angle(0,0,90), 398.3, 719.8, w[5][1] },
		{ Vector(3564.1,-767.3,331.9), Angle(0,0,90), 398.3, 719.8, w[5][1] },
		{ Vector(3692.1,-767.3,459.9), Angle(0,0,90), 398.3, 719.8, w[5][1] },
		{ Vector(3564.1,-767.3,459.9), Angle(0,0,90), 398.3, 719.8, w[5][1] },
		{ Vector(3436.1,-767.3,459.9), Angle(0,0,90), 398.3, 719.8, w[5][1] },
		{ Vector(3436.1,-767.3,587.9), Angle(0,0,90), 398.3, 719.8, w[5][1] },
		{ Vector(3564.1,-767.3,587.9), Angle(0,0,90), 398.3, 719.8, w[5][1] },
		{ Vector(3692.1,-767.3,587.9), Angle(0,0,90), 398.3, 719.8, w[5][1] },
	}
}

function halloween.parseData(data)
	if not images then return {} end
	local response = {}
	for _, v in ipairs(data) do
		local window = windowPositions[v[1]][v[2]]
		response[#response + 1] = {
			pos = window[1],
			ang = window[2],
			url = {
				bg = window[5][1],
				window = window[5][2],
				shape = images[v[3]],
			},
			w = window[3],
			h = window[4],
		}
	end
	images, windowPositions = nil -- one-time call function
	return response
end
