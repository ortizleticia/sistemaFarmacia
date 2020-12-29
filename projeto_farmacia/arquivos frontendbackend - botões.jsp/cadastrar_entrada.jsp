<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_entrada.Conexao_entrada"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Entrada</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="entrada.jsp">  
   
 <p><strong>Tabela Entrada </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Código
    </strong></td>  
    
    <td width=200><strong>  
       Transportadora  
    </strong></td>      
	      
	<td width=50><strong>  
       Dataped  
    </strong></td>

	<td width=200><strong>  
       Dataentr  
    </strong></td>
	
	<td width=50><strong>  
       Total  
    </strong></td>
	
	<td width=50><strong>  
       Frete  
    </strong></td>
	
	<td width=50><strong>  
       NumNF  
    </strong></td>
	
	<td width=50><strong>  
       Imposto  
    </strong></td>
		  
    </tr>  
   
   
 <%      
    try {  
   
       con.setCodentrada(Integer.parseInt(request.getParameter("codentradaField")));  
       con.setTransportadora_codtransportadora(Integer.parseInt(request.getParameter("transportadora_codtransportadoraField")));
	   con.setDataped(request.getParameter("datapedField"));
	   con.setDataentr(request.getParameter("dataentrField"));
	   con.setTotal(request.getParameter("totalField"));
	   con.setFrete(request.getParameter("freteField"));
	   con.setNumnf(Integer.parseInt(request.getParameter("numnfField")));
	   con.setImposto(request.getParameter("impostoField"));
	   con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("codentradaField").equals(temp.getString("codentrada")))  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/entrada.jsp?status=Registro já existente");  
         
       do{  
       %>  
       <tr>  
           <td width=50>  
                <%out.print(temp.getString("codentrada"));%>  
          </td>  
		  
           <td width=200>  
                <%out.print(temp.getString("transportadora_codtransportadora"));%>  
          </td>

			<td width=50>  
                <%out.print(temp.getString("dataped"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("dataentr"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("total"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("frete"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("numnf"));%>  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codentradaField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 