<%-- 
    Document   : Doctor
    Created on : 20 avr. 2016, 02:33:21
    Author     : ABDELADIM ABID
--%>

<%
        String type = "Error";
        String desc = "Error";
        String img  = "Error";
        String href = "Error";
        
    if(request.getParameter("type").equals("sick")){
         type = "sick";
         desc = "Si vous êtes un médecin et vous voulez vraiment faire du bénévolat, inscrivez-vous vites sur notre site GIVELIFE.com.  Pourquoi faire ? Plusieurs gens attendent votre aide, vous êtes la clé de la première porte pour leurs donner la chance de vivre encore plus de temps a cotes de leurs famille Comment faire pour s’inscrire ?  -Remplir le formulaire suivant (Href). -Valider votre inscription par email. -Remplir le reste des informations. Et après l’inscription ? -Là vous allez commencer le rôle d’un médecin bénévole que notre site a vraiment besoin. -Accueillir les patients au sein de votre cabinet pour une consultation gratuite. -Approuvez ses derniers sur notre site en saisissant leur état et la somme d’argent suffisante pour leur opération";
         img = "./plugins/img/sick.png";
         href="register.jsp?type=sick";
    } 
    else if(request.getParameter("type").equals("doctor")){
         type = "doctor";
         desc = "a Doctor is a lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mauris tortor, eleifend sit amet fringilla ac, tincidunt id massa. Proin et odio mattis, venenatis lacus vel, faucibus elit Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mauris tortor, eleifend sit amet fringilla ac, tincidunt id massa. Proin et odio mattis, venenatis lacus vel, faucibus elit";
         img = "./plugins/img/doc.png";
         href="register.jsp?type=doctor";
    }
    else if(request.getParameter("type").equals("donator")){
         type = "donator";
         desc = "a Donator is a lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mauris tortor, eleifend sit amet fringilla ac, tincidunt id massa. Proin et odio mattis, venenatis lacus vel, faucibus elit Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mauris tortor, eleifend sit amet fringilla ac, tincidunt id massa. Proin et odio mattis, venenatis lacus vel, faucibus elit";
         img = "./plugins/img/don.png";
         href="register.jsp?type=donator";
    }%>
        
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>GiveLife | <%=type%></title>
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

    <link rel="icon" href="./plugins/img/logomin.png">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition login-page">
    <div class="login-box">

      <div class="login-logo">
        <a href="index.jsp"><b>GiveLife</b>.com</a>
      </div><!-- /.login-logo -->

      <div class="login-box-body text-center">

          <img class="img-circle" src=<%=img%> alt="Generic placeholder image" height="140" width="140">

        <div style="marging-bottom:100px"></div>

        <h3>a <%=type%></h3>

        <p><%=desc%></p>

        <a href=<%=href%> class="btn btn-primary navbar-btn text-center">Register a new membership</a>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->


    <!-- jQuery 2.1.4 -->
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.6-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"></script>



  </body>
</html>
