///@function StreamUIPage(_id_name)
///@description Creates a Page Struct containing UI Elements.
///@return StreamUI Page

function StreamUIPage(_id_name) constructor
{
	Elements = ds_list_create();		
	return self;
}