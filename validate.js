/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validateNames() 
{
    document.getElementById("fNameErr").style.visibility = "hidden";
    document.getElementById("lNameErr").style.visibility = "hidden";
    var fname = document.getElementById("fName").value;
    var lname = document.getElementById("lName").value;
    var regex = /^[a-zA-Z][a-zA-Z ]{0,29}$/;
        
    if (!regex.test(fname))
    {
        document.getElementById("fNameErr").style.visibility = "visible";
        if(!regex.test(lname))
        {
            document.getElementById("lNameErr").style.visibility = "visible";
        }
        return false;
    }
    else if (!regex.test(lname))
    {
        document.getElementById("lNameErr").style.visibility = "visible";
        return false;
    }
    return true;
}

function validateEmail()   
{  
    document.getElementById("eMailErr").style.visibility = "hidden";
    var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
 
    if (regex.test(document.getElementById("eMail").value))  
    {  
      return true; 
    }  
    else
    {
      document.getElementById("eMailErr").style.visibility = "visible";
      return false; 
    }
} 

function validateTel()  
{  
  document.getElementById("telNoErr").style.visibility = "hidden";
  var regex = /^\d{10}$/;  
  var phoneNo = document.getElementById("telNo").value;
  if(phoneNo.match(regex))  
    {  
      return true;  
    }  
    else  
    {  
        document.getElementById("telNoErr").style.visibility = "visible";  
        return false;  
     }  
} 
function validatePass()
{
    document.getElementById("pswdErr").style.visibility = "hidden"; 
    var pass  = document.getElementById("pswd").value;
    if(pass < 6)
    {
        document.getElementById("pswdErr").style.visibility = "visible";  
        return false;
    }
    else
    {
        return true;
    }
}

function validateEmail()
{
    document.getElementById("EmailErr").style.visibility = "hidden"; 
    var Email  = document.getElementById("Email").value;
    if(!Email)
    {
        document.getElementById("EmailErr").style.visibility = "visible"; 
        return false;
    }
    return true;
}

function superValidate()
{
   var test =  validateNames()& validateEmail() & validateTel() & validatePass() & validateEmail();
    if(test)
        return true;
    else
        return false;
}