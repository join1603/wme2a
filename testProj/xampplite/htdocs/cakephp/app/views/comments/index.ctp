<h1>Mein erstes Blog</h1>
<table>
  <tr>
    <th>title</th>
    <th>commentId</th>
    <th>userId</th>
  </tr>
  <?php echo "DATABASE RESULT<br />"?>
  <?php var_dump($comments);?>
  <?php echo "<br /><br />TEST<br />"?>
  <?php var_dump($test);?>
  <?php echo "<br /><br />"?>
  <!– Hier wird nun eine Schleife eingefügt, die das $posts Array abarbeitet und pro Array-Zeile eine Tabellenzeile ausgibt –>
  <?php foreach($comments as $post) {?>
  <tr>
    <td><?php echo $html->link($post["Comment"]["title"], "/comment/");?></td>
    <td><?php echo $post["Comment"]["id"] ?></td>
	<td><?php echo $post["Comment"]["user_id"] ?></td>
  </tr>
  <?php }?>
</table> 