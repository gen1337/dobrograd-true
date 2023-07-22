local work = {}
work.priority = 100

function work.start(ply, time, maxDist)

	local camera, box
	for i, v in RandomPairs(ents.FindByClass('ent_dbg_camera')) do
		if v:GetNetVar('broken') and not v.pendingWorker and v:GetPos():DistToSqr(ply:GetPos()) < maxDist then
			camera = v
			break
		end
	end
	if not IsValid(camera) then return end

	for i, v in RandomPairs(ents.FindByClass('ent_dbg_workerbox')) do
		if v:GetPos():DistToSqr(camera:GetPos()) < maxDist then box = v break end
	end
	if not IsValid(box) then return end

	ply:AddMarker {
		id = 'work1',
		txt = L.take_details,
		pos = box:GetPos() + Vector(0,0,40),
		col = Color(255,92,38),
		des = {'time', {time}},
		icon = 'octoteam/icons-16/setting_tools.png',
	}

	ply:AddMarker {
		id = 'work2',
		txt = L.repair,
		pos = camera:ScreenPos(),
		col = Color(255,92,38),
		des = {'time', {time}},
		icon = 'octoteam/icons-16/wrench_orange.png',
	}

	local items = {}
	if math.random(3) == 1 then table.insert(items, {'tool_wrench', 1}) end
	if math.random(3) == 1 then table.insert(items, {'tool_solder', 1}) end
	if math.random(3) == 1 then table.insert(items, {'tool_screwer', 1}) end
	if #items < 1 then table.insert(items, {'tool_screwer', 1}) end
	if math.random(3) == 1 then table.insert(items, {'craft_screwnut', 5}) end
	if math.random(3) == 1 then table.insert(items, {'craft_screw2', 5}) end
	if math.random(3) == 1 then table.insert(items, {'craft_resistor', 3}) end
	if math.random(3) == 1 then table.insert(items, {'craft_relay', 2}) end
	if math.random(3) == 1 then table.insert(items, {'craft_scotch', 1}) end
	if math.random(3) == 1 then table.insert(items, {'craft_glue', 1}) end
	if math.random(3) == 1 then table.insert(items, {'craft_bulb', 2}) end

	if box.inv.conts[ply:SteamID()] then box.inv.conts[ply:SteamID()]:Remove() end
	local cont = box.inv.conts[ply:SteamID()] or box.inv:AddContainer(ply:SteamID(), {name = L.city_warehouse, volume = 250, icon = octolib.icons.color('box1')})
	for i, v in ipairs(items) do cont:AddItem(v[1], v[2]) end

	camera:SetWork(ply, {
		items = items,
		time = math.random(10, 40),
		finish = function(ply)
			camera:Repair()
			dbgWork.finishWork(ply)
		end,
	})

	return {
		msg = 'Кто-то разбил камеру видеонаблюдения, возьми детали на складе и почини ее',
		cancelOnFinish = true,
		camera = camera,
		cont = cont,
	}

end

function work.finish(work)

	dbgWork.giveReward(work, 200, 250)

end

function work.cancel(work)

	if work.cont then work.cont:Remove() end
	if IsValid(work.camera) then
		work.camera.pendingWorker = nil
		work.camera.finish = nil
	end

end

dbgWork.registerWork('camera', work)
