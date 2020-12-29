<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itementrada.Conexao_itementrada"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Consulta Item Entrada</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCoditementrada(Integer.parseInt(request.getParameter("coditementradaField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/itementrada.jsp?status=Consulta efetuada com sucesso&coditementrada="+ temp.getString("coditementrada")+
		  "&entrada_codentrada="+temp.getString("entrada_codentrada")+
		  "&produto_codproduto="+temp.getString("produto_codproduto")+
		  "&lote="+temp.getString("lote")+
		  "&qtde="+temp.getString("qtde")+
		  "&valor="+temp.getString("valor")); 
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/itementrada.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 