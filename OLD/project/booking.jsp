<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="GetReservation.jsp">
        <input type="text" placeholder="Name" id="Name" name="Name" class="box" required />
        <input type="email" placeholder="Email" id="Email" name="Email" class="box" required />
        <input type="number" placeholder="Phone number" id="Phone" name="Phone" class="box" required />
        <div class="form" id="meso11">Date</div>
        <input type="date" placeholder="Reservation for Date" id="Date" name="Date" class="box" required />
        <div class="time"><div class="form" id="meso11">Arrival time</div>
        <input type="time" placeholder="Arrival time" id="ATime" name="ATime" class="box" required />
        <div class="form" id="meso11">Departure time</div>
        <input type="time" placeholder="Departure time" id="DTime" name="DTime" class="box" required /></div>
        <input type="text" placeholder="total Guests" id="Guests" name="Guests" class="box" required />
        <textarea
          name="Info"
          placeholder="Message"
          class="box"
          id="Info"
          cols="30"
          rows="10"
        ></textarea>
        <input type="Submit" value="Submit" class="btn" />
      </form>
</body>
</html>