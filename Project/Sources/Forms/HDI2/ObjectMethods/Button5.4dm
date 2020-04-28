C_LONGINT:C283($color)

  // choice of new color
$color:=Select RGB color:C956()
If (Bool:C1537(OK))
	Form:C1466.options.selectionBorderColor:=SVG_Color_RGB_from_long ($color;1)
	
	VP SET SHEET OPTIONS ("ViewProArea";Form:C1466.options)
End if 