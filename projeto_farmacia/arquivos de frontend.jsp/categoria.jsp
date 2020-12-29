<%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Categoria</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.codcategoriaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo categoria';  
         }else if (document.cadastro.categoriaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo categoria';  
         }else {  
            document.cadastro.action='cadastrar_categoria.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
        if (document.cadastro.codcategoriaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo categoria';  
         }else {  
            document.cadastro.action='consultar_categoria.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.codcategoriaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo categoria';  
         }else if (document.cadastro.categoriaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo categoria';  
         }else {  
            document.cadastro.action='alterar_categoria.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'excluir'){  
     
        if (document.cadastro.codcategoriaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo categoria';  
         }else {  
            document.cadastro.action='excluir_categoria.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_categoria.jsp';  
         document.cadastro.submit();  
      }  
   }  
     
   </script>  
     
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
   <style type="text/css">  
   <!--  
   .style {&nbsp; &nbsp;font-size: px;  
   &nbsp; &nbsp;font-weight: bold;  
   }  
   -->  
   </style>  
   </head>  
     
   <%  
   String codcategoria = request.getParameter("codcategoria");  
   String categoria = request.getParameter("categoria");  
   String status = request.getParameter("status");  
   %>  
     
   <body> <center> 
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro categoria </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="codcategoriaField" type="text" id="codcategoriaField" size="" value="<%=(codcategoria==null)?"":codcategoria%>"> </p>  
          <p> <strong>Categoria :</strong>  
          <input name="categoriaField" type="text" id="categoriaField" size="" value="<%=(categoria==null)?"":categoria%>">  
           
            </p>      
      </td>  
    </tr>  
    <tr>  
      <td height="" bgcolor="red"><p>   
          <input type="button" onClick="enviar('cadastrar')" name="bt" value="cadastrar">  
          <input type="button" onClick="enviar('consultar')" name="bt" value="consultar">  
          <input type="button" onClick="enviar('alterar')" name="bt" value="alterar">  
          <input type="button" onClick="enviar('excluir')" name="bt" value="excluir">  
          <input type="button" onClick="enviar('listar')" name="bt" value="listar">  
        </p>  
        <p> <strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
        </strong></p>  
     </td>  
    </tr>  
  </table>  
  </form>  
  </body>  
  </html>  