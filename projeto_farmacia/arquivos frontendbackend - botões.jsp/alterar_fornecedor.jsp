<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Alterar Fornecedor</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="fornecedor.jsp">  
   
 <jsp:setProperty name="con" property="codfornecedor" value='<%=Integer.parseInt(request.getParameter("codfornecedorField"))%>'/>  
 <jsp:setProperty name="con" property="cidade_codcidade" value='<%=Integer.parseInt(request.getParameter("cidade_codcidadeField"))%>'/>   
 <jsp:setProperty name="con" property="fornecedor" value='<%=(request.getParameter("fornecedorField"))%>'/> 
 <jsp:setProperty name="con" property="endereco" value='<%=(request.getParameter("enderecoField"))%>'/>  
 <jsp:setProperty name="con" property="num" value='<%=Integer.parseInt(request.getParameter("numField"))%>'/>  
 <jsp:setProperty name="con" property="bairro" value='<%=(request.getParameter("bairroField"))%>'/>  
 <jsp:setProperty name="con" property="cep" value='<%=(request.getParameter("cepField"))%>'/>  
 <jsp:setProperty name="con" property="contato" value='<%=(request.getParameter("contatoField"))%>'/>  
 <jsp:setProperty name="con" property="cnpj" value='<%=(request.getParameter("cnpjField"))%>'/>  
 <jsp:setProperty name="con" property="insc" value='<%=(request.getParameter("inscField"))%>'/>   
 <jsp:setProperty name="con" property="tel" value='<%=(request.getParameter("telField"))%>'/>  

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
   
       boolean testa = con.alterarDados();  
                  
       if (con.alterarDados())  
       {           
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %>  
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
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/fornecedor.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codfornecedorField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 