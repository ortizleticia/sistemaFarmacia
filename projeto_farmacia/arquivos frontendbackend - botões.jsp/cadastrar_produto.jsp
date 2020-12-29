<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Produto</title>  
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
       con.setCategoria_codcategoria(Integer.parseInt(request.getParameter("categoria_codcategoriaField")));
	   con.setFornecedor_codfornecedor(Integer.parseInt(request.getParameter("fornecedor_codfornecedorField")));
	   con.setDescricao(request.getParameter("descricaoField"));
	   con.setPeso(request.getParameter("pesoField"));
	   con.setControlado(request.getParameter("controladoField"));
	   con.setQtdemin(Integer.parseInt(request.getParameter("qtdeminField")));
	   con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("codprodutoField").equals(temp.getString("codproduto")))  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/produto.jsp?status=Registro já existente");  
         
       do{  
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
       <%}while (temp.next());  
      
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codprodutoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 