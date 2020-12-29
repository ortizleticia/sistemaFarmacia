<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_entrada.Conexao_entrada"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
    <html>  
    <head>  
    <title>Listar entrada</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="entrada.jsp">  
     
   <p><strong>Tabela entrada </strong></p>  
   <table border= cellspacing= cellpadding= >  
     
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
         con.setConsulta();  
         ResultSet temp = con.getResultado();  
           
         while (temp.next()){  
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