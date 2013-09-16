<?php include_once('db.inc.php')?>
<?php include_once('quizFunctions.php');

$questions = getQuestions();


header('Content-Type: application/json');

$jsonOutput =  json_encode($questions);

/* Output the JSON data */

echo $jsonOutput;





?>









