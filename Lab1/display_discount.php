<?php
    // get the data from the form
    $farenheight_temp = $_POST['farenheight_temp'];
    
    // convert temp
    $celsius_temp = ($farenheight_temp - 32) * 5/9;   
	
	// apply degree formatting
    $farenheight_temp_formatted = $farenheight_temp."&deg";
    $celsius_temp_formatted = $celsius_temp."&deg";

	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
    <div id="content">
        <h1>Temp Conversion Calculator</h1>

        <label>Farenheight Temp:</label>
        <span><?php echo $farenheight_temp_formatted; ?></span><br />

        <label>Celsius Temp:</label>
        <span><?php echo $celsius_temp_formatted; ?></span><br />

        <p>&nbsp;</p>
    </div>
</body>
</html>