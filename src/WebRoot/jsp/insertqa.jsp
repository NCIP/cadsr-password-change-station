<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String dbuser=request.getParameter("dbuser");
String dbpwd=request.getParameter("dbpwd");
String name=request.getParameter("id");
String a1=request.getParameter("a1");
String a2=request.getParameter("a2");
String a3=request.getParameter("a3");
Class.forName("oracle.jdbc.driver.OracleDriver");
String jdbcurl = "jdbc:oracle:thin:@ncidb-dsr-q.nci.nih.gov:1551:DSRQA";
Properties info = new Properties();
info.put( "user", dbuser );
info.put( "password", dbpwd );
Connection con = DriverManager.getConnection(jdbcurl, info);
Statement st=con.createStatement();
String sql = "INSERT INTO SBREXT.USER_SECURITY_QUESTIONS (ua_name,answer1,answer2,answer3) VALUES('"+name+"','"+a1+"','"+a2+"','"+a3+"')";
System.out.println("SQL executed = [" + sql +"]");
//int i=st.executeUpdate(sql);
out.println("Data is inserted successfully");
out.println("SQL executed = [" + sql+"]");
%>