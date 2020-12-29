<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_categoria.Conexao_categoria"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Categoria</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="categoria.jsp">  
   
 <p><strong>Tabela Categoria </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
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
   
       con.setCodcategoria(Integer.parseInt(request.getParameter("codcategoriaField")));  
       con.setCategoria(request.getParameter("categoriaField"));  
	   con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("codcategoriaField").equals(temp.getString("codcategoria")))  
          response.sendRedirect("http://localhost:8084/sistema_farmacia_matutino/categoria.jsp?status=Registro já existente");  
         
       do{  
       %>  
       <tr>  
           <td width=50>  
                <%out.print(temp.getString("codcategoria"));%>  
          </td>  
           <td width=200>  
                <%out.print(temp.getString("categoria"));%>  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("codcategoriaField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 