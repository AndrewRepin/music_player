# Import file "apple music ios 10_for_framer"
sketch = Framer.Importer.load("imported/apple music ios 10_for_framer@1x")

#Слайдер времени и его настройки	
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


play = new Layer
	x: 348
	y: 1027
	width: 64
	height: 71
	image: "images/play.pdf"
	

next = new Layer
	x: 535
	y: 1042
	width: 78
	height: 44
	image: "images/next.pdf"
	

back = new Layer
	x: 137
	y: 1042
	width: 78
	height: 44
	image: "images/back.pdf"

pause = new Layer
	x: 348
	y: 1027
	width: 56
	height: 72
	image: "images/pause.pdf"
pause.visible =  false

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

greyCircle = new Layer
	x: 296
	y: 985
	width: 157
	height: 157
	borderRadius: 100
	backgroundColor: "eee"
greyCircle.visible = false
greyCircle.placeBehind(pause)

albom_cover = new Layer
	width: 498
	height: 498
	image: "images/computergraphics-album-covers-2014-18.jpg"
	x: Align.center
	y: 182
	borderRadius: 18
	shadowColor: "B6B6B6"
	shadowBlur: 42
	shadowX: 4


play.on Events.Click,->
	
	greyCircle.visible = true
	greyCircle.opacity = 1
	greyCircle.scale = 0.8
	 
	pause.visible = true
	pause.opacity = 1
	pause.scale = 0.8
	
	albomCopy = albom_cover.copySingle()
	albomCopy.placeBehind(albom_cover)
	
	pause.animate
		properties: 
			opacity: 1
			scale: 1
		time: 0.4
		
	play.animate
		properties: 
			opacity: 0
			scale: 0.8
		time: 0.2
		
	greyCircle.animate
		properties:
			scale: 1
			opacity: 1
		curve: "ease-in"
		time: 0.15
	
	
	albom_cover.animate
		properties:
			borderRadius: 12
			scale: 1.25
		curve: "spring(400,40,12)"
		time: 0.4
		
	albomCopy.animate
		properties:
			y: 214
			opacity: 0.7	 
			scale: 1.25
			blur: 30
		curve: "spring(400,40,12)"
		time: 0.4
		
		
#Слушаем, когда закончится первая анимация серого кружочка.и выключаем его
greyCircle.on Events.AnimationEnd, ->
	this.animate
		properties:
			opacity: 0
		time: 0.15
		
pause.on Events.Tap,->
	greyCircle.visible = true
	greyCircle.opacity = 1
	greyCircle.scale = 0.8
	play.scale = 0.8
	albom_cover.scale = 1.25
	
	pause.animate
		properties: 
			opacity: 0
			scale: 1
		time: 0.4
		
	play.animate
		properties: 
			opacity: 1
			scale: 1
		time: 0.2
	
	albom_cover.animate
		properties: 
			scale: 0.8

		
		
	
	
	





























