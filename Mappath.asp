<%
response.write(Server.MapPath("test.asp") & "<br>")
response.write(Server.MapPath("script/test.asp") & "<br>")
response.write(Server.MapPath("/script/test.asp") & "<br>")
response.write(Server.MapPath("\script") & "<br>")
response.write(Server.MapPath("/") & "<br>")
response.write(Server.MapPath("\") & "<br>")
%>

