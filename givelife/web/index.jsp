<%-- 
    Document   : index
    Created on : 7 avr. 2016, 21:28:49
    Author     : ABDELADIM ABID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
        String discon= request.getParameter("discon");
        if (discon != null){ // si lutil est deconnecter 
        session.setAttribute("connected", null);} //utiliser disconnectedNavbar ref="navbar.jsp" %> 

  <html>
 
  <!-- navbar -->
  <jsp:include page="navbar.jsp" flush="false"/>

    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li class="active" data-target="#myCarousel" data-slide-to="0"></li>
        <li class="" data-target="#myCarousel" data-slide-to="1"></li>
        <li class="" data-target="#myCarousel" data-slide-to="2"></li>
        <li class="" data-target="#myCarousel" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner" role="listbox">

        <div class="item active">
          <img class="first-slide" src="./plugins/img/1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1><b>Welcome</b></h1>
              <p>Give to the most needed,Give them Hope, Give them Life.</p>
              <p><a class="btn btn-lg btn-primary" href="GiveLife Connect/register.html" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>

        <div class="item">
          <img class="second-slide" src="./plugins/img/6.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>What is <code>GiveLife.com</code></h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget
                quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor
                id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#about" role="button">About Us</a>
              </p>
            </div>
          </div>
        </div>

        <div class="item">
          <img class="third-slide" src="./plugins/img/3.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Many people are wating for your help.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget
                    quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor
                    id nibh ultricies vehicula ut id elit.</p>
       <p><a class="btn btn-lg btn-primary" href="gallery.html" role="button">Browse gallery        </a></p>
            </div>
          </div>
        </div>

        <div class="item">
          <img class="fourth-slide" src="./plugins/img/5.jpg" alt="fourth-slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>How can i help them ?</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget
quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor
id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#actors" role="button">Learn more</a></p>
            </div>
          </div>
        </div>

      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="text-center" style="margin-top: -95px; margin-bottom: 30px;">
      <h2 class="featurette-heading">Register <span class="text-muted">as</span></h2>
    </div>


    <div class="container marketing" id="actors">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="./plugins/img/sick.png" alt="Generic placeholder image" height="140" width="140">
          <h2>Sick</h2>
          <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut             id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
          <p><a class="btn btn-default" href="desc.jsp?type=sick" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="./plugins/img/doc.png" alt="Generic placeholder image" height="140" width="140">
          <h2>Doctor</h2>
          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis                 consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
          <p><a class="btn btn-default" href="desc.jsp?type=doctor" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="./plugins/img/don.png" alt="Generic placeholder image" height="140" width="140">
          <h2>Donator</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis             euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa                   justo sit amet risus.</p>
          <p><a class="btn btn-default" href="desc.jsp?type=donator" role="button">View details »</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette"  style="margin-top: -95px; margin-bottom: -95px;">
        <div class="col-md-7">
          <h2 class="featurette-heading">What is <b>GiveLife</b><small>.com</small> <span class="text-muted">?</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper.             Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5" id="about" >
          <img data-holder-rendered="true" src="./plugins/img/logo.png" class="featurette-image img-responsive center-block" alt="500x500">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette"  style="margin-top: -95px; margin-bottom: -95px;">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper.             Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img data-holder-rendered="true" src="./plugins/img/" class="featurette-image img-responsive center-block" 
               data-src="holder.js/500x500/auto" alt="500x500">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette"  style="margin-top: -95px; margin-bottom: -190px;">
        <div class="col-md-7">
          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper.              Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img data-holder-rendered="true" src="./plugins/img/" class="featurette-image img-responsive center-block" 
               data-src="holder.js/500x500/auto" alt="500x500">
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->




     <!-- Feedback-->
     <div class="container">
         <section>
             <div class="page-header" id="feedback" style="padding-top:100px">
                 <h2>Feedback.<small> Check out the Awesome Feedback</small></h2>
             </div>

             <div class="row">
                 <div class="col-md-4">
                     <blockquote>
                         <p> <img src="./plugins/img/Admin.jpg" alt="Text of the image" class="round_img" >
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi gravida quam ac ante rutrum, in                                mollis ligula mattis. Integer nulla nisi, ullamcorper et posuere vel</p>
                      	 <footer>Abdeladim Abid</footer>
                     </blockquote>
                 </div>
                 <div class="col-md-4">
                     <blockquote>
                         <p><img src="./plugins/img/Admin.jpg" alt="Text of the image" class="round_img" >
                             Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi gravida quam ac ante rutrum, in                                mollis ligula mattis. Integer nulla nisi, ullamcorper et posuere vel</p>
                         <footer>Abdeladim Abid</footer>
                     </blockquote>
                 </div>
                 <div class="col-md-4">
                     <blockquote>
                         <p>
                             <img src="./plugins/img/Admin.jpg" alt="Text of the image" class="round_img" >
                             Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi gravida quam ac ante rutrum, in                                mollis ligula mattis. Integer nulla nisi, ullamcorper et posuere vel</p>
                         <footer>Abdeladim Abid</footer>
                     </blockquote>
                 </div>
             </div><!-- End row -->
         </section>
     </div><!--End Container-->





      <div class="container"  id="faq"  style="padding-top:100px">
        <section>
          <div class="page-header">
            <h2>FAQ.<small> Engaging with consumers.</small></h2>
          </div><!-- End Page Header -->

          <div class="panel-group" id="accordion">
            <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-title">
                  <a href="#collapse-1" data-toggle="collapse" data-parent="#accordion">
                    Question one?
                  </a>
                </div><!-- End panel title -->
                <div id="collapse-1" class="panel-collapse collapse in">
                  <div class="panel-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas non urna in fringilla.
                    Praesent consequat est at feugiat faucibus
                  </div>
                </div><!-- End Panel collapse -->
              </div>
            </div>

            <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-title">
                  <a href="#collapse-2" data-toggle="collapse" data-parent="#accordion">
                    Question Two?
                  </a>
                </div><!-- End panel title -->
                <div id="collapse-2" class="panel-collapse collapse">
                  <div class="panel-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas non urna in fringilla.
                    Praesent consequat est at feugiat faucibus
                  </div>
                </div><!-- End Panel collapse -->
              </div>
            </div>

            <div class="panel panel-default">
              <div class="panel-heading">
                <div class="panel-title">
                  <a href="#collapse-3" data-toggle="collapse" data-parent="#accordion">
                    Question Three?
                  </a>
                </div><!-- End panel title -->
                <div id="collapse-3" class="panel-collapse collapse">
                  <div class="panel-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas non urna in fringilla.
                    Praesent consequat est at feugiat faucibus
                  </div>
                </div><!-- End Panel collapse -->
              </div>
            </div>
          </div><!-- End panel group -->

        </section>
      </div><!-- End container -->


      <!-- Contact -->

        <div class="container"  style="padding-top:100px">
          <section>
            <div class="page-header" id="contact">
                <h2>Contact Us.<small> Contact us for more.</small></h2>
              </div><!-- End Page Header -->

              <div class="row">
                <div class="col-lg-4">
                  <p>Send us a message, or contact us from the address below</p>


                  <address>
                    <strong>Wiredwiki Pvt Ltd.</strong></br>
                    111, Malviya nagar </br>
                    Plot no. 45</br>
                    New delhi - 110017</br>
                    P: +91 9999999999
                  </address>
                </div>

                <div class="col-lg-8">
                  <form action="" class="form-horizontal">
                    <div class="form-group">
                      <label for="user-name" class="col-lg-2 control-label">Name</label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" id="user-name" placeholder="Enter you name">
                      </div>
                    </div><!-- End form group -->

                    <div class="form-group">
                      <label for="user-email" class="col-lg-2 control-label">Email</label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" id="user-email" placeholder="Enter you Email Address">
                      </div>
                    </div><!-- End form group -->

                    <div class="form-group">
                      <label for="user-url" class="col-lg-2 control-label">Your Website</label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" id="user-email" placeholder="If you have Any.">
                      </div>
                    </div><!-- End form group -->

                    <div class="form-group">
                      <label for="user-message" class="col-lg-2 control-label">Any Message</label>
                      <div class="col-lg-10">
                        <textarea name="user-message" id="user-message" class="form-control"
                        cols="20" rows="10" placeholder="Enter your Message"></textarea>
                      </div>
                    </div><!-- End form group -->

                    <div class="form-group">
                      <div class="col-lg-10 col-lg-offset-2">
                        <button type="submit" class="btn btn-primary">Submit</button>
                      </div>
                    </div>



                  </form>
                </div>
              </div><!-- End the row -->

          </section>
        </div>


        <hr>
          <div class="container text-center"  style="margin-bottom:100px" id="subscribe">
          <h3>Subscribe to keep in tuch</h3>
          <p>Enter your name and email</p>

          <form action="" class="form-inline">
            <div class="form-group">
              <label for="subscription">Subscribe</label>
              <input type="text" class="form-control" name="name" placeholder="Your name">
            </div>
            <div class="form-group">
              <label for="email">Email address</label>
              <input type="text" class="form-control" name="email" placeholder="Enter your Email" >
            </div>
            <button type="submit" class="btn btn-default">Subscribe</button>

          </form>

        </div><!-- end Container-->

      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>© 2016 Mobidaf, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->


<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="./plugins/js/holder.js"></script>


  </body>
</html>
