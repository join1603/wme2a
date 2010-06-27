<?php 
	if($results){
		?><center><textarea style="height:400px; width:96%; font-size:10pt;"><?php echo $xmlbuilder->photosToXml($results);?></textarea></center><?php
	}
	else 
	{
		?><br /><b><font color='red'>&nbsp;No Content - 204 Error</font><b><br /><?php
	}
?>