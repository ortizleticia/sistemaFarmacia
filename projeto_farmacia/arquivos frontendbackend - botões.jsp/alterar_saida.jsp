<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_saida.Conexao_saida"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Alterar Saida</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="saida.jsp">  
   
 <jsp:setProperty name="con" property="codsaida" value='<%=Integer.parseInt(request.getParameter("codsaidaField"))%>'/>  
 <jsp:setProperty name="con" property="loja_codloja" value='<%=Integer.parseInt(request.getParameter("loja_codlojaField"))%>'/>   
 <jsp:setProperty name="con" property="transportadora_codtransportadora" value='<%=Integer.parseInt(request.getParameter("transportadora_codtransportadoraField"))%>'/> 
 <jsp:setProperty name="con" property="total" value='<%=(request.getParameter("totalField"))%>'/>  
 <jsp:setProperty name="con" property="frete" value='<%=(request.getParameter("freteField"))%>'/>  
 <jsp:setProperty name="con" property="imposto" value='<%=(request.getParameter("impostoField"))%>'/>  
 
 
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
   
       boolean testa = con.alterarDados();  
                  
       if (con.alterarDados())  
       {           
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
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
          <%}  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/saida.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codsaidaField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 