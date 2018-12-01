<%-- 
    Document   : Doctor
    Created on : 20 avr. 2016, 02:33:21
    Author     : ABDELADIM ABID
--%>

    <%@page import="model.Connexion"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<head>
    <link rel="icon" href="./plugins/img/logomin.png">

    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

    <link rel="stylesheet" href="./plugins/css/carousel.css">
    <link rel="stylesheet" href="./plugins/css/GiveLife.css">
    <link rel="stylesheet" href="./plugins/css/bootstrap.css">
    <link rel="stylesheet" href="./plugins/css/fonts.css">

    <!-- jQuery 2.1.4 -->
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.6-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"></script>

    <title>GiveLife | Home</title>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <style>

     .round_img{
  		border-radius: 50%;
  		height: 70px;
  		width: 70px;
  		float: left;
                margin-right: 10px;
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

    .user-name {
                text-transform: capitalize;
    }
    
    </style>
  </head>



<!-- NAVBAR
================================================== -->
  <body data-spy="scroll" data-target="#my-navbar">
      

      <%
       String type=request.getParameter("type");   
      String user=request.getParameter("user");
     
     
     
      if(session.getAttribute("connected") == null) { //si lutil est deconnecte   %>
     
      <h1><%=type%>
          <%=user%></h1>
     <!-- disconnectedNavbar -->
     
    <nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">GiveLife</a>
        </div>



        <div id="navbar" class="collapse navbar-collapse">

          <ul class="nav navbar-nav">
            <li class="active"><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#feedback">Feedback</a></li>
            <li><a href="#faq">Faq</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="#subscribe">Subscribe</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                Gallery <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="sick desc.html">Sick</a></li>
                <li><a href="doc desc.html">Doctors </a></li>
                <li><a href="don desc.html">Donators</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">More</li>
                <li><a href="#">Cured</a></li>
                <li><a href="#">GiveLife</a></li>
              </ul>
            </li>
          </ul>

        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" name="Login" method="POST" action="connexion">
            <div class="form-group">
                <input placeholder="Email" class="form-control" name="user" type="text">
            </div>
            <div class="form-group">
                <input placeholder="Password" class="form-control" name="pass" type="password">
            </div>
              <button type="submit" class="btn btn-success" name="connect">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
        
        </div>
      </div>
    </nav>
    <div id="home"></div>
     
     
     

                <% }else{ // si lutil est deja connecter  %>
                
                <!-- connectedNavbar -->
                
                 <nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
      <div class="container">
          <div>
            <img src="./plugins/img/med2.png" class="center"/>
          </div>
          <div class="navbar-header" style="margin-left: 30px">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" 
                  aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
            <a class="navbar-brand" href="index.html">GiveLife</a>
        </div>



        <div id="navbar" class="collapse navbar-collapse">

          <ul class="nav navbar-nav">
            <li><a href="index.jsp">Home</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" 
                 aria-expanded="false">
                Gallery <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="sick desc.html">Sick</a></li>
                <li><a href="doc desc.html">Doctors </a></li>
                <li><a href="don desc.html">Donators</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">More</li>
                <li><a href="#">Cured</a></li>
                <li><a href="#">GiveLife</a></li>
              </ul>
            </li></ul>
            
            
                    
          <div class="navbar-custom-menu" style="float: right">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 4 messages</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- start message -->
                        <a href="#">
                          <div class="pull-left">
                            <img src=<%=session.getAttribute("image")%> class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Abdeladim Abid
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <p>You have an appointment. </p>
                        </a>
                      </li><!-- end message -->
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src=<%=session.getAttribute("image")%> class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            AdminLTE Design Team
                            <small><i class="fa fa-clock-o"></i> 2 hours</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src=<%=session.getAttribute("image")%> class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Developers
                            <small><i class="fa fa-clock-o"></i> Today</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src=<%=session.getAttribute("image")%> class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Sales Department
                            <small><i class="fa fa-clock-o"></i> Yesterday</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src=<%=session.getAttribute("image")%> class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Reviewers
                            <small><i class="fa fa-clock-o"></i> 2 days</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">See All Messages</a></li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-warning text-yellow"></i> 
                          Very long description here that may not fit into the page and may cause design problems
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-red"></i> 5 new members joined
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user text-red"></i> You changed your username
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                  <span class="label label-danger">9</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 9 tasks</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Design some buttons
                            <small class="pull-right">20%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-aqua" style="width: 20%" 
                                 role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">20% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Create a nice theme
                            <small class="pull-right">40%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-green" style="width: 40%" 
                                 role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">40% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Some task I need to do
                            <small class="pull-right">60%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-red" style="width: 60%" 
                                 role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">60% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Make beautiful transitions
                            <small class="pull-right">80%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-yellow" style="width: 80%" 
                                 role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">80% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                    </ul>
                  </li>
                  <li class="footer">
                    <a href="#">View all tasks</a>
                  </li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src=<%=session.getAttribute("image")%> class="user-image" alt="User Image">
                  <span class="hidden-xs"><%=session.getAttribute("user")%></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header" style="background-color: rgb(90, 90, 90)">
                    <img src=<%=session.getAttribute("image")%> class="img-circle" alt="User Image">
                    <p>
                      <%=session.getAttribute("user")%> - Donator
                      <small>Member since Avrl. 2016</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Edit Infos</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Hitory</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Wallet</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="profile.jsp" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="index.jsp?discon=discon" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
            
            
            
            
            
            
            
            
            
            

          
        
        </div>
      </div>
    </nav>
                
               <%}%>