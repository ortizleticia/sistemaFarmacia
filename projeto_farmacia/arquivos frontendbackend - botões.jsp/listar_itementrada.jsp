<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itementrada.Conexao_itementrada"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
    <html>  
    <head>  
    <title>Listar item entrada</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="itementrada.jsp">  
     
   <p><strong>Tabela item entrada </strong></p>  
   <table border= cellspacing= cellpadding= >  
     
   <tr>  
     <td width=50><strong>  
       Código
    </strong></td>  
    
    <td width=50><strong>  
       Produto  
    </strong></td>      
	      
	<td width=50><strong>  
       Entrada  
    </strong></td>

	<td width=50><strong>  
       Lote  
    </strong></td>
	
	<td width=50><strong>  
       Qtde  
    </strong></td>
	
	<td width=50><strong>  
       Valor  
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
                <%out.print(temp.getString("coditementrada"));%>  
          </td>  
		  
           <td width=50>  
                <%out.print(temp.getString("produto_codproduto"));%>  
          </td>

			<td width=50>  
                <%out.print(temp.getString("entrada_codentrada"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("lote"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("qtde"));%>  
          </td>
		  
			<td width=50>  
                <%out.print(temp.getString("valor"));%>  
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