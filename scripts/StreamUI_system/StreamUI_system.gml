#region //StreamUIContainer()
///@function StreamUIContainer(X, Y, Width, Height)
///@description Creates a Container to hold pages of UI Elements.
///@param {int} X
///@param {int} Y
///@param {int} Width
///@param {int} Height
///@return StreamUI Container

function StreamUIContainer(_x, _y, _width, _height) constructor
{
	#region //Declare the UI Container's Properties.
	self.X = _x;		   //The X Position of the UI Container (X Position).
	self.Y = _y;		   //The Y Position of the UI Container (Y Position).
	self.Width = _width;   //The Width of the UI Container.
	self.Height = _height; //The Height of the UI Container.

	self.Pages = ds_map_create(); //Declare the Map of Pages that Container that themselves contain UI Elements.
	self.ActivePage = -1;         //The Current Page being shown/active.
	self.OldPage = -1;            //Used when doing a OnTransition function.
	self.Transition = false;      //When transitioning to a new page, set this to true.
	#endregion
	
	#region //Container Functions.
	#region //GetXPosition()
	GetXPosition = function()
	{
		return self.X;
	};
	#endregion
	#region //GetYPosition()
	GetYPosition = function()
	{
		return self.Y;
	};
	#endregion
	#region //GetWidth()
	GetWidth = function()
	{
		return self.Width;
	};
	#endregion
	#region //GetHeigth()
	GetHeight = function()
	{
		return self.Height;
	};
	#endregion
	#region //OnPageTransition()
	OnPageTransition = function(_transition_sequence)
	{
		layer_sequence_play(_transition_sequence);
	}
	#endregion
	#endregion
	#region //Page Functions.
 	#region //GetPage()
	GetPage = function(_key)
	{
		return ds_map_find_value(self.Pages, _key);
	};
	#endregion
	#region //GetPageID()
	GetPageID = function(_id_num)
	{
		var _array = ds_map_keys_to_array(self.Pages);
	
		for (var i = 0; i < array_length(_array); i++)
		{
			var _page_struct = ds_map_find_value(self.Pages, _array[i]);
				
			if (_page_struct.ID_Num == _id_num)
			{
				return _page_struct;
				break;
			}
			else if (i == array_length(_array))
			{
				return undefined;
				break;
			}
		}		
	}
	#endregion
	#region //GetActivePage()
	GetActivePage = function()
	{
		return self.ActivePage;
	};
	#endregion
	#region //ActivatePage()
	ActivatePage = function(_page_string, _transition_sequence)
	{
		if (ds_map_exists(self.Pages, _page_string))
		{
			self.OldPage = self.ActivePage; //Set the old page to the (right now) current page before changing the active page.
			self.ActivePage = _page_string; //Set the New Active Page.
			
			#region //If the sequence is provided (and is an actually sequence asset) then execute the page's OnTransitionIn function.
			if (_transition_sequence != undefined)
			{
				if (sequence_exists(_transition_sequence) == true)
				{
					self.Transition = true;
					self.OnPageTransition(_transition_sequence);
				}
			}
			#endregion
		}
	};
	#endregion
	#endregion

	return self;
}
#endregion
#region //StreamUIPage()
///@function StreamUIPage(_id_name)
///@description Creates a Page Struct containing UI Elements.
///@return StreamUI Page

function StreamUIPage(_id_name) constructor
{
	Elements = ds_list_create();		
	return self;
}
#endregion