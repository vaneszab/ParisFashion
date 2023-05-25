<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Daftar</title>
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
}

.whysign {
  float: left;
  background-color:  #8d99ae;
  width: 450px;
  height: 528px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}
.whysignLogin
{
	float: right;
  background-color:  pink;
  width: 480px;
  height: 347px;
  border-radius: 0 5px 5px 0;
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
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}
.signup {
  float: left;
  width: 300px;
  padding: 20px 20px;
  height:508px;
  text-align: center;
  border-radius: 5px 0 0 5px;
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
  border-radius: 5px;
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
  border-radius: 2px;
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
  background-color:black; 
  border: none;
  color: white;
  padding: 5px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 15px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 7px;
  font-family: 'Poppins', sans-serif;
}

.button1 {
  background-color: white; 
  color: #de5499; 
  border: 2px solid #eddcd9;
}

.button1:hover {
  background-color: #eddcd9;
  color: white;
}
    </style>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="signupAction.jsp" method="post" style="font-family:'Poppins', sans-serif;">
          <input type="text" name="name" placeholder="Masukkan Nama" required>
          <input type="email" name="email" placeholder="Masukkan Email" required>
          <input type="number" name="mobileNumber" placeholder="Masukkan Nomor HP" required>
          <select name="securityQuestion" required>
              <option value="Apa mobil pertama anda?">Apa mobil pertama anda?</option>
              <option value="Apa nama binatang peliharaan anda?"> Apa nama binatang peliharaan anda? </option>
              <option value="Apa nama sekolah dasar anda?"> Apa nama sekolah dasar anda? </option>
          </select>
          <input type="text" name="answer" placeholder="Masukkan Jawaban" required>
          <input type="password" name="password" placeholder="Masukkan Password" required>
          <input type="submit" value="Daftar">
      </form>
      <button class="button button1"><a href="login.jsp" style="text-decoration: none;color:#264143;">Login</a></button>
  </div>
  <div class='whysign'>
<h2 style=" margin-left: 20px; color:#264143;">Pendaftaran</h2>
    <p style="margin-left: 20px; margin-top: 10px;">Silahkan isi form berikut jika anda belum memiliki akun</p>
      <%
          String msg=request.getParameter("msg");
          if("valid".equals(msg))
          {
           %>         
<h1>Pendaftaran Berhasil!</h1>
<%}%>
<%
    if("invalid".equals(msg)){
        %>
<h1>Anda Sudah Pernah Mendaftar dengan</h1> 
<br>
<h1>Email tersebut!</h1>
<%}%>

    <img alt="anm" src="img/signup.svg">
  </div>
</div>

</body>
</html>