<%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Item Entrada</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.coditementradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo item entrada';
		 }else if (document.cadastro.entrada_codentradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo entrada';
         }else if (document.cadastro.produto_codprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo produto';  
         }else if (document.cadastro.loteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo lote';  
         }else if (document.cadastro.qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo qtde';  
         }else if (document.cadastro.valorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else {  
            document.cadastro.action='cadastrar_itementrada.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
        if (document.cadastro.coditementradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo item entrada';  
         }else {  
            document.cadastro.action='consultar_itementrada.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.coditementradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo item entrada';
		 }else if (document.cadastro.entrada_codentradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo entrada';
         }else if (document.cadastro.produto_codprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo produto';  
         }else if (document.cadastro.loteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo lote';  
         }else if (document.cadastro.qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo qtde';  
         }else if (document.cadastro.valorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else {  
            document.cadastro.action='alterar_itementrada.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'excluir'){  
     
        if (document.cadastro.coditementradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo item entrada';  
         }else {  
            document.cadastro.action='excluir_itementrada.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_itementrada.jsp';  
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
   String coditementrada = request.getParameter("coditementrada");
   String entrada_codentrada = request.getParameter("entrada_codentrada");  
   String produto_codproduto = request.getParameter("produto_codproduto");  
   String lote = request.getParameter("lote");  
   String qtde = request.getParameter("qtde");  
   String valor = request.getParameter("valor");
   String status = request.getParameter("status"); 
   %>  
     
   <body> <center> 
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro entrada </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="coditementradaField" type="text" id="coditementradaField" size="" value="<%=(coditementrada==null)?"":coditementrada%>"> </p>
		  <p> <strong>Entrada :</strong>  
          <input name="entrada_codentradaField" type="text" id="entrada_codentradaField" size="" value="<%=(entrada_codentrada==null)?"":entrada_codentrada%>">
          <p> <strong>Produto :</strong>
          <input name="produto_codprodutoField" type="text" id="produto_codprodutoField" size="" value="<%=(produto_codproduto==null)?"":produto_codproduto%>">  
          <p> <strong>lote :</strong>  
          <input name="loteField" type="text" id="loteField" size="" value="<%=(lote==null)?"":lote%>">
		  <p> <strong>Qtde :</strong>  
          <input name="qtdeField" type="text" id="qtdeField" size="" value="<%=(qtde==null)?"":qtde%>">
		  <p> <strong>Valor :</strong>  
          <input name="valorField" type="text" id="valorField" size="" value="<%=(valor==null)?"":valor%>">
     
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