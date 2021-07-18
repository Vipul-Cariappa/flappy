function gameRead()
	local filename = sys.get_save_file("sys_save_load", "player")
	local info = sys.load(filename)
	local data = {}
	data[0] = info.point or 0
	data[1] = info.coin or 0
	return data
end

function gameWrite(point, coin)
	local info = gameRead()
	local new_coin = info[1] + coin
	local new_point = info[0]

	if new_point < point then
		new_point = point
	end

	local data = {}
	data.coin = new_coin
	data.point = new_point

	local filename = sys.get_save_file("sys_save_load", "player")
	sys.save(filename, data)

end