 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_cidade.Conexao_cidade"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Consulta Cidade</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCodcidade(Integer.parseInt(request.getParameter("codcidadeField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/cidade.jsp?status=Consulta efetuada com sucesso&codcidade="+temp.getString("codcidade")+
		  "&cidade="+temp.getString("cidade")+
		  "&uf="+temp.getString("uf"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/cidade.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 