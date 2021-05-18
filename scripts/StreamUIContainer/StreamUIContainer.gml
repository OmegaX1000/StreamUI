#region //CreateStreamUIContainer()
///@function CreateStreamUIContainer(X, Y, Width, Height)
///@description Creates a UI Container, puts it into a list, and returns the struct.
///@param {int} X
///@param {int} Y
///@param {int} Width
///@param {int} Height
///@return StreamUI Container

function CreateStreamUIContainer(_x, _y, _width, _height)
{
	with (new StreamUIContainer(_x, _y, _width, _height))
	{		
		self.ActivePage = CreateStreamUIPage("MainPage");
		return self;		
	}
}
#endregion
#region //DestroyStreamUIContainer()
///@function StreamUIDestroyContainer(_container)
///@description Destroy's a UI Container and all of it's contents.
///@param {Struct} UI Container
///@return N/A

function DestroyStreamUIContainer(_container)
{
	if (is_struct(_container))
	{
		delete _container;
		return undefined;
	}
}
#endregion