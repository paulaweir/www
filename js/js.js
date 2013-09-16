/**
 * @author paula
 */


//begin listening for event calls function 
function addButtonListeners(){
	
	// check in console to see registration of button listening function
			
			console.log("addButtonListeners");
	
	//event handlers will exist with the button listening function 
	
/////////////////////////////////////////////////////////////////////	

$("#login").on('click', function() {
	//function validate() {
		console.log('validate');
		var count = 2;
		var un = document.myform.username.value;
		var pw = document.myform.pword.value;
		var valid = false;
		var unArray = ["admin", "Paula", "Jason", "Adam"];  // hardcoded array to use for sample of validation without server side security
		var pwArray = ["letmein", "Password1", "Password2", "Password3"];  // the hardcoded passwords without server;

		for (var i=0; i <unArray.length; i++) {
	
			if ((un == unArray[i]) && (pw == pwArray[i])) {
			valid = true;
			break;
				}
			}

		if (valid) {
		alert ("Login was successful");
			window.location = "http://localhost:8888/eventovateip/dev/sprint13/#page";
			return false;
			}//end if 

			var t = " tries";
			if (count == 1) {t = " try"}

			if (count >= 1) {
				alert ("Invalid username and/or password.  You have " + count + t + " left.");
				document.myform.username.value = "";
				document.myform.pword.value = "";
				setTimeout("document.myform.username.focus()", 25);
				setTimeout("document.myform.username.select()", 25);
				count --;
				}

			else {
				alert ("Still incorrect! You have no more tries left!");
				document.myform.username.value = "No more tries allowed!";
				document.myform.pword.value = "";
				document.myform.username.disabled = true;
				document.myform.pword.disabled = true;
				return false;
				}
				
		}); //end function for validation 
	
////////////////////////////////////////////////////////////////////	
	
	

	//Beginning of the submit answers function	
	
	$('#submitanswers').on('click', function()	{ // catch the form's submit event
			
					console.log("button clicked"); //debug to see if caught buton click
			 
			$.ajax({
       			url: 'submitanswers.php',
                data: {formData : $('#formsubmitanswers').serialize()}, // Convert a form to a JSON string representation
                type: 'post',                   
                async: true,
		
						beforeSend: function() {
                    // This callback function will trigger before data is sent
            	        $.mobile.showPageLoadingMsg(true); // This will show ajax spinner
        	      	},
 				complete: function() {
                    // This callback function will trigger on data sent/received complete
                	    $.mobile.hidePageLoadingMsg(); // This will hide ajax spinner
        	       }, 
   				success: function (result) {
                        resultObject.formSubmissionResult = result;
                                    $.mobile.changePage("#guestScore");
        	        },
        		/*
        		error: function (request,error) {
                    // This callback function will trigger on unsuccessful action                
                    alert('Network error has occurred please try again!');
    	            }
    	        */
           		 });    
                      console.log ("answers submitted");  
                      window.alert("answers submitted. Thanks");   
        	return false; // cancel original event to prevent form submitting
        
   		 }); // close the function to catch forms submit event.   


		var resultObject = {
					formSubmissionResult : null  
				}
// end of function handler which submits answers to the database 


//beginning of handler that retrieves the users score from the database 

		$('#getMyScore').on('click', function() {
			
			
			
			console.log ("button clicked");
	
			var gID =  (document.getElementById('guest_id').value);
	
				$.ajax({
            			url: 'getscore.php',
                		//data: { guest_id : 'guest_id'},
                		data: { guest_id : gID},
               			type: 'post',                   
                		async: true,
                
                	success: function (returnedJsonData) {
                			
                				alert("success");
    	
    							//$('#yourscore').innerHTML("<p> return </p>");
    							console.log (returnedJsonData); 
    						},
    	
    				/*
    				error: function(request, error){
    							//alert("nothing good returned");
    				}
    				*/
			
    	});   
    		//$('#myScore').append(returnedJsonData);
	
 	});

/*
 * End of Function to Call score from DB ...this handler calls get score php file
 * 
 */

//attempt1 to add comments to guestbook page 

/* 
$('#guestBookComment').bind("click", function () {
	//source mobile app lectures by Dr Charlie Cullen
			window.alert("page 3 Button Clicked!");
for (y=0; y<10; y++){
	$('#commentList').append('<li><h3 style="white-space:normal">This is list item '+ y + '</h3></li>');
	}
	$('#commentList').listview( 'refresh' );
});
*/

//attempt2 to add comments to guestbook page 

/*This function allows comments to be added into a 
list on page 3 it binds a function to the button clicked on this page*/


$('#guestBookComment').bind("click", function () {
		
		window.alert("Button Clicked!");

		var currentText= $('#addComment').val();
 		//this takes the content the user inputs into the text field and stores them in a local variable
 
		$('#commentList').append('<li class="commentLI2"><h3 class="commentLIH"> '+ currentText + '</h3></li>'); 

		guestBookListCounter++;

		//going to the data-role list view with the id #commentList it should append this to add the user input 
		
		$('#commentList').listview( 'refresh' );
	
	}); 


} //end addButtonListeners




