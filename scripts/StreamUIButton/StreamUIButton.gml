#region //CreateStreamUIButton()
///@function CreateStreamUIButton()
///@description
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
#endregion