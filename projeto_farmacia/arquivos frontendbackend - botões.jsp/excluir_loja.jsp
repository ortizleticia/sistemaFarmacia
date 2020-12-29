<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_loja.Conexao_loja"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
 <html>  
 <head>  
 <title>Excluir Loja</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="loja.jsp">  
   
 <p><strong>Tabela Loja </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Código
    </strong></td> 

	<td width=50><strong>  
       Cidade  
    </strong></td>
    
    <td width=200><strong>  
       Nome  
    </strong></td>      
	      
	<td width=200><strong>  
       Endereco  
    </strong></td>

	<td width=50><strong>  
       Num  
    </strong></td>
	
	<td width=200><strong>  
       Bairro  
    </strong></td>
	
	<td width=50><strong>  
       Tel  
    </strong></td>
	
	<td width=50><strong>  
       Insc  
    </strong></td>
	
	<td width=50><strong>  
       CNPJ  
    </strong></td>
    </tr>   
   
   
 <%      
    try {  
   
      con.setCodloja(Integer.parseInt(request.getParameter("codlojaField")));  
   
       if (con.excluirDados())  
       {  
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %>  
            <tr>  
           <td width=50>  
                <%out.print(temp.getString("codloja"));%>  
          </td>  
		  
           <td width=50>  
                <%out.print(temp.getString("cidade_codcidade"));%>  
          </td>

			<td width=200>  
                <%out.print(temp.getString("nome"));%>  
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
                <%out.print(temp.getString("tel"));%>  
          </td>
		  
		  <td width=50>  
                <%out.print(temp.getString("insc"));%>  
          </td>
		  
		  <td width=50>  
                <%out.print(temp.getString("cnpj"));%>  
          </td>
		  
          </tr>  
          <%}  
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/loja.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codlojaField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 