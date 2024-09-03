<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html">
<h:head>
  <meta charset="UTF-8"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
  <title>Tribal Handicrafts</title>
  <link type="text/css"  rel="stylesheet"  href="style.css"/>
  
  
  
</h:head>
<h:body>
 <nav class="navbar">
    <div class="navdiv">
      <div class="logo"><a href="#">Handcrafts</a> </div>
      <ul>
        <li><a href="index.xhtml">Home</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="contact.jsp">Contact Us</a></li>
        
        
      </ul>
    </div>
  </nav>

<div class="contact_us_2">
  <div class="responsive-container-block big-container">
    <div class="blueBG">
    </div>
    <div class="responsive-container-block container">
      <form class="form-box" action="ReplyContact.jsp" method="get" >
        <div class="container-block form-wrapper">
          <p class="text-blk contactus-head">
            Get in Touch
          </p>
         
          <div class="responsive-container-block">
            <div class="responsive-cell-block wk-ipadp-6 wk-tab-12 wk-mobile-12 wk-desk-6" id="i10mt">
              <p class="text-blk input-title">
                NAME
              </p>
              <input title="Enter a Valid name"  pattern="[a-zA-Z0-9 ]+" class="input" id="ijowk" name="FirstName" required>
            </div>
           
            <div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-tab-12 wk-mobile-12">
              <p class="text-blk input-title">
                EMAIL
              </p>
              <input title="must end with @gmail.com" pattern="[a-zA-Z0-9._+]+[a-z@]+\.[a-z]{2,4}" class="input" id="ipmgh" name="Email" required>
            </div>
         
            <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-12 wk-ipadp-12" id="i634i">
              <p class="text-blk input-title">
                WHAT DO YOU HAVE IN MIND
              </p>
              <textarea pattern="[a-zA-Z0-9 ]+" class="textinput" name="query" id="i5vyy" placeholder="Please enter query..." required></textarea>
            </div>
          </div>
          
          <button class="submit-btn"  >
            Submit
          </button>
          
        </div>
        <center>
        <div class="social-media-links">
          <a href="#" id="ix94i-2">
            <img class="link-img" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-twitter.png">
          </a>
          <a href="#">
            <img class="link-img" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-facebook.png">
          </a>
          <a href="#">
            <img class="link-img" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-google.png">
          </a>
          <a href="#" id="izldf-2">
            <img class="link-img" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-instagram.png">
          </a>
        </div>
        </center>
      </form>
    </div>
  </div>
</div>



</h:body>

</html>