//Begin function to call questions from the database (removed and placed in html as not functioning properly when called from js file)


/*
//ANONYMOUS FUNCTION WHICH CALLS THOSE WRAPPED WITHIN IT WHEN PAGE LOADS 
$(function () {    //OPENING OF ANONYMOUS FUNCTION 
	
	
}); //CLOSE OF ANONYMOUS FUNCTION AT TOP OF SCRIPT WHICH CALLS THE QUIZ QUESTIONS function AND SUBMIT ANSWERS FUNCTION 

//FUNCTION TO DISPLAY THE QUIZ QUESTIONS ON PAGE FIVE OF THE INDEX SHOULD RUN BEFORE PAGE LOADS 
	$(document).on('pagebeforeshow', '#quiz', function() {           	   
                //Declare a variable to store the url you are calling  
                var  url = "sampleJSON.php";  
                //All your jquery goodness goes in here  
                $.getJSON(url, function(data){  
                    
      			var items = new Array(); //CREATES A VARIABLE ITEMS WHICH IS AN ARRAY FOR JSON CONTENT 
 
 /*----- Use the jquery $.each() function to iterate through  item in the array In this case we wrap each item in a paragraph tag 
                  
                   		$.each(data, function(i,jsonItem){  //for each item in the array returned loop through it 
                        	items.push('<p>' + jsonItem['question_text'] + '</p>');  //push the item into paragrpah
                        	items.push('<ul>');  //open an unnumbered list 
                       
                       		// console.log(jsonItem['question_text']); DEBUG
   				
   				 		$.each(jsonItem['answers'], function(i,jsonAnswer){ 
    					 //TAKES EACH ITEM FROM THE ITEMS ARRAY CALLED ANSWERS AND PUSHES TO DOM IN HTML FORMAT DICTATED IN THE FUNCTION BLOW 
                        	
                        	  items.push('<li>');  
                        	  var rdo = "<input type = 'radio' name='answer[" + jsonAnswer['question_id'] +  "]'  value='"+ jsonAnswer['answer_id'] +"'/>";
                        	  items.push(rdo);
                        	  items.push(jsonAnswer['answer_text']);  
                        	  items.push('</li>');  
                        	});//END OF FOR EACH ANSWERS FUNCTION      
                        
                        items.push('</ul>');  // closes the unnumbered list 
                        
                     });   //close of the for each loop 
                    /*---------------
                    
                  var output = items.join(''); 
                    
                    /*  Outside the $.each() function, we append the content to the div  
				    
				 $('#ajaxContent').append(output);  
				 //finds the id within the html and inserts the data via instructed function into relevant div
          
            }); // close for the .getJson function   
               
        }); 
 // END OF QUIZ  QUESTIONS CALLED ....all content will go inside the two {} 
*/