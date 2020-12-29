<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
 <html>  
 <head>  
 <title>Excluir Fornecedor</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="fornecedor.jsp">  
   
 <p><strong>Tabela Fornecedor </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
       <tr>  
     <td width=50><strong>  
       Código
    </strong></td> 
	
    <td width=200><strong>  
       Cidade  
    </strong></td>
	
	<td width=50><strong>  
       Fornecedor 
    </strong></td> 

	<td width=200><strong>  
       Endereco  
    </strong></td>

	<td width=200><strong>  
       Num  
    </strong></td>
	
	<td width=200><strong>  
       Bairro  
    </strong></td>
	
	<td width=200><strong>  
       CEP  
    </strong></td>
	
	<td width=200><strong>  
       Contato  
    </strong></td>
	
	<td width=200><strong>  
       CNPJ  
    </strong></td>
	
	<td width=200><strong>  
       Insc  
    </strong></td>
	
	<td width=200><strong>  
       Tel  
    </strong></td>
    </tr>   
   
   
 <%      
    try {  
   
      con.setCodfornecedor(Integer.parseInt(request.getParameter("codfornecedorField")));  
   
       if (con.excluirDados())  
       {  
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %>  
           <tr>  
           <td width=50>  
                <%out.print(temp.getString("codfornecedor"));%>  
          </td> 
		  
           <td width=200>  
                <%out.print(temp.getString("cidade_codcidade"));%>  
          </td> 
		  
		  <td width=200>  
                <%out.print(temp.getString("fornecedor"));%>  
          </td>
		  
			<td width=200>  
                <%out.print(temp.getString("endereco"));%>  
          </td>	

			<td width=50>  
                <%out.print(temp.getString("num"));%>  
          </td>	
		  
		  <td width=200>  
                <%out.print(temp.getString("bairro"));%>  
          </td>	
		  
		  <td width=50>  
                <%out.print(temp.getString("cep"));%>  
          </td>	
		  
		  <td width=50>  
                <%out.print(temp.getString("contato"));%>  
          </td>	
		  
		  <td width=50>  
                <%out.print(temp.getString("cnpj"));%>  
          </td>	
		  
		  <td width=50>  
                <%out.print(temp.getString("insc"));%>  
          </td>	
		  
		  <td width=50>  
                <%out.print(temp.getString("tel"));%>  
          </td>	
          </tr>  
          <%}  
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/fornecedor.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codfornecedorField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 