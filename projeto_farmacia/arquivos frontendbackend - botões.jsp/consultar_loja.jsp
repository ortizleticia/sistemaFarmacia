<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_loja.Conexao_loja"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Consulta Loja</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCodloja(Integer.parseInt(request.getParameter("codlojaField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/loja.jsp?status=Consulta efetuada com sucesso&codloja="+ temp.getString("codloja")+
		  "&cidade_codcidade="+temp.getString("cidade_codcidade")+
		  "&nome="+temp.getString("nome")+
		  "&endereco="+temp.getString("endereco")+
		  "&num="+temp.getString("num")+
		  "&bairro="+temp.getString("bairro")+
		  "&tel="+temp.getString("tel")+
		  "&cnpj="+temp.getString("cnpj")+
		  "&insc="+temp.getString("insc")); 
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/loja.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 