<?php if($results) { ?>
	<table>
	  <tr>
		<th>id</th>
		<th>title</th>
		<th>description</th>
		<th>tags</th>
		<th>views</th>
		<th>created</th>
		<th>author</th>
		<th>rating</th>
	  </tr>
	  <!-- php echo "DATABASE RESULT<br />"?>
	  < php var_dump($comments);?>
	  < php echo "<br /><br />-->
	  <?php foreach($results as $result) {?>
	  <tr>
		<td><?php echo $result["Photo"]["id"] ?></td>
		<td><?php echo $html->link($result["Photo"]["title"], "/photos/");?></td>
		<td><?php echo $result["Photo"]["description"] ?></td>
		<td><?php foreach($result["Tag"] as $t) {echo $t["tag_name"]."<br />";} ?></td>
		<td><?php echo $result["Photo"]["views"] ?></td>    
		<td><?php echo $result["Photo"]["created"] ?></td>    
		<td><?php echo $result["Photo"]["user_name"] ?></td>    
		<td><?php $rt=0; foreach($result["Rating"] as $r) {$rt+=$r["value"];} if(sizeof($result["Rating"])>0)$rt=$rt/sizeof($result["Rating"]); else $rt=0; echo $rt; ?></td>    
	  </tr>
	  <?php }?>
	</table> 
<?php }?>
<?php 
	if($resultsx) { 
		$x = $xml;
		$xs = "";
		$xs .= $x->header();
		$x->addNS('pp', 'http://www-mmt.inf.tu-dresden.de/Lehre/Sommersemester_10/Vo_WME/Uebung/material/photonpainter');
		$xs .=  $x->elem('pp:photos', null, null, false).">";
		foreach ($resultsx as $row) {
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
		?><textarea style="height:200px; font-size:10pt;"><?php echo $xs;?></textarea><?php
	}
?>  