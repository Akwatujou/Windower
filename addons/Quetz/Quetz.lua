_addon.author   = 'Kaotic'
_addon.version  = '1.2'
_addon.commands = {'Quetz'}

require('logger')
require('coroutine')
packets = require('packets')
res = require('resources')


function test()
        local p = packets.new('outgoing', 0x05B, {
		['Target'] = 17203944,
		['Option Index'] = 1,		
		['_unknown1'] = 99,
		['Target Index'] = 744,
		['Automated Message'] = false,
		['_unknown2'] = 0,		
		['Zone'] = 104,
		['Menu ID'] = 61,
		})
        packets.inject(p)
		log('salepute3')

end



windower.register_event('addon command', function(input, ...)
    local cmd = string.lower(input)
	local args = {...}
	
	if cmd == 'stop' then
		stop()
    elseif cmd == 'start' then
		start()
	elseif cmd == 'exit' then
		exitArena()
	elseif cmd == 'enter' then
		enterArena()
	elseif cmd == 'move' then
		moveToLocation()
	elseif cmd == 'test' then
		test()
	elseif cmd == 'fight' then
		fight()
	elseif cmd == 'reisen' then
		enterReisen()
    end
end)