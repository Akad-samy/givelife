<%-- 
    Document   : LockScreen
    Created on : 16 avr. 2016, 19:48:48
    Author     : ABDELADIM ABID
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.Connexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

     <% String user = request.getParameter("user");
        String nmuser="";
        String type = request.getParameter("type");
        String url="";
        String tpimg="profil";
        
        String query = "select * from "+type+" where idutilisateur=( select idutilisateur from utilisateur where LOWER(login) = LOWER(?))";
        try {
            PreparedStatement st = Connexion.getConn().prepareStatement(query);
            st.setString(1, user);
            ResultSet rs = st.executeQuery();
            
            
            if(rs.next()){
                
                nmuser = rs.getString("nom")+" "+rs.getString("prenom");
                
                StringBuffer res = new StringBuffer();

                String[] strArr = nmuser.split(" ");
                for (String str : strArr) {
                char[] stringArray = str.trim().toCharArray();
                stringArray[0] = Character.toUpperCase(stringArray[0]);
                str = new String(stringArray);

                res.append(str).append(" ");
                }
                nmuser=res.toString().trim();
                
                
                session.setAttribute("user",nmuser);
            }else{
                session.setAttribute("user","none");
                PrintWriter pr = response.getWriter();
                pr.println("** Nothing happened ** Else : Error");
            }
    // else if validation == non valid
            } catch (SQLException ex) {
                PrintWriter pr = response.getWriter();
                pr.println("** Nothing happened ** Table : "+ type); 
                pr.println("** Nothing happened ** Error : "+ ex.getMessage()); 
            }
         
String requete ="select * from image where type=? and idutilisateur=(select idutilisateur from utilisateur where LOWER(login) = LOWER(?))";     
  
        try {
            PreparedStatement sta = Connexion.getConn().prepareStatement(requete);
           sta.setString(1, tpimg);
           sta.setString(2, user);
            ResultSet res = sta.executeQuery();
            
            
            if(res.next()){
     url=res.getString("urlimage");
     }else{
                session.setAttribute("user","none");
                PrintWriter pri = response.getWriter();
                pri.println("** Nothing happened ** Else : Error IMAGE");
            }
    // else if validation == non valid
            } catch (SQLException ex) {
                PrintWriter pri = response.getWriter();
                pri.println("** Nothing happened ** Table : "+ type); 
                pri.println("** Nothing happened ** Error : "+ ex.getMessage()); 
                               }
            %>
<!DOCTYPE html>
<html>
  <head>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Logo -->
    <link rel="icon" href="./plugins/img/logomin.png">

    <title>Welcome <%=nmuser%></title>
    
    
    <script type="text/javascript">

    window.onload=timeout;
    function timeout(){
    window.setTimeout("redirect()",3000)}

    function redirect(){
    window.location="gallery.jsp"
    return}

    </script>
    
    <style>
        .round-img{
  		border-radius: 50%;
  		height: 150px;
  		width: 150px;
  		float: left;
                border:8px solid rgba(255, 255, 255, .5);
                align: middle;
  	}
        
        body{
            background-color:#d2d6de
        }
        
        .center {
                position: absolute;
                text-align: center;
        }
    </style>



  <body onload="timeout()">
      
      <%
        String connected= request.getParameter("connect");
        session.setAttribute("connected", connected);
        session.setAttribute("image" , url);
        %>
        
    <!-- Automatic element centering -->
  <center>
    <div style="margin-top: 100px"> 
      <div> <h1><b>Welcome</b></h1> </div>
      <!-- User name -->
      <div><h2><%=nmuser%></h2></div>
     
      <br><br>
      
        <!-- User image -->
     
        <img class="round-img center" style="margin-left: -75px" src=<%=url%> alt="User Image">
         <!-- img -->
      
      <div style="margin-top:250px"> <!-- footer -->
        Copyright &copy; 2014-2015 <b><a href="http://mobidaf.com" class="text-black">Mobidaf Studio</a></b><br>
        All rights reserved
      </div><!-- footer -->
    </div>
  </center>




    <!-- jQuery 2.1.4 -->
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.6-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"></script>
  </body>
</html>
