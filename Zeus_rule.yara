rule Zeus {
	meta:
		
	  author ="Blip"
	  description="A detection rule agains ZeusBankingVersion_26Nov2013"
	  
	
	strings:
	
	  $file_name="invoice_2318362983713_823931342io.pdf.exe" ascii
	  
	  // Suspected name of functions and DLL fucntionalities
	  
	  $function_name_KERNEL32_CreateFileA="CellrotoCrudUntohighCols" ascii
	  
	  //PE Magic Byte.
	  
	  $PE_magic_byte="MZ"
	
	  // Hex String Function name
	  
	  $hex_string = {43 61 6D 65 56 61 6C 65 57 61 75 6C 65 72}
	  
	condition:
	
	$PE_magic_byte at 0 and $file_name
	and $function_name_KERNEL32_CreateFileA
	or $hex_string
}
