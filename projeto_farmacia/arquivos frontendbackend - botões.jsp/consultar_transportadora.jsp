<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_transportadora.Conexao_transportadora"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Consulta Transportadora</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCodtransportadora(Integer.parseInt(request.getParameter("codtransportadoraField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/transportadora.jsp?status=Consulta efetuada com sucesso&codtransportadora="+ temp.getString("codtransportadora")+
		  "&cidade_codcidade="+temp.getString("cidade_codcidade")+
		  "&transportadora="+temp.getString("transportadora")+
		  "&endereco="+temp.getString("endereco")+
		  "&num="+temp.getString("num")+
		  "&bairro="+temp.getString("bairro")+
		  "&cep="+temp.getString("cep")+
		  "&cnpj="+temp.getString("cnpj")+
		  "&insc="+temp.getString("insc")+
		  "&contato="+temp.getString("contato")+
		  "&tel="+temp.getString("tel"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/transportadora.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 