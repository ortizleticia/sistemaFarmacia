<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_transportadora.Conexao_transportadora"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Transportadora</title>  
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
       con.setCidade_codcidade(Integer.parseInt(request.getParameter("cidade_codcidadeField")));
	   con.setTransportadora(request.getParameter("transportadoraField"));
	   con.setEndereco(request.getParameter("enderecoField"));
	   con.setNum(Integer.parseInt(request.getParameter("numField")));
	   con.setBairro(request.getParameter("bairroField"));
	   con.setCep(request.getParameter("cepField"));
	   con.setCnpj(request.getParameter("cnpjField"));
	   con.setInsc(request.getParameter("inscField"));
	   con.setContato(request.getParameter("contatoField"));
	   con.setTel(request.getParameter("telField"));
	   con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("codtransportadoraField").equals(temp.getString("codtransportadora")))  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/transportadora.jsp?status=Registro já existente");  
         
       do{  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codtransportadoraField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 