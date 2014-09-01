<html>
<head>
<style>

#topbar{
position:fixed;
  top: 0;
  left: 0;
  height:150px;
  width: 100%;
  z-index: 10;
  //background-color: rgba(5,45,127,0.9);
  background-color: rgba(0,0,0,0.9);
	box-shadow:3px 2px 20px 3px black;
} 

/***
.overlay {
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  z-index: 10;
  background-color: rgba(80,90,100,0.5);
}
 */
 
 
 /**********/
.modal {
    /* some styles to position the modal at the center of the page */
    position: fixed;
    top: 180px;
    left: 75%;
    width: 300px;
    line-height: 10px;
    height: 100px;
    margin-left: 10px;
    margin-top: 10px;
    //background-color: #f1c40f;
 border-radius: 10px;   
    /* needed styles for the overlay */
    z-index: 10; /* keep on top of other elements on the page */
    outline: 9999px solid rgba(80,70,40,0);
	
	
	///////////////background gradient 
	
background: rgb(249,252,247); /* Old browsers */
background: -moz-linear-gradient(top, rgba(249,252,247,1) 0%, rgba(245,249,240,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(249,252,247,1)), color-stop(100%,rgba(245,249,240,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* IE10+ */
background: linear-gradient(to bottom, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* W3C */
border-top-left-radius: 12px; border-top-right-radius: 12px;
border-bottom-left-radius: 12px; border-bottom-right-radius: 12px;
box-shadow: 1px 1px 2px 2px grey;
	
	
}



/******for floating signup ******/
.modaldialog{
	/* some styles to position the modal at the center of the page */
    position: fixed;
	display:none;
    top: 50%;
    left: 35%;
    width: 300px;
    height: 100px;
    background-color: white;

    /* needed styles for the overlay */
    z-index: 10; /* keep on top of other elements on the page */
    outline: 9999px solid rgba(0,0,0,0.5);
} 
 
 /**********/
 
a:link {color:Yellow;}    /* unvisited link */
a:visited {color:Yellow;} /* visited link */
a:hover {color:White;}   /* mouse over link */
a:active {color:Yellow;}  /* selected link */

ul{
list-style-type:none;
margin:0;
padding:0;
overflow:hidden;
}
li{
float:left;
}

.frmTable{
background: rgb(249,252,247); /* Old browsers */
background: -moz-linear-gradient(top, rgba(249,252,247,1) 0%, rgba(245,249,240,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(249,252,247,1)), color-stop(100%,rgba(245,249,240,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* IE10+ */
background: linear-gradient(to bottom, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* W3C */
border-top-left-radius: 12px; border-top-right-radius: 12px;
border-bottom-left-radius: 12px; border-bottom-right-radius: 12px;
box-shadow: 1px 1px 6px 2px grey;
}



.btnlogin{
border:0px solid #34740e; -webkit-border-radius: 5px; -moz-border-radius: 5px;border-radius: 5px;font-size:10px;font-family:arial, helvetica, sans-serif; padding: 6px 6px 6px 6px; text-decoration:none; display:inline-block;text-shadow: -1px -1px 0 rgba(0,0,0,0.3);font-weight:bold; color: #FFFFFF;
 background-color: #4ba614; background-image: -webkit-gradient(linear, left top, left bottom, from(#4ba614), to(#008c00));
 background-image: -webkit-linear-gradient(top, #4ba614, #008c00);
 background-image: -moz-linear-gradient(top, #4ba614, #008c00);
 background-image: -ms-linear-gradient(top, #4ba614, #008c00);
 background-image: -o-linear-gradient(top, #4ba614, #008c00);
 background-image: linear-gradient(to bottom, #4ba614, #008c00);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#4ba614, endColorstr=#008c00);
}

.btnlogin:hover{
 border:0px solid #224b09;
 background-color: #36780f; background-image: -webkit-gradient(linear, left top, left bottom, from(#36780f), to(#005900));
 background-image: -webkit-linear-gradient(top, #36780f, #005900);
 background-image: -moz-linear-gradient(top, #36780f, #005900);
 background-image: -ms-linear-gradient(top, #36780f, #005900);
 background-image: -o-linear-gradient(top, #36780f, #005900);
 background-image: linear-gradient(to bottom, #36780f, #005900);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#36780f, endColorstr=#005900);
}

.btnlogin:focus{
 border:0px solid #224b09;
 background-color: #36780f; background-image: -webkit-gradient(linear, left top, left bottom, from(#36780f), to(#005900));
 background-image: -webkit-linear-gradient(top, #36780f, #005900);
 background-image: -moz-linear-gradient(top, #36780f, #005900);
 background-image: -ms-linear-gradient(top, #36780f, #005900);
 background-image: -o-linear-gradient(top, #36780f, #005900);
 background-image: linear-gradient(to bottom, #36780f, #005900);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#36780f, endColorstr=#005900);

}

/*  */

.btnExit{
border:0px solid #34740e; -webkit-border-radius: 5px; -moz-border-radius: 5px;border-radius: 5px;font-size:10px;font-family:arial, helvetica, sans-serif; padding: 6px 6px 6px 6px; text-decoration:none; display:inline-block;text-shadow: -1px -1px 0 rgba(0,0,0,0.3);font-weight:bold; color: #FFFFFF;
 background-color: #ff9a9a; background-image: -webkit-gradient(linear, left top, left bottom, from(#ff9a9a), to(#ff4040));
 background-image: -webkit-linear-gradient(top, #ff9a9a, #ff4040);
 background-image: -moz-linear-gradient(top, #ff9a9a, #ff4040);
 background-image: -ms-linear-gradient(top, #ff9a9a, #ff4040);
 background-image: -o-linear-gradient(top, #ff9a9a, #ff4040);
 background-image: linear-gradient(to bottom, #ff9a9a, #ff4040);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#ff9a9a, endColorstr=#ff4040);
}

.btnExit:hover{
 border:1px solid #ff3434;
 background-color: #ff6767; background-image: -webkit-gradient(linear, left top, left bottom, from(#ff6767), to(#ff0d0d));
 background-image: -webkit-linear-gradient(top, #ff6767, #ff0d0d);
 background-image: -moz-linear-gradient(top, #ff6767, #ff0d0d);
 background-image: -ms-linear-gradient(top, #ff6767, #ff0d0d);
 background-image: -o-linear-gradient(top, #ff6767, #ff0d0d);
 background-image: linear-gradient(to bottom, #ff6767, #ff0d0d);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#ff6767, endColorstr=#ff0d0d);
}

		  
.btntrack{
margin:0;
outline:none;
border:1px solid #999999; -webkit-border-radius: 5px; -moz-border-radius: 5px;border-radius: 5px;font-size:20px;font-family:arial, helvetica, sans-serif; padding: 5px 15px 5px 15px; text-decoration:none; display:inline-block;text-shadow: 1px 1px 0 rgba(255,255,255,0.3);font-weight:bold; color: #000000;
 background-color: #FFFFFF; background-image: -webkit-gradient(linear, left top, left bottom, from(#FFFFFF), to(#CFCFCF));
 background-image: -webkit-linear-gradient(top, #FFFFFF, #CFCFCF);
 background-image: -moz-linear-gradient(top, #FFFFFF, #CFCFCF);
 background-image: -ms-linear-gradient(top, #FFFFFF, #CFCFCF);
 background-image: -o-linear-gradient(top, #FFFFFF, #CFCFCF);
 background-image: linear-gradient(to bottom, #FFFFFF, #CFCFCF);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#FFFFFF, endColorstr=#CFCFCF);
}

.btntrack:hover{
 border:1px solid #7A7A7A;
 background-color: #EEEEEE; background-image: -webkit-gradient(linear, left top, left bottom, from(#EEEEEE), to(#C7C7C7));
 background-image: -webkit-linear-gradient(top, #EEEEEE, #C7C7C7);
 background-image: -moz-linear-gradient(top, #EEEEEE, #C7C7C7);
 background-image: -ms-linear-gradient(top, #EEEEEE, #C7C7C7);
 background-image: -o-linear-gradient(top, #EEEEEE, #C7C7C7);
 background-image: linear-gradient(to bottom, #EEEEEE, #C7C7C7);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#EEEEEE, endColorstr=#C7C7C7);
}

.btntrack:focus{
 border:1px solid #7A7A7A;
 background-color: #EEEEEE; background-image: -webkit-gradient(linear, left top, left bottom, from(#EEEEEE), to(#C7C7C7));
 background-image: -webkit-linear-gradient(top, #EEEEEE, #C7C7C7);
 background-image: -moz-linear-gradient(top, #EEEEEE, #C7C7C7);
 background-image: -ms-linear-gradient(top, #EEEEEE, #C7C7C7);
 background-image: -o-linear-gradient(top, #EEEEEE, #C7C7C7);
 background-image: linear-gradient(to bottom, #EEEEEE, #C7C7C7);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#EEEEEE, endColorstr=#C7C7C7);
}


.tb2 {
	border:1px solid #456879;
	border-radius:10px;
	height: 40px;
	width: 725px;
	font-size:15px
	color:red;
	margin: 0;
	
}


.tb2:focus
{
		border:1px solid #456879;
		background-color:#eeffe5;

}


.txtcustom{
	border:1px solid #456879;
	border-radius:5px;
	height: 24px;
	width: 120px;
	font-size:12px
}
.txtcustom:focus{
background-color:#eeffe5;
}


#myCanvas{
background: #b5bdc8; /* Old browsers */
background: -moz-linear-gradient(top, #b5bdc8 0%, #828c95 36%, #28343b 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#b5bdc8), color-stop(36%,#828c95), color-stop(100%,#28343b)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, #b5bdc8 0%,#828c95 36%,#28343b 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, #b5bdc8 0%,#828c95 36%,#28343b 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, #b5bdc8 0%,#828c95 36%,#28343b 100%); /* IE10+ */
background: linear-gradient(to bottom, #b5bdc8 0%,#828c95 36%,#28343b 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b5bdc8', endColorstr='#28343b',GradientType=0 ); /* IE6-9 */
}

body {
	font-family:  sans-serif,'Helvetica';
        	font-size: 14px;
	
	background-repeat:no-repeat;
	background-position:center; 
	background-color:white;
	
	
background: rgb(238,238,238); /* Old browsers */
background: -moz-linear-gradient(top, rgba(238,238,238,1) 0%, rgba(238,238,238,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(238,238,238,1)), color-stop(100%,rgba(238,238,238,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, rgba(238,238,238,1) 0%,rgba(238,238,238,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, rgba(238,238,238,1) 0%,rgba(238,238,238,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, rgba(238,238,238,1) 0%,rgba(238,238,238,1) 100%); /* IE10+ */
background: linear-gradient(to bottom, rgba(238,238,238,1) 0%,rgba(238,238,238,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#eeeeee', endColorstr='#eeeeee',GradientType=0 ); /* IE6-9 */
    }
	
tablemnm{
background: rgb(147,206,222); /* Old browsers */
background: -moz-linear-gradient(top, rgba(147,206,222,1) 0%, rgba(117,189,209,1) 41%, rgba(73,165,191,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(147,206,222,1)), color-stop(41%,rgba(117,189,209,1)), color-stop(100%,rgba(73,165,191,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, rgba(147,206,222,1) 0%,rgba(117,189,209,1) 41%,rgba(73,165,191,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, rgba(147,206,222,1) 0%,rgba(117,189,209,1) 41%,rgba(73,165,191,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, rgba(147,206,222,1) 0%,rgba(117,189,209,1) 41%,rgba(73,165,191,1) 100%); /* IE10+ */
background: linear-gradient(to bottom, rgba(147,206,222,1) 0%,rgba(117,189,209,1) 41%,rgba(73,165,191,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#93cede', endColorstr='#49a5bf',GradientType=0 ); /* IE6-9 */box-shadow: 2px 2px 2px 2px grey;
}



.trackItemm{
-moz-border-radius: 5px;
-webkit-border-radius: 5px;
border-radius: 5px;

background: rgb(249,252,247); /* Old browsers */
background: -moz-linear-gradient(top, rgba(249,252,247,1) 0%, rgba(245,249,240,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(249,252,247,1)), color-stop(100%,rgba(245,249,240,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* IE10+ */
background: linear-gradient(to bottom, rgba(249,252,247,1) 0%,rgba(245,249,240,1) 100%); /* W3C */

}


#toptable{background: rgb(174,188,191); /* Old browsers */
background: -moz-linear-gradient(top, rgba(174,188,191,1) 0%, rgba(110,119,116,1) 77%, rgba(110,119,116,1) 80%, rgba(10,14,10,1) 82%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(174,188,191,1)), color-stop(77%,rgba(110,119,116,1)), color-stop(80%,rgba(110,119,116,1)), color-stop(82%,rgba(10,14,10,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, rgba(174,188,191,1) 0%,rgba(110,119,116,1) 77%,rgba(110,119,116,1) 80%,rgba(10,14,10,1) 82%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, rgba(174,188,191,1) 0%,rgba(110,119,116,1) 77%,rgba(110,119,116,1) 80%,rgba(10,14,10,1) 82%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, rgba(174,188,191,1) 0%,rgba(110,119,116,1) 77%,rgba(110,119,116,1) 80%,rgba(10,14,10,1) 82%); /* IE10+ */
background: linear-gradient(to bottom, rgba(174,188,191,1) 0%,rgba(110,119,116,1) 77%,rgba(110,119,116,1) 80%,rgba(10,14,10,1) 82%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#aebcbf', endColorstr='#0a0e0a',GradientType=0 ); /* IE6-9 */

box-shadow: 1px 1px 6px 2px grey;

}




		table{
			font-family:  sans-serif,'Helvetica';
			font-size: 12px;
		}
		  
/*      fROM LOGIN PAGE       */

div.hidden{visibility:hidden;}




/////////////////////////

 .modalDialog {
    background-color:red;
    display:none;
    width:350px;
    padding:15px;
    text-align:left;
    border:2px solid #222;
	
    opacity:0.8;
    -moz-border-radius:6px;
    -webkit-border-radius:6px;
    -moz-box-shadow: 0 0 50px #ccc;
    -webkit-box-shadow: 0 0 50px #ccc;
  }
 
</style>



<script src="jquery-1.11.0.js">
</script>
<script>
flag=0;
$(document).ready(function(){
    $(window).scroll(function(){
		if($(window).scrollTop()>200 && flag==0)		
			 { 
			 $("#topbar").animate({top:"-66px"});
			 flag=1;}
			 else if(flag==1 && $(window).scrollTop()<200 )
			 { 
			 $("#topbar").animate({top:"0px"});
			 //$("#topbar").animate({height:"100px"});
			 flag=0;} 
  
});
});
</script>

<script>
function funcreate(){
		//alert("Filling Form");
		 name=document.getElementById("txtuser").value; ///Fetching the value from textbox(Your Message)
		 email=document.getElementById("txtemail").value; ///Fetching the value from textbox(Your Message)
		 mob=document.getElementById("txtmob").value; ///Fetching the value from textbox(Your Message)
		 pass=document.getElementById("txtpass").value; ///Fetching the value from textbox(Your Message)
		 conpass=document.getElementById("txtconpass").value; ///Fetching the value from textbox(Your Message)
		 		 
		 $(document).ready(function(){
			alert("sending.....");
				$.post("http://localhost:8080/RAKESHPROJECT/createuser.jsp",
				{
				user:name,
				pass:pass,  
				conpass:conpass,
				email:email,
				mob: mob
				},
				function(data,status){
					if(status)
						alert(data);//calling prepend() on object "txtAllMsg"
				});
		});
		alert("form Complete");
}
</script>



<script>
$(document).ready(function(){
;//$("#signup").hide();	
});



function signup(){
		$(document).ready(function(){	
		$("#testdiv").load("http://localhost:8080/RAKESHPROJECT/signuppage.jsp");
		});
		

	}
</script>



<script>
$(document).ready(function(){
  $("button").click(function(){
    $("#div3").fadeOut();
    $("#div3").fadeOut("slow");
    $("#div3").fadeOut(3000);
  });
});
</script>

<Script>

	function funLogin(){
		 //alert("hiii");
	//	 $("#frmlogin").submit();
		 //document.getElementById("frmsign").submit();
		 
		  email=document.getElementById("txtemail").value; ///Fetching the value from textbox(Your Message)
		  pass=document.getElementById("txtpass").value; ///Fetching the value from textbox(Your Message) 
		 if(email=="" || pass=="")
				alert("Enter username & password !");
			else
				document.getElementById("frmsign").submit();

		 /*
		  email=document.getElementById("txtSignEmail").value; ///Fetching the value from textbox(Your Message)
		  pass=document.getElementById("txtSignPass").value; ///Fetching the value from textbox(Your Message) 
		 
		 $(document).ready(function(){
				$.post("http://localhost:8080/RAKESHPROJECT/login.jsp",
				{
				pass:pass, 
				email:email
				},
				function(data,status){				
					if(status)
						  $("#divUserName").text("Hi"+data +"!");
						else
						  alert("Incorrect user name or password");
						
					
				});
		});
		
		*/
		 ////////////
		// alert("form Complete");
		
	}
	

	
	
function funabt(){

		$(document).ready(function(){
			//alert("sending.....");
				$.post("http://localhost:8080/RAKESHPROJECT/about.jsp",
				{
				   user:"nothing"
				},
				function(data,status){
				//alert("success!");
					//if(status)
					
					document.getElementById("testdiv").style.visibility="visible";
					document.getElementById("testdiv").innerHTML=data;
						//alert(data);//calling prepend() on object "txtAllMsg"
				});
		});
		
      }



function funcontact(){

		$(document).ready(function(){
			//alert("sending.....");
				$.post("http://localhost:8080/RAKESHPROJECT/contact.jsp",
				{
				   user:"nothing"
				},
				function(data,status){
				//alert("success!");
					//if(status)
					
					document.getElementById("testdiv").style.visibility="visible";
					document.getElementById("testdiv").innerHTML=data;
						//alert(data);//calling prepend() on object "txtAllMsg"
				});
		});
		
      }




	  function funloaddrop(){
		$(document).ready(function(){
			//alert("sending.....");
				$.post("http://localhost:8080/RAKESHPROJECT/maxdropprice.jsp",
				{
				   user:"nothing"
				},
				function(data,status){
				//alert("success!");
					//if(status)
					
					document.getElementById("testdiv").style.visibility="visible";
					document.getElementById("testdiv").innerHTML=data;
						//alert(data);//calling prepend() on object "txtAllMsg"
				});
		});
		
      }


	
	
	
	
	
	
	

	function funabout(){
		$(document).ready(function(){
		
		$("#testdiv").load("http://localhost:8080/RAKESHPROJECT/aboutus.jsp");
		
		});
		}

		
		function funtrending(){
		$("#testdiv").text("Loading....Please Wait");
		$(document).ready(function(){
		
				$.post("http://localhost:8080/RAKESHPROJECT/trending.jsp",
				{
				name:"Donald Duck",
				city:"Duckburg"
				},
				
				function(data,status){
					//alert("Data: " + data + "\nStatus: " + status);
					//$("#testdiv").load("jjj"+ data + status);
					//var yy=document.getElementByValue("testdiv").innerHTML=data;
					//document.write(data);
					$("testdiv").fadeIn();
					$("#testdiv").text("Hello world!"+ data );
				});
		});
		
      }
	  
	  
	  function funconnect(){
		$("#testdiv").text("Loading....Please Wait");
		$(document).ready(function(){
		
				$.post("http://localhost:8080/RAKESHPROJECT/login.jsp",
				{
				txtid:"rakesh",
				txtpass:"Duckburg"
				},
				
				function(data,status){
					alert("Data: " + data + "\nStatus: " + status);
					//$("#testdiv").load("jjj"+ data + status);
					//var yy=document.getElementByValue("testdiv").innerHTML=data;
					//document.write(data);
					$("testdiv").fadeIn();
					 $("#testdiv").text( data );
				});
		});
		
      }
	  
	  function sendPassword(){
	 // alert();
		$(document).ready(function(){
				myemail=document.getElementById("txtForgotEmail").value; ///Fetching the value from textbox(Your Message)
				//alert(myemail);
			
				$.post("http://localhost/mymail.php",
				{
				email:myemail
				},
				function(data,status){
					alert("Data: " + data + "\nStatus: " + status);
					//$("#testdiv").load("jjj"+ data + status);
					//var yy=document.getElementByValue("testdiv").innerHTML=data;
					//document.write(data);
					$("testdiv").fadeIn();
					$("#testdiv").text("Hello world!"+ data );
				});
		});
		alert("Your password Sent successfully !");	
		$("#divForgotPass").hide();
	  }
	  
	  function funForgotPass(){ 

			$("#divForgotPass").show();
			var x=$("#divForgotPass").overlay({
				mask:{
					color:black,
					loadSpeed: 200,
					opacity: 0.9
					},
				closeOnClick: true
			});
	  }

	  function funClose(){
		$("#divForgotPass").hide();
	}
	
	
	function submitUrl(){
	
	itemurl=document.getElementById("txtitem").value;
	$(document).ready(function(){
		
				$.post("http://localhost:8080/RAKESHPROJECT/registerurl.jsp",
				{
				myUrl:itemurl
				},
				
				function(data,status){
						//alert(data);
					document.getElementById("testdiv").innerHTML=("<center><B><font color=Green size=5>Congratulation ! We found your item </font> <font color=orange size=6><BR>Current price is Rs. "+ data +"</font></B></center>" );
					//alert("Data: " + data + "\nStatus: " + status);
					//$("#testdiv").load("jjj"+ data + status);
					//var yy=document.getElementByValue("testdiv").innerHTML=data;
					//document.write(data);
					//$("testdiv").fadeIn();
					 //$("#testdiv").text( data );
					 
				});
		});
	//alert("submitted");
	}
	
</Script>

	</head>
<body topmargin="0" leftmargin="0" rightmargin="0">
<%-- START --%>
 <div ID="topbar">
	<table width="100%" id="toptable">

	<TR> 
		<TD>
 
 <form id="frmsign" action="http://localhost:8080/RAKESHPROJECT/login.jsp" method="Post">
 
 
		<Table id="tblLogin" align="right">
         
		 
		 <TR><TD><Input type="text" name="txtemail" class="txtcustom" Placeholder=" User Name"></TD>
		 <TD><Input type="password" name="txtpass" class="txtcustom" Placeholder=" Password"></TD>
		 <TD><Input type="submit" id="btnmylogin" class="btnlogin" value="Login" onclick="funLogin()"> &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp
		 &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp &nbsp  &nbsp  
		 &nbsp		 &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp   
				 		 &nbsp  &nbsp  &nbsp &nbsp  &nbsp  &nbsp &nbsp		 
		</TD>
		 </TR>
		 <TR><TD><Font color="Yellow"> <div id="divUserName" ><U>Hi Guest!</U></Div> &nbsp <u>
		 <a href="#" onclick="signup()">Sign Up</a></U></Font></TD><TD> <Font Color="Silver"><div id="divForgPass"><A href="#" onclick="funForgotPass()">Forgot password</A></div></Font> </TD></TR>
		</Table>
	</form>
		&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp
		&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp 
		&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp
		&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp 
		<A href="http://localhost:8080/RAKESHPROJECT/test.jsp">
		<IMG SRC="TRACK.png" WIDTH="80">
		<img src="webtitle2.png" WIDTH="200">
		</A>
		<BR>
		&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp
		&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp 
		&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp
		&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  
		&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp
		
 

		</B><Input type="text" size="80" class="tb2" id="txtitem" align="Right" placeholder=" Enter URL">
		<Input type="button" value="Track" class="btntrack" onclick="submitUrl()">
		</TD>
	</TR>
	<TR>
		<TD><BR>
			<UL>
			<li> <B> <Font size="1"> 
			&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp
			&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp 
			&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp
			&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp 
			&nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  &nbsp  

			<a href="#home" onclick="funtrending()"> 
			TRENDING NOW  </a>&nbsp &nbsp &nbsp &nbsp</li>
			<li><a href="#" onclick="funloaddrop()">MAX DROP </a>&nbsp &nbsp &nbsp &nbsp </li> 
			<li><a href="#" onclick="funcontact()">CONTACT </a>&nbsp &nbsp &nbsp &nbsp</li>  
			<li><a href="#" onclick="funabt()">ABOUT </a> &nbsp &nbsp &nbsp &nbsp</li> 
			<li><a href="#about">BROWSE BY CATEGORY </a>&nbsp &nbsp &nbsp &nbsp</li><BR><BR>
			</Font>
			</B>
			</UL>
		</TD>
	</TR>
	</TD>
</TR>
</table>

</DIV>

</center>

<BR><BR><BR>

<div id="divUserName" ><U>Hi Guest!</U></Div>


<br><br><br>
<br><br><br>

<br><br><br>
<div id="testdiv"  style="height:20px; width:50px left:30px" >
</div>

<div class="hidden" id="div2"> 

</div>

<div class="hidden" id="div3" style="width:80px;height:80px;display:none;background-color:red;"> <Input type="button" value="THis is a test"> Happy! :)>

</div>


<div class="modalDialog" id="divForgotPass" >
	<table width="100%"><tr><td bgcolor="silver"><Center>Forgot Password</Center></td></tr></table>
		<br>
		<Input type="Text" id="txtForgotEmail" placeholder="Email">
		<Input type="Button" class="btnlogin" Value="Reset Password" onclick="sendPassword()">
		<Input type="Button" class="btnExit" Value="Exit" onclick="funClose()">
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>





</body>
</html>