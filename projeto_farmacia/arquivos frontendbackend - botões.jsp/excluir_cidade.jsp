<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_cidade.Conexao_cidade"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
 <html>  
 <head>  
 <title>Excluir Cidade</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="cidade.jsp">  
   
 <p><strong>Tabela Pessoa </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
      <tr>  
     <td width=50><strong>  
       C�digo
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
   
      con.setCodcidade(Integer.parseInt(request.getParameter("codcidadeField")));  
   
       if (con.excluirDados())  
       {  
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
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/cidade.jsp?status=Registro n�o encontrado");  
       }     
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codcidadeField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 