<?php 
	if($results && sizeof($results)>0) {
		// builds xml tree from db results
		$x = $xml;
		$xs = "";
		$xs .= $x->header();
		$x->addNS('pp', 'http://www-mmt.inf.tu-dresden.de/Lehre/Sommersemester_10/Vo_WME/Uebung/material/photonpainter');
		$xs .=  $x->elem('pp:photos', null, null, false).">";
		foreach ($results as $row) {
			$row['Photo']['author'] = 1;
			unset($row['Photo']['user_id']);
			$description = $row['Photo']['description'];
			unset($row['Photo']['description']);
			$xs .=  $x->elem('pp:photo', $row['Photo'], null, false).">";
				$xs .=  $x->elem('pp:comments', null, null, false).">";
					foreach ($row['Comment'] as $r) {
						$comment_text = $r['comment_text'];
						unset($r['comment_text']);
						$xs .=  $x->elem('pp:comment', $r, $comment_text, false);
						$xs .=  $x->closeElem();
					}
				$xs .=  $x->closeElem();	
				$xs .=  $x->elem('pp:ratings', null, null, false).">";	
					foreach ($row['Rating'] as $r) {
						$xs .=  $x->elem('pp:rating', $r, null, false).">";
						$xs .=  $x->closeElem();
					}
				$xs .=  $x->closeElem();
				$xs .=  $x->elem('pp:tags', null, null, false).">";
					foreach ($row['Tag'] as $r) {
						$xs .=  $x->elem('pp:tag', $r, $r['tag_name'], false);
						$xs .=  $x->closeElem();
					}
				$xs .=  $x->closeElem();
				$xs .=  $x->elem('pp:description', null, $description, false);
				$xs .=  $x->closeElem();
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