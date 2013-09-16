<?php include_once('db.inc.php')?>
<?php include_once('quizFunctions.php');

$guest_id = isset($_REQUEST['guest_id']) ? (int) $_REQUEST['guest_id'] : 1;

header('Content-Type: application/json');


$jsonOutput =  json_encode(getGuestScore($guest_id));

echo $jsonOutput;


/*$correctAnswers = getGuestScore($guest_id);
echo "<p>Score for guest $guest_id is $correctAnswers </p>";
 */
 
/* 
$guest_id = isset($_REQUEST['guest_id']) ? (int) $_REQUEST['guest_id'] : 1;
header('Content-Type: application/json');
$jsonOutput =  json_encode(getGuestScore($guest_id));
echo $jsonOutput;
$correctAnswers = getGuestScore($guest_id);
echo "<p>Score for guest $guest_id is $correctAnswers </p>";
*/

getScoreboard();

echo "<p>Score for guest $guest_id is $correctAnswers";


//getScoreboard();


//echo "<p>Score for guest $guest_id is $correctAnswers";


//getScoreboard();

//header("Location: contact.php?status=thanks");
		//exit;
//header("Location: index.html/#page7");
		//exit;
?>