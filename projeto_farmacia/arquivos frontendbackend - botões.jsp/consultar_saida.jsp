<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_saida.Conexao_saida"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Consulta Saida</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCodsaida(Integer.parseInt(request.getParameter("codsaidaField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/saida.jsp?status=Consulta efetuada com sucesso&codsaida="+ temp.getString("codsaida")+
		  "&loja_codloja="+temp.getString("loja_codloja")+
		  "&transportadora_codtransportadora="+temp.getString("transportadora_codtransportadora")+
		  "&total="+temp.getString("total")+
		  "&frete="+temp.getString("frete")+
		  "&imposto="+temp.getString("imposto")); 
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/saida.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 