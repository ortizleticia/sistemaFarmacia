 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_cidade.Conexao_cidade"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Alterar Cidade</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="cidade.jsp">  
   
 <jsp:setProperty name="con" property="codcidade" value='<%=Integer.parseInt(request.getParameter("codcidadeField"))%>'/>  
 <jsp:setProperty name="con" property="cidade" value='<%=(request.getParameter("cidadeField"))%>'/>   
 <jsp:setProperty name="con" property="uf" value='<%=(request.getParameter("ufField"))%>'/>  
 <p><strong>Tabela Cidade </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
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
   
       boolean testa = con.alterarDados();  
                  
       if (con.alterarDados())  
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
       }else{  
          response.sendRedirect("http://localhost:8080/sistema_farmacia_matutino/cidade.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codcidadeField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 