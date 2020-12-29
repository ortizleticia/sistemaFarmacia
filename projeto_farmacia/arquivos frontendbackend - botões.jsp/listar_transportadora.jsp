<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_transportadora.Conexao_transportadora"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
    <html>  
    <head>  
    <title>Listar transportadora</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="transportadora.jsp">  
     
   <p><strong>Tabela transportadora </strong></p>  
   <table border= cellspacing= cellpadding= >  
     
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
         con.setConsulta();  
         ResultSet temp = con.getResultado();  
           
         while (temp.next()){  
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