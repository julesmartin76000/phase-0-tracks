classroom = {
	desk_1:{
		english_book:'How to learn english',
		pencil_case:[
			"red pen": 2,
			"green pen": 3
		]
	},
	desk_2:{
		french_book:'How to learn french',
		diary: '300 hundreds pages'
	},
	desk_3:{
		spanish_book:'How to learn spanish',
		pencil_case:[
			"red pen": 4,
			"green pen": 5,
		]
	}
}

#add a bllue pen in desk_3
classroom[:desk_3][:pencil_case].push("blue pen": 1)
