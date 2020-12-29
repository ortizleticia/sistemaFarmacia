<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itementrada.Conexao_itementrada"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Item entrada</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="itementrada.jsp">  
   
 <p><strong>Tabela Item Entrada </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Código
    </strong></td>  
    
    <td width=50><strong>  
       Produto  
    </strong></td>      
	      
	<td width=50><strong>  
       Entrada  
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
   
       con.setCoditementrada(Integer.parseInt(request.getParameter("coditementradaField")));  
       con.setProduto_codproduto(Integer.parseInt(request.getParameter("produto_codprodutoField")));
	   con.setEntrada_codentrada(Integer.parseInt(request.getParameter("entrada_codentradaField")));
	   con.setLote(request.getParameter("loteField"));
	   con.setQtde(Integer.parseInt(request.getParameter("qtdeField")));
	   con.setValor(request.getParameter("valorField"));
	   con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("coditementradaField").equals(temp.getString("coditementrada")))  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/itementrada.jsp?status=Registro já existente");  
         
       do{  
       %>  
       <tr>  
           <td width=50>  
                <%out.print(temp.getString("coditementrada"));%>  
          </td>  
		  
           <td width=50>  
                <%out.print(temp.getString("produto_codproduto"));%>  
          </td>

			<td width=50>  
                <%out.print(temp.getString("entrada_codentrada"));%>  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("coditementradaField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 