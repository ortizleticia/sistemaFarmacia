<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_categoria.Conexao_categoria"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
    <html>  
    <head>  
    <title>Listar categoria</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="categoria.jsp">  
     
   <p><strong>Tabela categoria </strong></p>  
   <table border= cellspacing= cellpadding= >  
     
    <tr>  
     <td width=50><strong>  
       Código
    </strong></td>      
    <td width=200><strong>  
       Categoria  
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
                <%out.print(temp.getString("codcategoria"));%>  
          </td>  
           <td width=200>  
                <%out.print(temp.getString("categoria"));%>  
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