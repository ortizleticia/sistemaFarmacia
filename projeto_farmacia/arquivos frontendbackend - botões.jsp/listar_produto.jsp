<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
    <html>  
    <head>  
    <title>Listar produto</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="produto.jsp">  
     
   <p><strong>Tabela produto </strong></p>  
   <table border= cellspacing= cellpadding= >  
     
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
        
      }catch (Exception e) {  
         e.printStackTrace();  
      }  
        
   %>  
   </table>  
     <p>  
       <input type="submit" name="Submit" value="voltar">  
   </p>  
   </form>  
   </body>  
   </html>  