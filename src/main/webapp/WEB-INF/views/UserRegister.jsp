<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Registration</title>
<style>
*{
	box-sizing: border-box;
}
body
{
margin: 1% 30% 1% 30%;
background-color: #eaf9ff;
}
.card
{
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 100%;
  max-height: 100%;
  margin: auto;
  background-color: white;
}
.header
{
	padding: 25px;
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	color: #777;
}
input[type=text],input[type=password],input[type=file]{
width: 100%;
height: 50px;
}

input[type=submit],input[type=reset]{
width: 150px;
height: 50px;
color: #777;
}

.card-inner{
padding: 0% 10% 3% 10%;
max-height: auto;
}
.column{
padding:10px;
}

.label{
color: #777;
margin-bottom: 5px;
font-size: 18px;
}

@media only screen and (max-width: 600px) {
    body {
        margin: 2%;
        padding: 0;
    }
    
    .card-inner{
    	padding: 2%;
    	max-height: auto;
    }
    
    .label{
    	color: #777;
    	margin-bottom: 3px;
    	font-size: 14px;
    }
    .header{
    	padding: 15px 0px 0px 0px;
    	font-size: 24px;
    	font-weight: bold;
    	text-align: center;
    	color: #777;
    } 
    .column{
    	padding:5px;
    }   
    input[type=text],input[type=password],input[type=file]{
    	width: 100%;
    	height: 40px;
    }
    
    input[type=submit],input[type=reset]{
    	width: 100px;
    	height: 40px;
    	color: #777;
    }

}
</style>
<script type="text/javascript">
$('#file').inputFileText({
    text: 'Select File'
});

</script>
</head>
<body>
<div class="card" style="background-color: #f4f7fc;">

           <form action="UserRegisterProcess" enctype="multipart/form-data" method="post">  
           
             
            <div class="card-inner">
            
            <div class="header">User Registration Form</div>
            
			<!-- <div class="column">
			<div class="label">	Faculty Id </div>
			<input type="text" name="id" autocomplete="off" />
			</div>-->
			
			<div class="column">   
			<div class="label">User Name</div>
			<input type="text" name="name" autocomplete="off"/>
			</div>
			
            <div class="column">
            <div class="label">User Designation</div>
            <input type="text" name="design" autocomplete="off"/>
			</div>
			
			<div class="column">
            <div class="label">Password</div>
            <input type="password" name="password" autocomplete="off"/>
			</div>			
			
            <div class="column">
            <div class="label">Photo</div>
            <div style="border: 1px solid #929992; border-radius: 5px;background-color: white; color: #777; "><input name="file" type="file" id="file" accept=".jpg, .jpeg, .png"/></div>
            </div>					
            
            <div class="column" style="text-align:center;">
            <input type="submit" value="Register" />
            <input type="reset" name="Reset" value="Reset"/>
            </div>
              
            </div>    
           </form>   
</div> 
</body>
</html>