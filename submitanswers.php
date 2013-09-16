<?php include_once('db.inc.php')?>
<?php include_once('quizFunctions.php');


header('Content-Type: application/json');

//print_r($_POST);

$guest_id = (int) $_POST['guest_id'];

parse_str(urldecode($_REQUEST['formData']),$memberData);

//echo $_POST;
//echo $guest_id;
//saveGuestAnswers($_POST);

saveGuestAnswers($memberData);

$jsonOutput =  json_encode(true);

/* Output the JSON data */

//echo $jsonOutput;

//$correctAnswers = getGuestScore($guest_id);
//echo "<p>Score for guest $guest_id is $correctAnswers </p>";


//getScoreboard();


//echo "<p>Score for guest $guest_id is $correctAnswers";


?>