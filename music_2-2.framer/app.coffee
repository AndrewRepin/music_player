# Import file "apple music ios 10"
sketch = Framer.Importer.load("imported/apple music ios 10@1x")

# Song time slider	
timeSlider = new SliderComponent
	x: Align.center
	y: 782
	width: Screen.width - 128
	height: 6
	backgroundColor: "D8D8D8"
timeSlider.borderRadius =100
timeSlider.knobSize = 14
timeSlider.knob.backgroundColor = "8E8E93"
timeSlider.fill.backgroundColor = "8E8E93"

timeStart = new Layer
	height: 34
	width: 60
	y: 800
	x: 60
	backgroundColor: null
	color: "8E8E93"
	html: "0:00"
	style: 
		fontFamily: "SF UI Display"
		fontSize: 28
		fontWeight: "bold"
		textAlign: "left"

timeEnd = new Layer
	height: 34
	width: 60
	y: 800
	x: 615
	backgroundColor: null
	color: "8E8E93"
	html: "-4:32"
	style: 
		fontFamily: "SF UI Display"
		fontSize: "28px"
		fontWeight: "bold"
		textAlign: "right"

soundSlider = new SliderComponent
	x: Align.center
	y: 1182
	width: Screen.width - 224
	height: 6
	backgroundColor: "D8D8D8"
soundSlider.borderRadius = 100
soundSlider.knobSize = 56
soundSlider.knob.borderRadius = 200
soundSlider.fill.backgroundColor = "8E8E93"
soundSlider.knob.shadowBlur = 9
soundSlider.knob.shadowY = 4
soundSlider.knob.x = 0

albom_cover = new Layer
	width: 498
	height: 498
	image: "images/141499.jpg"
	x: Align.center
	y: 182
	borderRadius: 18
	shadowColor: "B6B6B6"
	shadowBlur: 42
	shadowX: 4

