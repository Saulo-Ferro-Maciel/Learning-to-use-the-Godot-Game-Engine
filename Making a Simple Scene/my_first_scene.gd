extends Node2D

func _ready():
	var button = $Button
	button.text = "click me".replace(" ","_").to_upper()
	button.pressed.connect(self._button_pressed)

func _button_pressed():
	if $Sprite.visible == false:
		$Sprite.visible = true
		$Text.text='The button has been activated and\n the image is visible!\nO botão foi ativado e\n imagem está visivél!'
	else:
		if $Sprite.visible == true:
			$Sprite.visible = false
			$Text.text='The button has been disabled and\n the image is invisible!\nO botão foi desativado e\n imagem está invisivel!'
