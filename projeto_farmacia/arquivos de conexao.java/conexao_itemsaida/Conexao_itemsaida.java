
package conexao_itemsaida;

import java.sql.*; 

public class Conexao_itemsaida {
    
    public Connection con;  
    public Statement stm;  
    public ResultSet res = null; 
 
    private int coditemsaida = 0; 
    private int saida_codsaida = 0;
    private int produto_codproduto = 0;  
    private String lote = null;
    private int qtde = 0;
    private String valor = null;
    
        
      public Conexao_itemsaida() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_farmacia_matutino","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  

    public int getCoditemsaida() {
        return coditemsaida;
    }

    public void setCoditemsaida(int coditemsaida) {
        this.coditemsaida = coditemsaida;
    }

    
    public int getProduto_codproduto() {
        return produto_codproduto;
    }

    public void setProduto_codproduto(int produto_codproduto) {
        this.produto_codproduto = produto_codproduto;
    }

    public int getSaida_codsaida() {
        return saida_codsaida;
    }

    public void setSaida_codsaida(int saida_codsaida) {
        this.saida_codsaida = saida_codsaida;
    }

    public String getLote() {
        return lote;
    }

    public void setLote(String lote) {
        this.lote = lote;
    }

    public int getQtde() {
        return qtde;
    }

    public void setQtde(int qtde) {
        this.qtde = qtde;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    
      public void inserirDados(){  
        
         try {  
            String query = "insert into itemsaida(coditemsaida,produto_codproduto,saida_codsaida,lote,qtde,valor) "
                    + "values("+coditemsaida+","+produto_codproduto+","+saida_codsaida+",\""+lote+"\","+qtde+", "
                    + "\""+valor+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update itemsaida "
                    + "set produto_codproduto="+produto_codproduto+", "
                    + "saida_codsaida="+saida_codsaida+", "
                    + "lote=\""+lote+"\", "
                    + "qtde='"+qtde+"', "
                    + "valor=\""+valor+"\" "
                    + "where coditemsaida='"+coditemsaida+"'"; 
     
            int linhas = stm.executeUpdate(query);  
              
            if (linhas >0 )  
               testa = true;  
            else  
               testa = false;  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
         return testa;  
      }  
        
      public boolean excluirDados(){  
        
       boolean testa = false;  
        
         try {  
            String query = "delete from itemsaida where coditemsaida='" +coditemsaida+"'";  
            int linhas = stm.executeUpdate(query);  
              
            if (linhas > 0)  
               testa = true;  
            else  
               testa = false;  
     
        }catch (SQLException e){System.out.println("Erro na exclusão:" + e.getMessage());}  
          
        return testa;  
     }  
       
     public boolean consultarDados(){  
          
        boolean testa = false;  
             
        try {  
           String query = "select * from itemsaida where coditemsaida='" +coditemsaida+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from itemsaida");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  

