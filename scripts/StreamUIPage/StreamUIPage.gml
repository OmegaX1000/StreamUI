#region //CreateStreamUIPage()
///@function CreateStreamUIPage(ID)
///@description Creates a UI Page in the Container this is called in.
///@param {string} ID
///@return ID

function CreateStreamUIPage(_id)
{
	with (other)
	{
		var _page = new StreamUIPage(_id);
		ds_map_set(other.Pages, _id, _page);
	}
	
	return _id;
}
#endregion
#region //DestroyStreamUIPage()
///@function DestroyStreamUIPage(ID)
///@description Destroys a UI Page.
///@param {string} ID
///@return N/A

function DestroyStreamUIPage(_id)
{
	if (is_struct(ds_map_find_value(other.Pages, _id)))
	{
		var _page = ds_map_find_value(other.Pages, _id)
		delete _page;
		
		return undefined;
	}
}
#endregion