    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Cidade</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.codcidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo cidade';  
         }else if (document.cadastro.cidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade';  
         }else if (document.cadastro.ufField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo uf';  
         }else {  
            document.cadastro.action='cadastrar_cidade.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
        if (document.cadastro.codcidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo cidade';  
         }else {  
            document.cadastro.action='consultar_cidade.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.codcidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo cidade';  
         }else if (document.cadastro.cidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade';  
         }else if (document.cadastro.ufField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo uf';  
         }else {  
            document.cadastro.action='alterar_cidade.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'excluir'){  
     
        if (document.cadastro.codcidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo cidade';  
         }else {  
            document.cadastro.action='excluir_cidade.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_cidade.jsp';  
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
   String codcidade = request.getParameter("codcidade");  
   String cidade = request.getParameter("cidade");  
   String uf = request.getParameter("uf");  
   String status = request.getParameter("status");  
   %>  
     
   <body> <center> 
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro cidade </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="codcidadeField" type="text" id="codcidadeField" size="" value="<%=(codcidade==null)?"":codcidade%>"> </p>  
          <p> <strong>Cidade :</strong>  
          <input name="cidadeField" type="text" id="cidadeField" size="" value="<%=(cidade==null)?"":cidade%>">  
          <strong>UF:</strong>   
          <input name="ufField" type="text" id="ufField" size="" value="<%=(uf==null)?"":uf%>">  
             
     
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