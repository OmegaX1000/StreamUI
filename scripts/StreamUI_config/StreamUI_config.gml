#macro STREAM_UI_VERSION "0.0.1"
#macro STREAM_UI_DATE "05-26-2021"

enum ElementType 
{
	Button       = 0,
	RadioButton  = 1,
	CheckBox     = 2,
	ToggleSwitch = 3,
	CycleButton  = 4
}

//ElementType Macro's
#macro ELEMENT_BUTTON       ElementType.Button
#macro ELEMENT_RADIOBUTTON  ElementType.RadioButton
#macro ELEMENT_CHECKBOX     ElementType.CheckBox
#macro ELEMENT_TOGGLESWITCH ElementType.ToggleSwitch
#macro ELEMENT_CYCLEBUTTON  ElementType.CycleButton

//StreamUI Constants
#macro ELEMENT_CREATION_ACTIVE true