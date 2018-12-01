<%-- 
    Document   : connexion
    Created on : 16 avr. 2016, 17:28:50
    Author     : ABDELADIM ABID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>GiveLife | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="./plugins/css/GiveLife.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="./plugins/iCheck/square/blue.css">

    <link rel="icon" href="./plugins/img/logomin.png">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
        <style>

  	.round_img{
  		border-radius: 50%;
  		height: 70px;
  		width: 70px;
  		float: left;
  	}

    .min{
                height: 25px;
  		width: 25px;
                align: middle;
    }
    
    .med{
                height: 50px;
  		width: 50px;
                align: middle;
    }
    
    .larg{
                height: 100px;
  		width: 100px;
                align: middle;
    }
    
    .relative {
                position: relative;
    }
    
    .center {
                position: absolute;
                top: 25%;
                text-align: center;
}
    
    </style>
    
  </head>
  
  <% String validPass = (String) request.getParameter("validPass"); 
  if (validPass!=null){%>
  kljjlk,lkn
  <script>
    document.getElementById("validPass").innerHTML = "Incorrect password or login";
  </script>
  <%}%>
  
  <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="index.jsp"><b>GiveLife</b>.com</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
          <p class="login-box-msg" style="color: red" id="validPass"></p>
        <p class="login-box-msg">Sign in to start your session</p>
        <form action="../index2.html" method="post">
          <div class="form-group has-feedback">
            <input type="email" class="form-control" placeholder="Login">
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="Password">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">
              <div class="checkbox icheck">
                <label>
                  <input type="checkbox"> Remember Me
                </label>
              </div>
            </div><!-- /.col -->
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
            </div><!-- /.col -->
          </div>
        </form>
        
        
        <a href="#">I forgot my password</a><br><br>
        
        <div class="text-center">
          <p>- OR -</p>
          <p>- Register a new membership as -</p>
          <center> <div style="width:210px">
          <a href="register.jsp?type=doctor" class="text-center" style="float:left">
              <img class="img-circle med" src="./plugins/img/doc.png" alt="Doctor image" title="Doctor"></a>
          <a href="register.jsp?type=donator" class="text-center" style="float:none">
          <img class="img-circle med" src="./plugins/img/don.png" alt="Donator image" title="Donator"></a>
          <a href="register.jsp?type=sick" class="text-center" style="float:right">
          <img class="img-circle med" src="./plugins/img/sick.png" alt="Sick image" title="Sick">
          </a></div></center>
          
          <!--<center> <div style="width:200px">
          <a href="register.jsp?type=doctor" class="text-center" style="float:left">Doctor</a>
          <a href="register.jsp?type=donator" class="text-center" style="float:none">Donator</a>
          <a href="register.jsp?type=sick" class="text-center" style="float:right">Sick</a>
          </div></center>-->
          
        </div>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->


    <!-- jQuery 2.1.4 -->
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.6-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"></script>
    <!-- iCheck -->
    <script src="./plugins/iCheck/icheck.min.js"></script>


    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>
