<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_entrada.Conexao_entrada"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Consulta Entrada</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCodentrada(Integer.parseInt(request.getParameter("codentradaField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/entrada.jsp?status=Consulta efetuada com sucesso&codentrada="+ temp.getString("codentrada")+
		  "&transportadora_codtransportadora="+temp.getString("transportadora_codtransportadora")+
		  "&dataped="+temp.getString("dataped")+
		  "&dataentr="+temp.getString("dataentr")+
		  "&total="+temp.getString("total")+
		  "&frete="+temp.getString("frete")+
		  "&numnf="+temp.getString("numnf")+
		  "&imposto="+temp.getString("imposto"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/entrada.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 