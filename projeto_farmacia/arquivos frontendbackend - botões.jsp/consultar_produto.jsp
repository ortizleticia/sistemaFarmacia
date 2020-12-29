<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Consulta Produto</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCodproduto(Integer.parseInt(request.getParameter("codprodutoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/produto.jsp?status=Consulta efetuada com sucesso&codproduto="+ temp.getString("codproduto")+
		  "&categoria_codcategoria="+temp.getString("categoria_codcategoria")+
		  "&fornecedor_codfornecedor="+temp.getString("fornecedor_codfornecedor")+
		  "&descricao="+temp.getString("descricao")+
		  "&peso="+temp.getString("peso")+
		  "&controlado="+temp.getString("controlado")+
		  "&qtdemin="+temp.getString("qtdemin"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/produto.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 