#region //StreamUIContainer()
///@function StreamUIContainer(X, Y, Width, Height)
///@description Creates a Container to hold all of the elements of the specific UI. (ex: Menu = New StreamUIContainer(10, 10, 400, 400)).
///@param {int} X
///@param {int} Y
///@param {int} Width
///@param {int} Height
///@return StreamUI Container

function StreamUIContainer(_x, _y, _width, _height) constructor
{
	#region //Declare the UI Container's Dimensions.
	self.X = _x;		   //The X Position of the UI Container (X Position).
	self.Y = _y;		   //The Y Position of the UI Container (Y Position).
	self.Width = _width;   //The Width of the UI Container.
	self.Height = _height; //The Height of the UI Container.
	#endregion	
	#region //Make a list, containing all of the UI Elements Contained in this Container.
	self.Elements = ds_list_create();
	#endregion
	
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
	
	//Return the Struct.
	return self;
}
#endregion