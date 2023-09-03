<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>coffeee</title>
   

  </head>
  <body>
    <section class="menu" id="menu">
      <h1 class="heading">our menu <span>popular menu</span></h1>

      <div class="box-container" style="display: flex; flex-wrap: wrap">
        <jsp:include page="./productMenu.jsp" />
      </div>
    </section>
    
  </body>
</html>
