///@function StreamUIElement()
///@description A template for every element created.
///@return StreamUI Element

function StreamUIElement() constructor
{
	Element_Type = -1;
	Enable = ELEMENT_CREATION_ACTIVE;
	
	#region //OnEnable()
	onEnable = function()
	{
		
	};
	#endregion
	#region //OnDisable()
	onDisable = function()
	{
		
	};
	#endregion
	#region //OnHover()
	onHover = function()
	{
		
	};
	#endregion
	
	return self;
}