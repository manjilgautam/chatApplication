
<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>

</head>
<body>
<div>
    <div>
        <h1><%= request.getSession().getAttribute("user") %>'s Profile page </h1>
        <!--About Section -->
        <h3>Summary</h3>
        <!-- info from descriptions -->
        <%=request.getSession().getAttribute("description")%>
        <br>
        <br>
        <br>
        <h3> Edit Summary</h3>

        <form action="/profile" method="POST">
            <label for="description">Summary</label>
            <br/>
            <!-- Populating description field so that user can edit it, if they want it -->
            <textarea class="form-control" rows="4" cols="100" name="description"
                      id="description"><%=request.getSession().getAttribute("description")%></textarea>
            <br/>
            <button>Submit</button>
        </form>
        <hr>
    </div>
  </main>
</div>
</body>
</html>