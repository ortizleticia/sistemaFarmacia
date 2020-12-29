 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Consulta Fornecedor</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCodfornecedor(Integer.parseInt(request.getParameter("codfornecedorField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/fornecedor.jsp?status=Consulta efetuada com sucesso&codfornecedor="+temp.getString("codfornecedor")+
			 "&cidade_codcidade="+temp.getString("cidade_codcidade")+
			 "&fornecedor="+temp.getString("fornecedor")+
			 "&endereco="+temp.getString("endereco")+
			 "&num="+temp.getString("num")+
			 "&bairro="+temp.getString("bairro")+
			 "&cep="+temp.getString("cep")+
			 "&contato="+temp.getString("contato")+
			 "&cnpj="+temp.getString("cnpj")+
			 "&insc="+temp.getString("insc")+
			 "&tel="+temp.getString("tel"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/fornecedor.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 