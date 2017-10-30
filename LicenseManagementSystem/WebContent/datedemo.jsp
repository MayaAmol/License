<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
        <script type="text/javascript">
        function validateRegistration()
        {
           var name=document.reg.name.value;
            if (name==null || name=="")
            {
              alert("Name must be enter.");
              document.reg.name.focus();
              return false;
            }
           
            
            var fname=document.reg.fname.value;
            if (fname==null || fname=="")
            {
              alert("Father Name must be enter.");
              document.reg.fname.focus();
              return false;
            }
           
            
            //select 
            
             var pos = document.getElementById("ltype");
                if(pos.value==-1)
		   	   	{
		   	   		alert("Please select license type");
		   	   	 document.reg.ltype.focus();
		   	   		return false;
		   	   	}
           
                
            var email=document.reg.email.value;
	            if (email == null || email=="")
	            {
	              alert("Email must be enter");
	              document.reg.email.focus();
	              return false;
	            }
	          
	   	  
               var x=document.reg.email.value;
                     var atpos=x.indexOf("@");
                     var dotpos=x.lastIndexOf(".");
                     if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
                     {
                          alert("Not a valid e-mail address");
                          document.reg.email.focus();
                           return false;
                     }
                       
                     
                     
                    var e = document.getElementById("dob");
		            if (!/^[0-9-]+$/.test(e.value)) 
		            { 
		               alert("Enter DOB in given format only");
		               documentreg.dob.focus();
		               e.value = e.value.substring(0,e.value.length-1);
		               return false;
		            }
		            
		            
		            var e = document.getElementById("mob");

	                  if (!/^[0-9]+$/.test(e.value)) 
	                  { 
	                     alert("Enter valid mobile no.");
	                     document.reg.mob.focus();
	                     e.value = e.value.substring(0,e.value.length-1);
	                     return false;
	                  }
	                
	                  var fld = document.getElementById("mobile");
	  	   	             if (fld.value == "")
	  	   	             {
	 	                   alert(" Enter a mobile number.");
	 	                  document.reg.mob.focus();
	 	                    fld.value = "";
	 	                    fld.focus();
	 	                    return false;
	 	                   }
	  	   	             
 	                     else if (isNaN(fld.value)) 
 	                     {
 	                        alert("The mobile number contains illegal characters.");
 	                       document.reg.mob.focus();
 	                        fld.value = "";
 	                         fld.focus();
 	                         return false;
 	                       }
                          else if (!(fld.value.length == 10))
                          {
                              alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
                             document.reg.mob.focus();
                              fld.value = "";
                              fld.focus();
                              return false;
                           }
		        	     }
   	    </script>
   	    <script type="text/javascript">
   	    	function validateRegistrationDetail()
   	    	{
   	    		var name1=document.forms["registration"]["username"].value;
   	            if (name1==null || name1=="")
   	            {
   	              alert("Enter Username");
   	              document.forms["registration"]["username"].focus();
   	              return false;
   	            }
   	            var x=document.forms["registration"]["username"].value;
   	            var atpos=x.indexOf("@");
   	            var dotpos=x.lastIndexOf(".");
   	            if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
   	            {
   	                 alert("Invalid user name. ");
   	                 document.forms["registration"]["username"].focus();
   	                  return false;
   	            }
   	            
   	            var pwd=document.forms["registration"]["password"].value;
   	            if (pwd==null || pwd=="")
   	            {
   	              alert("Enter Password");
   	              document.forms["registration"]["password"].focus();
   	              return false;
   	            }
   	            
   	         var cpwd=document.forms["registration"]["confirm_password"].value;
	            if (cpwd==null || cpwd=="")
	            {
	              alert("Enter Confirm Password");
	              document.forms["registration"]["confirm_password"].focus();
	              return false;
	            }
	            
	            if(!(pwd == cpwd))
				{
	            	alert("Password and confirm password are not same");
					return false;
				}
	            
	            //for dropdown list
	            var pos = document.getElementById("emp_des");
                if(pos.value==-1)
		   	   	{
		   	   		alert("Please select employee Designation");
		   	   	 document.forms["registration"]["designation"].focus();
		   	   		return false;
		   	   	}
	            
	            var e = document.getElementById("basic_salary");

                if (!/^[0-9.]+$/.test(e.value)) 
                { 
                   alert("Enter valid amount.");
                   document.forms["registration"]["basic_salary"].focus();
                   e.value = e.value.substring(0,e.value.length-1);
                   return false;
                }
               
                var fld = document.getElementById("basic_salary");
	   	             if (fld.value == "")
	   	             {
	                   alert(" Enter amount.");
	                  document.forms["registration"]["basic_salary"].focus();
	                    return false;
	                   }
	   	             
	   	             //for date of joining
	   	          var  sdate = document.forms["registration"]["doj"].value;
		   	  	 var sdateAr=sdate.split("-");
		   	  	if(document.forms["registration"]["doj"].value=="")
		   	  	{
		   	  		
		   	  		alert("Please enter the date.");
		   	  		document.forms["registration"]["doj"].focus();
		   	  		return false;
		   	  	}
		   	  	if(sdateAr.length!=3)
		   	  	{
		   	  		alert("Please enter valid Date in dd-mm-yyyy format.");
			   	  	document.forms["registration"]["doj"].value==""
		   	  		document.forms["registration"]["doj"].focus();
		   	  		return false;
		   	  	}
	   	             
		   	 var quali = document.getElementById("quali");
             if(quali.value==-1)
		   	   	{
		   	   		alert("Please select qualification");
		   	   	 document.forms["registration"]["qualification"].focus();
		   	   		return false;
		   	   	}
             
             var quali = document.getElementById("month");
             if(quali.value==-0)
		   	   	{
		   	   		alert("Please select Passing month");
		   	   	 document.forms["registration"]["pass_month"].focus();
		   	   		return false;
		   	   	}
	   	             
             var yr = document.getElementById("yr");
             if(yr.value==-0)
		   	   	{
		   	   		alert("Please select passing year");
		   	   	 document.forms["registration"]["pass_year"].focus();
		   	   		return false;
		   	   	}
             
             var exp = document.getElementById("exp");
             if(exp.value==-1)
		   	   	{
		   	   		alert("Please select Experience");
		   	   	 document.forms["registration"]["exp"].focus();
		   	   		return false;
		   	   	}
             var prev=document.forms["registration"]["prev_org"].value;
	            if (prev==null || prev=="")
	            {
	              alert("Enter Previous Organization");
	              document.forms["registration"]["prev_org"].focus();
	              return false;
	            }
             
   	    	}
   	    </script>
