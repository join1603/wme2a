<?php

class CommentController extends AppController {

    var $name = "Comments";
    
    function index() {
	
	// URL Beispiele
	// http://localhost/cakephp/comment?user_id=2
	// http://localhost/cakephp/comment?photo_id=1
	// http://localhost/cakephp/comment?id=1&user_id=1
	
	echo "DEBUGGING <br />-------------<br />";
	
	$urlParams = array();
	$model = " ";
	
	foreach ($this->params['url'] as $key => $val) {
		if ($key=="url") {
			$model=ucfirst($val); // first letter uppercase
			echo $key . " = " . $val . "<br />";
		}
		else {
			$urlParams[$key]=$val;
			echo $key . " = " . $val . "<br />";
		}
	}
	if ($urlParams) {
		// generates conditions from GET params
		$cond = "";
		foreach	($urlParams as $k => $v) {
			$cond .= $model . "." . $k . " = " . $v . " AND ";
		}
		$cond = substr($cond,0,strlen($cond)-5); //delete last " AND "
		// debugging
		echo "§model = " . $model . " | §cond = " . $cond . "<br/>";
		// db request
		$eintraege = $this->Comment->find('all', array(
			'conditions' => array($cond),
			'fields' => array($model.".id", $model.".title", $model.".user_id")
		));
	}
	else {
		$eintraege = $this->Comment->find('all');
	}
	
	$this->set("comments",$eintraege);
	$this->set("test",$urlParams); //debugging
    }
}

?>
