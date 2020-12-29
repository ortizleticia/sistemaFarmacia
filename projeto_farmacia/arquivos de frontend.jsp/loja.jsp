<%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Loja</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.codlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo loja';  
         }else if (document.cadastro.cidade_codcidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade';  
         }else if (document.cadastro.nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereco';  
         }else if (document.cadastro.numField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo num';  
         }else if (document.cadastro.bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro';  
         }else if (document.cadastro.telField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo tel';  
         }else if (document.cadastro.inscField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo insc';  
         }else if (document.cadastro.cnpjField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cnpj';  
         }else {  
            document.cadastro.action='cadastrar_loja.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
        if (document.cadastro.codlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo loja';  
         }else {  
            document.cadastro.action='consultar_loja.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.codlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo loja';  
         }else if (document.cadastro.cidade_codcidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cidade';  
         }else if (document.cadastro.nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereco';  
         }else if (document.cadastro.numField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo num';  
         }else if (document.cadastro.bairroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo bairro';  
         }else if (document.cadastro.telField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo tel';  
         }else if (document.cadastro.inscField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo insc';  
         }else if (document.cadastro.cnpjField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo cnpj';  
         }else {  
            document.cadastro.action='alterar_loja.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'excluir'){  
     
        if (document.cadastro.codlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo loja';  
         }else {  
            document.cadastro.action='excluir_loja.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_loja.jsp';  
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
   String codloja = request.getParameter("codloja");  
   String cidade_codcidade = request.getParameter("cidade_codcidade");  
   String nome = request.getParameter("nome");  
   String endereco = request.getParameter("endereco");
   String num = request.getParameter("num");
   String bairro = request.getParameter("bairro");
   String tel = request.getParameter("tel");
   String insc = request.getParameter("insc");
   String cnpj = request.getParameter("cnpj");
   String status = request.getParameter("status"); 
   %>  
     
   <body> <center> 
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro loja </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="codlojaField" type="text" id="codlojaField" size="" value="<%=(codloja==null)?"":codloja%>"> </p>  
          <p> <strong>Cidade :</strong>  
          <input name="cidade_codcidadeField" type="text" id="cidade_codcidadeField" size="" value="<%=(cidade_codcidade==null)?"":cidade_codcidade%>">  
          <p> <strong>Nome :</strong>  
          <input name="nomeField" type="text" id="nomeField" size="" value="<%=(nome==null)?"":nome%>">
		  <p> <strong>Endereco :</strong>  
          <input name="enderecoField" type="text" id="enderecoField" size="" value="<%=(endereco==null)?"":endereco%>">
		  <p> <strong>Num :</strong>  
          <input name="numField" type="text" id="numField" size="" value="<%=(num==null)?"":num%>">
          <p> <strong>Bairro :</strong>  
          <input name="bairroField" type="text" id="bairroField" size="" value="<%=(bairro==null)?"":bairro%>">
          <p> <strong>Tel :</strong>  
          <input name="telField" type="text" id="telField" size="" value="<%=(tel==null)?"":tel%>">
		  <p> <strong>Insc :</strong>  
          <input name="inscField" type="text" id="inscField" size="" value="<%=(insc==null)?"":insc%>">
          <p> <strong>CNPJ :</strong>  
          <input name="cnpjField" type="text" id="cnpjField" size="" value="<%=(cnpj==null)?"":cnpj%>">
          
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