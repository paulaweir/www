<?php 

/*function to get questions from the database -----
 * 
 * 
 * --*/
 
 
 
	function getQuestions() {
	$sql = "SELECT t1.quiz_id, t2.* FROM quiz_questions t1 ";
	$sql .= " join questions t2 on t1.question_id = t2.question_id";
	$sql .= " where quiz_id = 1";
			
	$result = mysql_query($sql);

	$questions = array();
	while ($record = mysql_fetch_assoc($result)) {
			
	//	print_r($record);
			$answers = getAnswers($record['question_id']);
		
			$questions[] = array('question_id'=>$record['question_id'], 'question_text'=>$record['question_text'], 'answers'=>$answers);
	}
	return $questions;
}
/*end get questions function _______
 * _______*/

 
 
 
 
 
/*Function to get answers from database -------*/


function getAnswers($question_id) {
	
	$sql = "SELECT *  FROM answers t1 ";
	$sql .= " where question_id = $question_id";
		
	$result = mysql_query($sql);
	
	$answers = array();
	while ($record = mysql_fetch_assoc($result)) {
		
		//	print_r($record);
	
		$answers[] = array('question_id'=>$question_id, 'answer_id'=>$record['answer_id'],'answer_text'=>$record['answer_text'],'correct'=>$record['correct']);
	}

	return $answers;

}

/*end get answers function -----
 * 
 * --------*/
 
 
 /*Function to save answers from quiz and insert to db*
*/

function saveGuestAnswers($memberData) {
	
	$guest_id = (int) $memberData['guest_id'];

		foreach($memberData['answer'] as $key => $value) {
	
		$answer_id = (int) $value;
			
		$sql = "INSERT INTO scoreboard (fk_user_id, answer_id) values ('$guest_id','$answer_id')";
	
		echo "<p>$sql</p>";
		
		mysql_query($sql);
		
		echo "<p>Guest $guest_id  chose question $key and answered with answer $value</p>";
	}
} 

/*End of the function to save the quiz answers callled on by the submit answer php file*/



/*Function To get the score of the user */

function getGuestScore($guest_id) {
	
	$sql = "select user_first_name as firstName, user_last_name as lastName, count(*) as correctAnswers 
			from  users, answers, scoreboard
			where users.pk_user_id = scoreboard.fk_user_id
			and scoreboard.answer_id = answers.answer_id
			and fk_user_id =  $guest_id 
			and correct = '1'";
	
	$result = mysql_query($sql);
	
	$record = mysql_fetch_assoc($result);
	
	return $record;
	
	/*$result = mysql_query($sql);

	$score = array();
	while ($score = mysql_fetch_assoc($result)) {
			
	//	print_r($record);
			//$answers = getAnswers($record['question_id']);
		
	$score[] = array('firstName'=>$score['firstName'], 'lastName'=>$score['lastName'], 'score'=>$score['correctAnswers']);
	}
	return $score;*/
	
	
}

/*end of the function to get speific user score */






?>