<?php include_once('db.inc.php')?>
<?php include_once('quizFunctions.php');


$questions = getQuestions();
//print_r($questions);

foreach($questions as $question ) {
	
	echo "<h1>"  . $question['question_text'] . "</h1>";	
	echo "<ul>";
	foreach($question['answers'] as $answer) {
		
		echo "<li>";
		echo $answer['answer_text'];
		echo "</li>";	
	}
	echo "</ul>";
}



//getScoreboard( );

?>









