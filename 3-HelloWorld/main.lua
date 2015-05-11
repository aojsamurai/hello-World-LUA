local myTextField = display.newText("Hello World", 100, 30, nil, 24)

local button = display.newImage("button.png")
button.x = 150
button.y = 180

local beep = audio.loadSound("beep.caf")

function onClick( event )
	-- body
	print("click")
	audio.play(beep)

	local red_color = math.random(255)
	local green_color = math.random(255)
	local blue_color = math.random(255)

	myTextField:setTextColor(red_color, green_color, blue_color)

end
button:addEventListener("tap", onClick)