<?php if($results) { ?>
	<table>
	  <tr>
		<th>title</th>
		<th>commentText</th>
		<th>created</th>
		<th>modified</th>
		<th>commentId</th>
		<th>photoId</th>
		<th>userId</th>
	  </tr>
	  <!-- php echo "DATABASE RESULT<br />"?>
	  < php var_dump($result);?/-->
	  <?php foreach($results as $result) {?>
		  <tr>
			<td><?php echo $html->link($result["Comment"]["title"], "/comment/");?></td>
			<td><?php echo $result["Comment"]["comment_text"]; ?></td>
			<td><?php echo $result["Comment"]["created"]; ?></td>
			<td><?php echo $result["Comment"]["modified"]; ?></td>
			<td><?php echo $result["Comment"]["id"]; ?></td>
			<td><?php echo $result["Comment"]["photo_id"]; ?></td>
			<td><?php echo $result["Comment"]["user_id"]; ?></td>
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
			$xs .=  $x->elem('pp:comments', null, null, false).">";
				foreach ($resultsx as $r) {
					echo var_dump($r['Comment']);
					$comment_text = $r['Comment']['comment_text'];
					unset($r['Comment']['comment_text']);
					unset($r['Comment']['modified']);
					$xs .=  $x->elem('pp:comment', $r['Comment'], $comment_text, false);
					$xs .=  $x->closeElem();
				}
			$xs .=  $x->closeElem();	
		?><textarea style="height:200px; font-size:10pt;"><?php echo $xs;?></textarea><?php
	}
?>  