</head>
</body>
</html>



<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
        <script type="text/javascript">
        function validateLogin(obj)
        {
        {
        //for date format
	 var  sdate = document.frm.date.value;
	 var sdateAr=sdate.split("-");
	if(document.frm.date.value=="")
	{
		
		alert("Please enter the date.");
		document.frm.date.focus();
		return false;
	}
	if(sdateAr.length!=3)
	{
		alert("Please enter valid Date in mm-dd-yyyy format.");
		document.frm.date.value="";
		document.frm.date.focus();
		return false;
	}
        //for dropdown list
        if(document.getElementById("emp_id").value==-1)
	{
		alert("Please select employee id");
		return false;
	}
        
        
           var name1=document.forms["Login"]["uname"].value;
            if (name1==null || name1=="")
            {
              alert("Enter Username");
              document.forms["Login"]["uname"].focus();
              return false;
            }
            var x=document.forms["Login"]["uname"].value;
            var atpos=x.indexOf("@");
            var dotpos=x.lastIndexOf(".");
            if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
            {
                 alert("Invalid user name. ");
                 document.forms["Login"]["uname"].focus();
                  return false;
            }
            
            var pwd=document.forms["Login"]["pwd"].value;
            if (pwd==null || pwd=="")
            {
              alert("Enter Password");
              document.forms["Login"]["pwd"].focus();
              return false;
            }
            
        }
        
function validateForgetPass()
{
   var name=document.forms["Login"]["uname"].value;
    if (name==null || name=="")
    {
      alert("Enter Username");
      document.forms["Login"]["uname"].focus();
      return false;
    }
    var x=document.forms["Login"]["uname"].value;
    var atpos=x.indexOf("@");
    var dotpos=x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
    {
         alert("Invalid user name. ");
         document.forms["Login"]["uname"].focus();
          return false;
    }
    
    
    
    var name1=document.forms["Login"]["emailid"].value;
    if (name1==null || name1=="")
    {
      alert("Enter EmailId");
      document.forms["Login"]["emailid"].focus();
      return false;
    }
    var x=document.forms["Login"]["emailid"].value;
    var atpos=x.indexOf("@");
    var dotpos=x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
    {
         alert("Invalid Emailid. ");
         document.forms["Login"]["emailid"].focus();
          return false;
    }
    
    //var e = document.getElementById("mobileno");
    var e = document.forms["Login"]["mobileno"].value;

   /*  if (!/^[0-9]+$/.test(e.value)) 
    { 
       alert("Enter mobile no.");
       document.forms["Login"]["mobileno"].focus();
       e.value = e.value.substring(0,e.value.length-1);
       return false;
    }
   */
    var fld = document.forms["Login"]["mobileno"].value;
            if (fld == "" || fld == null)
            {
          alert(" Enter a mobile number.");
          document.forms["Login"]["mobileno"].focus();
           fld.value = "";
           fld.focus();
           return false;
          }
            else if (isNaN(fld)) 
            	//else  if (!/^[0-9]+$/.test(fld)) 
            {
               alert("The mobile number contains illegal characters.");
               document.forms["Login"]["mobileno"].focus();
               fld.value = "";
                fld.focus();
                return false;
              }
                 else if (!(fld.length == 10))
                 {
                     alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
                     document.forms["Login"]["mobileno"].focus();
                     fld.value = "";
                     fld.focus();
                     return false;
                  }
		 }

</script>
     
</head>
</body>
</html> --%>