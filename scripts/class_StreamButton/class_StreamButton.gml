///@function StreamUIButton()
///@description Creates a Button that preforms an action when clicked upon.
///@return StreamUI Button

function StreamUIButton() : StreamUIElement() constructor
{	
	Element_Type = ELEMENT_BUTTON;
	
	#region //CallbackAction(): Buttons callback function when interacted with (either mouse click or keyboard/gamepad button press.)
	CallbackAction = function()
	{
		
	};
	#endregion
	
	return self;
}