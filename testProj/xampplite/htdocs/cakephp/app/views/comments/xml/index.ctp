<?php
	if($results && sizeof($results)>0) { 
		// builds xml tree from db results
		$x = $xml;
		$xs = "";
		$xs .= $x->header();
		$x->addNS('pp', 'http://www-mmt.inf.tu-dresden.de/Lehre/Sommersemester_10/Vo_WME/Uebung/material/photonpainter');
			$xs .=  $x->elem('pp:comments', null, null, false).">";
				foreach ($results as $r) {
					$comment_text = $r['Comment']['comment_text'];
					unset($r['Comment']['comment_text']);
					unset($r['Comment']['modified']);
					$xs .=  $x->elem('pp:comment', $r['Comment'], $comment_text, false);
					$xs .=  $x->closeElem();
				}
			$xs .=  $x->closeElem();	
		?><center><textarea style="height:400px; width:96%; font-size:10pt;"><?php echo $xs;?></textarea></center><?php
	} 
	else 
	{
		?><br /><b><font color='red'>&nbsp;No Content - 204 Error</font><b><br /><?php
	}
?>