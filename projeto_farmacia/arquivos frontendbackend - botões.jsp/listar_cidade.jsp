 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_cidade.Conexao_cidade"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
    <html>  
    <head>  
    <title>Listar cidades</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="cidade.jsp">  
     
   <p><strong>Tabela cidade </strong></p>  
   <table border= cellspacing= cellpadding= >  
     
      
      <tr>  
     <td width=50><strong>  
       Código
    </strong></td>      
    <td width=200><strong>  
       Cidade  
    </strong></td>      
	<td width=50><strong>  
       UF 
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
                <%out.print(temp.getString("codcidade"));%>  
          </td>  
           <td width=200>  
                <%out.print(temp.getString("cidade"));%>  
          </td>  
		  <td width=50>  
                <%out.print(temp.getString("uf"));%>  
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