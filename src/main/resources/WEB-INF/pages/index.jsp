<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Prog.kiev.ua</title>
  </head>
  <body>
     <div align="center">
        <form  name="submit"action="/view"  onsubmit="return validateForm()"  method="POST">
            Photo id: <input id="id1" type="text" name="photo_id" required>
            <input type="submit" />
        </form>

         <%--<script type="application/javascript">--%>
             <%--function validateForm() {--%>
                 <%--var x = document.forms["submit"]["photo_id"].value;--%>
                 <%--if (x == null || x == "") {--%>
                     <%--alert("Name must be filled out");--%>
                     <%--return false;--%>
                 <%--}--%>
             <%--}--%>
         <%--</script>--%>

        <form action="/add_photo" enctype="multipart/form-data" method="POST">
            Photo: <input type="file" name="photo">
            <input type="submit" />
        </form>



         <input type="submit" value="View list of photo IDs" onclick="window.location='/viewlist';" />
         <input type="submit" value="View all photos" onclick="window.location='/viewall';" />
         <input type="button" value="go to test page"  onclick="window.location='/test';"/>
      </div>
  </body>
</html>
