<html>
<head>
  <title>The Last Dance</title>
</head>
<body>
  <h3>Choose a player:</h3>
  <form method="get">
    <input type="checkbox" name="author" value="Michael Jordan">Michael Jordan
    <input type="checkbox" name="author" value="Scottie Pippen">Scottie Pippen
    <input type="checkbox" name="author" value="Dennis Rodman">Dennis Rodman
    <input type="submit" value="Query">
  </form>
 
  <%
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected author(s):</h3>
    <ul>
  <%
      for (int i = 0; i < authors.length; ++i) {
  %>
        <li><a href="https://en.wikipedia.org/wiki/<%= authors[i] %>"><%= authors[i] %></a></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>