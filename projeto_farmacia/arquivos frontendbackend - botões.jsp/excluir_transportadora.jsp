<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_transportadora.Conexao_transportadora"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
 <html>  
 <head>  
 <title>Excluir Transportadora</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="transportadora.jsp">  
   
 <p><strong>Tabela Transportadora </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Código
    </strong></td>  
    
    <td width=200><strong>  
       Cidade  
    </strong></td>      
	      
	<td width=200><strong>  
       Transportadora  
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
       CEP  
    </strong></td>
	
	<td width=50><strong>  
       CNPJ  
    </strong></td>
	
	<td width=50><strong>  
       Insc  
    </strong></td>
	
	<td width=50><strong>  
       Contato  
    </strong></td>
	
	<td width=50><strong>  
       Tel  
    </strong></td>
    </tr>   
   
   
 <%      
    try {  
   
      con.setCodtransportadora(Integer.parseInt(request.getParameter("codtransportadoraField")));  
   
       if (con.excluirDados())  
       {  
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %>  
           <tr>  
           <td width=50>  
                <%out.print(temp.getString("codtransportadora"));%>  
          </td>  
		  
           <td width=200>  
                <%out.print(temp.getString("cidade_codcidade"));%>  
          </td>

			<td width=200>  
                <%out.print(temp.getString("transportadora"));%>  
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
                <%out.print(temp.getString("cnpj"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("insc"));%>  
          </td>
		   
			<td width=50>  
                <%out.print(temp.getString("contato"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("tel"));%>  
          </td>
          </tr>  
          <%}  
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/transportadora.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codtransportadoraField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 