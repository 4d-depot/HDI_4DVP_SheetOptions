C_TEXT:C284($js;$result)

If (FORM Event:C1606.code=On VP Ready:K2:59)
	VP IMPORT DOCUMENT ("ViewProArea";Get 4D folder:C485(Current resources folder:K5:16)+"Doc.4vp")
	Form:C1466.options:=VP Get sheet options ("ViewProArea")
	
	  // add event : "active sheet changed"
	$js:="Utils.spread.bind(GC.Spread.Sheets.Events.ActiveSheetChanged, function(sender, args){"
	$js:=$js+"$4d.ActiveSheetChanged();"
	$js:=$js+"});"
	$result:=WA Evaluate JavaScript:C1029(*;"ViewProArea";$js)
	
End if 