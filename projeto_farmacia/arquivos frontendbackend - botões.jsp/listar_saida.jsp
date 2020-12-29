<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_saida.Conexao_saida"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
    <html>  
    <head>  
    <title>Listar saida</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="saida.jsp">  
     
   <p><strong>Tabela saida </strong></p>  
   <table border= cellspacing= cellpadding= >  
     
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
        
      }catch (Exception e) {  
         e.printStackTrace();  
      }  
        
   %>  
   </table>  
     <p>  
       <input type="submit" name="Submit" value="voltar">  
   </p>  
   </form>  
   </body>  
   </html>  