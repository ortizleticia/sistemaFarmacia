<%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Produto</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.codprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo produto';  
         }else if (document.cadastro.categoria_codcategoriaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo categoria';  
         }else if (document.cadastro.fornecedor_codfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo fornecedor';  
         }else if (document.cadastro.descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';  
         }else if (document.cadastro.pesoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo peso';  
         }else if (document.cadastro.controladoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo controlado';  
         }else if (document.cadastro.qtdeminField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo qtdemin';  
         }else {  
            document.cadastro.action='cadastrar_produto.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
        if (document.cadastro.codprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo produto';  
         }else {  
            document.cadastro.action='consultar_produto.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.codprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo produto';  
         }else if (document.cadastro.categoria_codcategoriaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo categoria';  
         }else if (document.cadastro.fornecedor_codfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo fornecedor';  
         }else if (document.cadastro.descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';  
         }else if (document.cadastro.pesoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo peso';  
         }else if (document.cadastro.controladoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo controlado';  
         }else if (document.cadastro.qtdeminField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo qtdemin';  
         }else {  
            document.cadastro.action='alterar_produto.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'excluir'){  
     
        if (document.cadastro.codprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo produto';  
         }else {  
            document.cadastro.action='excluir_produto.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_produto.jsp';  
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
   String codproduto = request.getParameter("codproduto");  
   String categoria_codcategoria = request.getParameter("categoria_codcategoria");  
   String fornecedor_codfornecedor = request.getParameter("fornecedor_codfornecedor");  
   String descricao = request.getParameter("descricao");  
   String peso = request.getParameter("peso");  
   String controlado = request.getParameter("controlado");  
   String qtdemin = request.getParameter("qtdemin"); 
   String status = request.getParameter("status"); 
   %>  
     
   <body> <center> 
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro produto </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="codprodutoField" type="text" id="codprodutoField" size="" value="<%=(codproduto==null)?"":codproduto%>"> </p>  
          <p> <strong>Categoria :</strong>  
          <input name="categoria_codcategoriaField" type="text" id="categoria_codcategoriaField" size="" value="<%=(categoria_codcategoria==null)?"":categoria_codcategoria%>">  
          <p> <strong>Fornecedor :</strong>  
          <input name="fornecedor_codfornecedorField" type="text" id="fornecedor_codfornecedorField" size="" value="<%=(fornecedor_codfornecedor==null)?"":fornecedor_codfornecedor%>">
		  <p> <strong>Descrição :</strong>  
          <input name="descricaoField" type="text" id="descricaoField" size="" value="<%=(descricao==null)?"":descricao%>">
		  <p> <strong>Peso :</strong>  
          <input name="pesoField" type="text" id="pesoField" size="" value="<%=(peso==null)?"":peso%>">
		  <p> <strong>Controlado :</strong>  
          <input name="controladoField" type="text" id="controladoField" size="" value="<%=(controlado==null)?"":controlado%>">
		  <p> <strong>Qtdemin :</strong>  
          <input name="qtdeminField" type="text" id="qtdeminField" size="" value="<%=(qtdemin==null)?"":qtdemin%>">
	
     
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