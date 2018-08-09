<%@page language="java" contentType="text/html"%>
<%
out.write("\r\n");
out.write("<html>\r\n");
out.write("\t<head><title>Hello World dynamic HTML</title></head>\r\n");
out.write("<body>\r\n");
out.write("Hello World!\r\n");
out.write('\r');
out.write('\n');

java.util.Date date = new java.util.Date();
out.println("<p>Now is " + date + "</p>\r\n");
out.println("<p>Your IP address is " + request.getRemoteAddr());

String userAgent = request.getHeader("user-agent");
String browser = "unknown";
out.print("<p>and your browser is ");
if (userAgent != null) {
if (userAgent.indexOf("MSIE") > -1) {
browser = "MS Internet Explorer";
}
else if (userAgent.indexOf("Firefox") > -1) {
browser = "Mozilla Firefox";
}
else if (userAgent.indexOf("Safari") > -1) {
browser = "Safari";
}
}
out.println(browser + "</p>");
out.write("\r\n");
out.write("</body>\r\n");
out.write("</html>\r\n");
%>
