<%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Entrada</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.codentradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo entrada';  
         }else if (document.cadastro.transportadora_codtransportadoraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo transportadora';  
         }else if (document.cadastro.datapedField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo dataped';  
         }else if (document.cadastro.dataentrField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo dataentr';  
         }else if (document.cadastro.totalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo total';  
         }else if (document.cadastro.freteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo frete';  
         }else if (document.cadastro.numnfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo numnf';  
         }else if (document.cadastro.impostoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo imposto';  
         }else {  
            document.cadastro.action='cadastrar_entrada.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
        if (document.cadastro.codentradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo entrada';  
         }else {  
            document.cadastro.action='consultar_entrada.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.codentradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo entrada';  
         }else if (document.cadastro.transportadora_codtransportadoraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo transportadora';  
         }else if (document.cadastro.datapedField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo dataped';  
         }else if (document.cadastro.dataentrField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo dataentr';  
         }else if (document.cadastro.totalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo total';  
         }else if (document.cadastro.freteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo frete';  
         }else if (document.cadastro.numnfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo numnf';  
         }else if (document.cadastro.impostoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo imposto';  
         }else {  
            document.cadastro.action='alterar_entrada.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'excluir'){  
     
        if (document.cadastro.codentradaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo entrada';  
         }else {  
            document.cadastro.action='excluir_entrada.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_entrada.jsp';  
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
   String codentrada = request.getParameter("codentrada");  
   String transportadora_codtransportadora = request.getParameter("transportadora_codtransportadora");  
   String dataped = request.getParameter("dataped");  
   String dataentr = request.getParameter("dataentr");  
   String total = request.getParameter("total");  
   String frete = request.getParameter("frete");  
   String numnf = request.getParameter("numnf");
   String imposto = request.getParameter("imposto");
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
          <input name="codentradaField" type="text" id="codentradaField" size="" value="<%=(codentrada==null)?"":codentrada%>"> </p>  
          <p> <strong>Transportadora :</strong>  
          <input name="transportadora_codtransportadoraField" type="text" id="transportadora_codtransportadoraField" size="" value="<%=(transportadora_codtransportadora==null)?"":transportadora_codtransportadora%>">  
          <p> <strong>Dataped :</strong>  
          <input name="datapedField" type="text" id="datapedField" size="" value="<%=(dataped==null)?"":dataped%>">
		  <p> <strong>Dataentr :</strong>  
          <input name="dataentrField" type="text" id="dataentrField" size="" value="<%=(dataentr==null)?"":dataentr%>">
		  <p> <strong>Total :</strong>  
          <input name="totalField" type="text" id="totalField" size="" value="<%=(total==null)?"":total%>">
		  <p> <strong>Frete :</strong>  
          <input name="freteField" type="text" id="freteField" size="" value="<%=(frete==null)?"":frete%>">
		  <p> <strong>Numnf :</strong>  
          <input name="numnfField" type="text" id="numnfField" size="" value="<%=(numnf==null)?"":numnf%>">
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