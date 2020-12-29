<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
 <html>  
 <head>  
 <title>Excluir Produto</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="produto.jsp">  
   
 <p><strong>Tabela Produto </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Código
    </strong></td>  
    
    <td width=200><strong>  
       Categoria  
    </strong></td>      
	      
	<td width=200><strong>  
       Fornecedor  
    </strong></td>

	<td width=200><strong>  
       Descricao  
    </strong></td>
	
	<td width=50><strong>  
       Peso  
    </strong></td>
	
	<td width=50><strong>  
       Controlado  
    </strong></td>
	
	<td width=50><strong>  
       Qtdemin  
    </strong></td>
    </tr>   
   
   
 <%      
    try {  
   
      con.setCodproduto(Integer.parseInt(request.getParameter("codprodutoField")));  
   
       if (con.excluirDados())  
       {  
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %>  
           <tr>  
           <td width=50>  
                <%out.print(temp.getString("codproduto"));%>  
          </td>  
		  
           <td width=200>  
                <%out.print(temp.getString("categoria_codcategoria"));%>  
          </td>

			<td width=50>  
                <%out.print(temp.getString("fornecedor_codfornecedor"));%>  
          </td>
		  
			<td width=200>  
                <%out.print(temp.getString("descricao"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("peso"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("controlado"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("qtdemin"));%>  
          </td>
          </tr>  
          <%}  
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/produto.jsp?status=Registro não encontrado");  
       }     
    }catch (Exception e) {  
       e.printStackTrace();  
    }  
   
            
 %>  
 </table>  
   <p> </p>  
   <p>  
     <input type="submit" name="Submit" value="voltar">  
     </p>  
   <p><strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codprodutoField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 