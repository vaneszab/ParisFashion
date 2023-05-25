
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
<style>
     @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;600;700&display=swap');
    body {
  background-color: #edf2f4;
  font-family:'Poppins', sans-serif;
}

#container {
  width: 850px;
  margin: 25px auto;
  margin-top: 85px;
  background-color: #ef233c;
}

.whysign {
  float: left;
  background-color:  #ef233c;
  width: 450px;
  height: 528px;
  padding-top: 20px;
  padding-right: 20px;
}
.whysignLogin
{
    float: left;
  background-color: #8d99ae;
  width: 480px;
  height: 528px;
  padding-top: 20px;
  padding-right: 20px;
}
.whyforgotPassword
{
  float: left;
  background-color: #e99f4c;
  font-family: 'Poppins', sans-serif;
  color : #de5499;
  width: 480px;
  height: 470px;
  padding-top: 20px;
  padding-right: 20px;
}
.signup {
  float: left;
  width: 300px;
  padding: 20px 20px;
  height:508px;
  text-align: center;
  font-family:'Poppins', sans-serif;
  background-color: white;
}


[type=text],[type=email],[type=number],[type=password],select,option {
  display: block;
  margin: 0 auto;
  width: 80%;
  border: 0;
  border-bottom: 1px solid rgba(0,0,0,.2);
  height: 45px;
  line-height: 45px;  
  margin-bottom: 10px;
  font-size: 1em;
  font-family: 'Poppins', sans-serif;
  color: black;
}

[type=submit] {
  margin-top: 25px;
  width: 80%;
  border: 0;
  background-color: #ef233c;
  height: 50px;
  color: #2b2d42;
  font-weight: 700;
  font-size: 1em;
  font-family: 'Poppins', sans-serif;
}

[type='text']:focus {
  outline: none;
  border-color: #e99f4c;
}

h1 {
  color: #ef233c;
  font-weight: 900;
  font-size: 20px;
  font-family: 'Poppins', sans-serif;
 position:absolute;
  transform: translateX(20px) translateY(-60px);

}

p {
  color: rgba(0,0,0,.6);
  font-size: 1.2em;
  margin: 50px 0 50px 0;
  font-family: 'Poppins', sans-serif;
}

span {
  font-size: .75em;
  font-family: 'Poppins', sans-serif;
  background-color:  #264143;
  padding: 2px 5px;
  color: rgba(0,0,0,.6);
  box-shadow: 1px 1px 1px rgba(0,0,0,.3);
  margin: 5px;
}

span:hover {
  color: #53CACE;
}

p:nth-of-type(2) {
  font-size: 1em;
  font-family: 'Poppins', sans-serif;
}
.button {
  background-color: #ef233c; 
  border: none;
  color: white;
  padding: 5px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 100px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 7px;
  font-family: 'Poppins', sans-serif;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #eddcd9;
}

.button1:hover {
  background-color: #eddcd9;
  color: white;
}
h4{
    transform: translateX(1px) translateY(-110px);
    font-weight:400;
}
h4:hover{
    color: pink;
}
</style>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="loginAction.jsp" method="post" style="transform: translateY(90px);">
          <input type="email" name="email" placeholder="Masukkan Email" required>
          <input type="password" name="password" placeholder="Masukkan Password" required>
          <input type="submit" value="Login">
      </form>
      <button class="button button1"><a href="signup.jsp" style="text-decoration: none;color:#264143">Daftar</a></button>
      <h4><a href="forgotPassword.jsp" style="text-decoration: none;color:#264143;">Lupa Password?</a></h4>
  </div>
    <div class="whysignLogin">
        <h2 style=" margin-left: 20px; color:#264143;">Login</h2>
    <p style="margin-left: 20px; margin-top: 10px;">Silahkan isi form berikut jika anda sudah memiliki akun</p>
    <%
        String msg = request.getParameter("msg");
        if("notexist".equals(msg))
        {
    %>
    <h1>Password atau Username Salah</h1>
     <%} %>
     <%if("invalid".equals(msg))
     {%>
     <h1>Some thing Went Wrong! Try Again! </h1>
     <%}%>
     <img alt="anm" src="img/signin.svg">
  </div>
</div>
</body>
</html>