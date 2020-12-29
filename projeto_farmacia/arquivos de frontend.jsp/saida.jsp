<%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Saida</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.codsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo saida';
		 }else if (document.cadastro.loja_codlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo loja';
         }else if (document.cadastro.transportadora_codtransportadoraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo transportadora';  
         }else if (document.cadastro.totalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo total';  
         }else if (document.cadastro.freteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo frete';  
         }else if (document.cadastro.impostoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo imposto';  
         }else {  
            document.cadastro.action='cadastrar_saida.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
        if (document.cadastro.codsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo saida';  
         }else {  
            document.cadastro.action='consultar_saida.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.codsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo saida';
		 }else if (document.cadastro.loja_codlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo loja';
         }else if (document.cadastro.transportadora_codtransportadoraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo transportadora';  
         }else if (document.cadastro.totalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo total';  
         }else if (document.cadastro.freteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo frete';  
         }else if (document.cadastro.impostoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo imposto';  
         }else {  
            document.cadastro.action='alterar_saida.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'excluir'){  
     
        if (document.cadastro.codsaidaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo saida';  
         }else {  
            document.cadastro.action='excluir_saida.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_saida.jsp';  
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
   String codsaida = request.getParameter("codsaida");
   String loja_codloja = request.getParameter("loja_codloja");  
   String transportadora_codtransportadora = request.getParameter("transportadora_codtransportadora");  
   String total = request.getParameter("total");  
   String frete = request.getParameter("frete");  
   String imposto = request.getParameter("imposto");
   String status = request.getParameter("status"); 
   %>  
     
   <body> <center> 
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro saida </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="codsaidaField" type="text" id="codsaidaField" size="" value="<%=(codsaida==null)?"":codsaida%>"> </p>
		  <p> <strong>Loja :</strong>  
          <input name="loja_codlojaField" type="text" id="loja_codlojaField" size="" value="<%=(loja_codloja==null)?"":loja_codloja%>">
          <p> <strong>Transportadora :</strong>  
          <input name="transportadora_codtransportadoraField" type="text" id="transportadora_codtransportadoraField" size="" value="<%=(transportadora_codtransportadora==null)?"":transportadora_codtransportadora%>">  
          <p> <strong>Total :</strong>  
          <input name="totalField" type="text" id="totalField" size="" value="<%=(total==null)?"":total%>">
		  <p> <strong>Frete :</strong>  
          <input name="freteField" type="text" id="freteField" size="" value="<%=(frete==null)?"":frete%>">
		  <p> <strong>Imposto :</strong>  
          <input name="impostoField" type="text" id="impostoField" size="" value="<%=(imposto==null)?"":imposto%>">
     
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