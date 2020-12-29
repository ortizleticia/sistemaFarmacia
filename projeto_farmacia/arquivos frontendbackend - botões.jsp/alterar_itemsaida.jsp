<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itemsaida.Conexao_itemsaida"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Alterar Item Saida</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="itemsaida.jsp">  
   
 <jsp:setProperty name="con" property="coditemsaida" value='<%=Integer.parseInt(request.getParameter("coditemsaidaField"))%>'/>  
 <jsp:setProperty name="con" property="saida_codsaida" value='<%=Integer.parseInt(request.getParameter("saida_codsaidaField"))%>'/>   
 <jsp:setProperty name="con" property="produto_codproduto" value='<%=Integer.parseInt(request.getParameter("produto_codprodutoField"))%>'/> 
 <jsp:setProperty name="con" property="lote" value='<%=(request.getParameter("loteField"))%>'/>  
 <jsp:setProperty name="con" property="qtde" value='<%=Integer.parseInt(request.getParameter("qtdeField"))%>'/>  
 <jsp:setProperty name="con" property="valor" value='<%=(request.getParameter("valorField"))%>'/>  
 
 
 <p><strong>Tabela Item Saida </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
   <tr>  
     <td width=50><strong>  
       Código
    </strong></td>  
    
    <td width=50><strong>  
       Produto  
    </strong></td>      
	      
	<td width=50><strong>  
       Saida  
    </strong></td>

	<td width=50><strong>  
       Lote  
    </strong></td>
	
	<td width=50><strong>  
       Qtde  
    </strong></td>
	
	<td width=50><strong>  
       Valor  
    </strong></td>
	
	
    </tr>    
   
   
   
 <%      
    try {  
   
       boolean testa = con.alterarDados();  
                  
       if (con.alterarDados())  
       {           
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %>  
           <tr>  
           <td width=50>  
                <%out.print(temp.getString("coditemsaida"));%>  
          </td>  
		  
           <td width=50>  
                <%out.print(temp.getString("produto_codproduto"));%>  
          </td>

			<td width=50>  
                <%out.print(temp.getString("saida_codsaida"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("lote"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("qtde"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("valor"));%>  
          </td>
          </tr>  
          <%}  
       }else{  
          response.sendRedirect("http://localhost:8080/sistema_farmacia_matutino/itemsaida.jsp?status=Registro não encontrado");  
       }     
    }catch (Exception e) {  
       e.printStackTrace();  
    }  
      
 %>  
 </table>  
   <p>  
     <input type="submit" name="Submit" value="voltar">  
 </p>    
 <p><strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("coditemsaidaField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 