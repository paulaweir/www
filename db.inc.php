<?php 

/*
 * Declare a number of constants that you can change depending on your application
*/
define("DB_HOST","localhost");
define("DB_USER","root");
define("DB_PASSWORD","root");
define("DB_DATABASE","finalem");

/*
 * Declare a number of constants that you can change depending on your application
*/

$link_id=@mysql_connect(DB_HOST,DB_USER,DB_PASSWORD);
if($link_id) {
	
	//echo "Successful Connection";
} else {

	//echo "UnSuccessful Connection: " . DB_HOST;
	EXIT;
}

if(mysql_select_db(DB_DATABASE,$link_id)) {
	//echo "<p>Connection to database successful </p>";
} else {

	//echo "<p>Connection to database failed  </p>";
}

?>