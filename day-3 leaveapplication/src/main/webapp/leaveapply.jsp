<%@ page import="java.sql.*" %>
<%@ page import="com.motivity.*"%>
<%  
    int eid=Integer.parseInt(request.getParameter("eid"));
    String ename=request.getParameter("ename");
    String eemail=request.getParameter("eemail");
    String ephonenumber=request.getParameter("ephonenumber");
    int eage=Integer.parseInt(request.getParameter("eage"));
    String edept=request.getParameter("edept");
    String eform=request.getParameter("eform");
    String eto=request.getParameter("eto");
    int nod=Integer.parseInt(request.getParameter("nod"));
    String ereason=request.getParameter("ereason");
    String estatus=request.getParameter("estatus");
	Connection conn=DbConnection.getConnection();
	PreparedStatement ps=conn.prepareStatement("insert into employeeleavetable values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setInt(1,eid);
	ps.setString(2,ename);
	ps.setString(3, eemail);
	ps.setString(4,ephonenumber);
	ps.setInt(5,eage);
	ps.setString(6,edept);
	ps.setString(7,eform);
	ps.setString(8,eto);
	ps.setInt(9,nod);
	ps.setString(10,ereason);
	ps.setString(11,estatus);
	int i=ps.executeUpdate();
	if(i!=0)
	{
		response.sendRedirect("./employeeprofile.html");
			}
	else{
		out.println("hello bye");
	}
	
	
	
%>