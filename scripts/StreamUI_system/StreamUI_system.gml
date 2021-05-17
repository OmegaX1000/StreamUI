#region //StreamUICreateContainer()
///@function StreamUICreateContainer(X, Y, Width, Height)
///@description Creates a Container to hold all of the elements of the specific UI. (ex: Menu = New StreamUIContainer(10, 10, 400, 400)).
///@param {int} X
///@param {int} Y
///@param {int} Width
///@param {int} Height
///@return StreamUI Container

function StreamUICreateContainer(_x, _y, _width, _height) constructor
{
	#region //Declare the UI Container's Properties.
	self.X = _x;		   //The X Position of the UI Container (X Position).
	self.Y = _y;		   //The Y Position of the UI Container (Y Position).
	self.Width = _width;   //The Width of the UI Container.
	self.Height = _height; //The Height of the UI Container.

	self.Pages = ds_map_create(); //Declare the Map of Pages that Container that themselves contain UI Elements.
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
	#region //CreatePage()
	CreatePage = function(_id)
	{
		#region //Define a StreamUI Page.
		var _page = 
		{
			ID_Num: ds_map_size(self.Pages),
			Elements: ds_list_create()
		};
		#endregion
		#region //Add The Page to the ds_map and return the ID.
		ds_map_set(self.Pages, _id, _page); //Add the page to the ds_map.
		return _id; //Return the Page ID.
		#endregion
	}
	#endregion
	#region //DestroyPage()
	DestroyPage = function(_id)
	{
		ds_map_delete(self.Pages, _id);
	};
	#endregion
 	#region //GetPage()
	GetPage = function(_id)
	{
		return ds_map_find_value(self.Pages, _id);
	}
	#endregion
	#region //GetActivePage()
	GetActivePage = function()
	{
		return self.ActivePage;
	}
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
					self.OnPageTransition(_transition_sequence);
				}
			}
			#endregion
		}
	}
	#endregion
	#endregion
	
	#region //Create the Main Page and Return the Struct.
	self.ActivePage = CreatePage("MainPage"); //The Current Page being shown/active.
	self.OldPage = -1; //Used when doing a OnTransition function.
	return self;
	#endregion
}
#endregion
#region //StreamUIDestroyContainer()
///@function StreamUIDestroyContainer(_container)
///@description Destroy's a UI Container and all of it's contents.
///@param {Struct} UI Container
///@return N/A

function StreamUIDestroyContainer(_container)
{
	if (is_struct(_container))
	{
		delete _container;
		return undefined;
	}
}
#endregion