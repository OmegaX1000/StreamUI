///@function CreateStreamUIButton()
///@description Creates a StreamUI Button Struct.
///@return StreamUI Button

function CreateStreamUIButton()
{
	with (other)
	{
		if (instanceof(other) == "StreamUIPage")
		{
			var _button = new StreamUIButton();
			ds_list_add(other.Elements, _button);
			return _button;
		}
	}
}