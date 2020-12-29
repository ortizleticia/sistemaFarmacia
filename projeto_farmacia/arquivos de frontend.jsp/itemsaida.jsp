<%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Item Saida</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.coditemsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo item saida';
		 }else if (document.cadastro.saida_codsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo saida';
         }else if (document.cadastro.produto_codprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo produto';  
         }else if (document.cadastro.loteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo lote';  
         }else if (document.cadastro.qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo qtde';  
         }else if (document.cadastro.valorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else {  
            document.cadastro.action='cadastrar_itemsaida.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
        if (document.cadastro.coditemsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo item saida';  
         }else {  
            document.cadastro.action='consultar_itemsaida.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.coditemsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo item saida';
		 }else if (document.cadastro.saida_codsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo saida';
         }else if (document.cadastro.produto_codprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo produto';  
         }else if (document.cadastro.loteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo lote';  
         }else if (document.cadastro.qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo qtde';  
         }else if (document.cadastro.valorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor';  
         }else {  
            document.cadastro.action='alterar_itemsaida.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'excluir'){  
     
        if (document.cadastro.coditemsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo item saida';  
         }else {  
            document.cadastro.action='excluir_itemsaida.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_itemsaida.jsp';  
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
   String coditemsaida = request.getParameter("coditemsaida");
   String saida_codsaida = request.getParameter("saida_codsaida");  
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
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro item saida </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="coditemsaidaField" type="text" id="coditemsaidaField" size="" value="<%=(coditemsaida==null)?"":coditemsaida%>"> </p>
		  <p> <strong>Saida :</strong>  
          <input name="saida_codsaidaField" type="text" id="saida_codsaidaField" size="" value="<%=(saida_codsaida==null)?"":saida_codsaida%>">
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