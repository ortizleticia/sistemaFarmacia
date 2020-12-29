<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_loja.Conexao_loja"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Alterar Loja</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="loja.jsp">  
   
 <jsp:setProperty name="con" property="codloja" value='<%=Integer.parseInt(request.getParameter("codlojaField"))%>'/>  
 <jsp:setProperty name="con" property="cidade_codcidade" value='<%=Integer.parseInt(request.getParameter("cidade_codcidadeField"))%>'/>   
 <jsp:setProperty name="con" property="nome" value='<%=(request.getParameter("nomeField"))%>'/> 
 <jsp:setProperty name="con" property="endereco" value='<%=(request.getParameter("enderecoField"))%>'/>  
 <jsp:setProperty name="con" property="num" value='<%=Integer.parseInt(request.getParameter("numField"))%>'/>  
 <jsp:setProperty name="con" property="bairro" value='<%=(request.getParameter("bairroField"))%>'/>  
 <jsp:setProperty name="con" property="tel" value='<%=(request.getParameter("telField"))%>'/>  
 <jsp:setProperty name="con" property="insc" value='<%=(request.getParameter("inscField"))%>'/> 
 <jsp:setProperty name="con" property="cnpj" value='<%=(request.getParameter("cnpjField"))%>'/> 
 
 
 
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
   
       boolean testa = con.alterarDados();  
                  
       if (con.alterarDados())  
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
       }else{  
          response.sendRedirect("http://localhost:8080/sistema_farmacia_matutino/loja.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codlojaField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 