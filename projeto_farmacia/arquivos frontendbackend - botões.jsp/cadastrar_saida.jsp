<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_saida.Conexao_saida"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Saida</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="saida.jsp">  
   
 <p><strong>Tabela Saida </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Código
    </strong></td>  
    
    <td width=200><strong>  
       Loja  
    </strong></td>      
	      
	<td width=200><strong>  
       Transportadora  
    </strong></td>

	<td width=200><strong>  
       Total  
    </strong></td>
	
	<td width=50><strong>  
       Frete  
    </strong></td>
	
	<td width=200><strong>  
       Imposto  
    </strong></td>
	
			  
    </tr>  
   
   
 <%      
    try {  
   
       con.setCodsaida(Integer.parseInt(request.getParameter("codsaidaField")));  
       con.setLoja_codloja(Integer.parseInt(request.getParameter("loja_codlojaField")));
	   con.setTransportadora_codtransportadora(Integer.parseInt(request.getParameter("transportadora_codtransportadoraField")));
	   con.setTotal(request.getParameter("totalField"));
	   con.setFrete(request.getParameter("freteField"));
	   con.setImposto(request.getParameter("impostoField"));
	   con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("codsaidaField").equals(temp.getString("codsaida")))  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/saida.jsp?status=Registro já existente");  
         
       do{  
       %>  
       <tr>  
           <td width=50>  
                <%out.print(temp.getString("codsaida"));%>  
          </td>  
		  
           <td width=50>  
                <%out.print(temp.getString("loja_codloja"));%>  
          </td>

			<td width=50>  
                <%out.print(temp.getString("transportadora_codtransportadora"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("total"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("frete"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("imposto"));%>  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codsaidaField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 