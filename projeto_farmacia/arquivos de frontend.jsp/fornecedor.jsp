<%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Fornecedor</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.codfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo do fornecedor';  
         }else if (document.cadastro.cidade_codcidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código cidade';  
         }else if (document.cadastro.fornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo fornecedor';  
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço';  
         }else if (document.cadastro.numField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo num';  
         }else if (document.cadastro.bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro';  
         }else if (document.cadastro.cepField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cep';  
         }else if (document.cadastro.contatoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo contato';  
         }else if (document.cadastro.cnpjField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cnpj';  
         }else if (document.cadastro.inscField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo insc';  
         }else if (document.cadastro.telField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo tel';  
         }else {  
            document.cadastro.action='cadastrar_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
        if (document.cadastro.codfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo fornecedor';  
         }else {  
            document.cadastro.action='consultar_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.codfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo do fornecedor';  
         }else if (document.cadastro.cidade_codcidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo código cidade';  
         }else if (document.cadastro.fornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo fornecedor';  
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço';  
         }else if (document.cadastro.numField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo num';  
         }else if (document.cadastro.bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro';  
         }else if (document.cadastro.cepField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cep';  
         }else if (document.cadastro.contatoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo contato';  
         }else if (document.cadastro.cnpjField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cnpj';  
         }else if (document.cadastro.inscField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo insc';  
         }else if (document.cadastro.telField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo tel';  
         }else {  
            document.cadastro.action='alterar_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'excluir'){  
     
        if (document.cadastro.codfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo fornecedor';  
         }else {  
            document.cadastro.action='excluir_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_fornecedor.jsp';  
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
   String codfornecedor = request.getParameter("codfornecedor");  
   String cidade_codcidade = request.getParameter("cidade_codcidade");  
   String fornecedor = request.getParameter("fornecedor");  
   String endereco = request.getParameter("endereco"); 
   String num = request.getParameter("num"); 
   String bairro = request.getParameter("bairro"); 
   String cep = request.getParameter("cep"); 
   String contato = request.getParameter("contato"); 
   String cnpj = request.getParameter("cnpj"); 
   String insc = request.getParameter("insc"); 
   String tel = request.getParameter("tel");
   String status = request.getParameter("status");    
   %>  
     
   <body> <center> 
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro fornecedor </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="codfornecedorField" type="text" id="codfornecedorField" size="" value="<%=(codfornecedor==null)?"":codfornecedor%>"> </p>  
          <p> <strong>Cidade :</strong>  
          <input name="cidade_codcidadeField" type="text" id="cidade_codcidadeField" size="" value="<%=(cidade_codcidade==null)?"":cidade_codcidade%>">  
          <p> <strong>Fornecedor :</strong>  
          <input name="fornecedorField" type="text" id="fornecedorField" size="" value="<%=(fornecedor==null)?"":fornecedor%>">
		  <p> <strong>Endereço :</strong>  
          <input name="enderecoField" type="text" id="enderecoField" size="" value="<%=(endereco==null)?"":endereco%>">
		  <p> <strong>Num :</strong>  
          <input name="numField" type="text" id="numField" size="" value="<%=(num==null)?"":num%>">
		  <p> <strong>Bairro :</strong>  
          <input name="bairroField" type="text" id="bairroField" size="" value="<%=(bairro==null)?"":bairro%>">
		  <p> <strong>CEP :</strong>  
          <input name="cepField" type="text" id="cepField" size="" value="<%=(cep==null)?"":cep%>">
		  <p> <strong>Contato :</strong>  
          <input name="contatoField" type="text" id="contatoField" size="" value="<%=(contato==null)?"":contato%>">
		  <p> <strong>CNPJ :</strong>  
          <input name="cnpjField" type="text" id="cnpjField" size="" value="<%=(cnpj==null)?"":cnpj%>">
		  <p> <strong>Insc :</strong>  
          <input name="inscField" type="text" id="inscField" size="" value="<%=(insc==null)?"":insc%>">
		  <p> <strong>Tel :</strong>  
          <input name="telField" type="text" id="telField" size="" value="<%=(tel==null)?"":tel%>">
		  
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