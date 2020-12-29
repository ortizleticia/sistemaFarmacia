
package conexao_saida;

import java.sql.*;

public class Conexao_saida {
    
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
 
      private int codsaida = 0;  
      private int loja_codloja = 0;  
      private int transportadora_codtransportadora = 0;
      private String total = null;
      private String frete = null;
      private String imposto = null;
    
         
      public Conexao_saida() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_farmacia_matutino","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  

    public int getCodsaida() {
        return codsaida;
    }

    public void setCodsaida(int codsaida) {
        this.codsaida = codsaida;
    }

    public int getLoja_codloja() {
        return loja_codloja;
    }

    public void setLoja_codloja(int loja_codloja) {
        this.loja_codloja = loja_codloja;
    }

    public int getTransportadora_codtransportadora() {
        return transportadora_codtransportadora;
    }

    public void setTransportadora_codtransportadora(int transportadora_codtransportadora) {
        this.transportadora_codtransportadora = transportadora_codtransportadora;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getFrete() {
        return frete;
    }

    public void setFrete(String frete) {
        this.frete = frete;
    }

    public String getImposto() {
        return imposto;
    }

    public void setImposto(String imposto) {
        this.imposto = imposto;
    }

      
      public void inserirDados(){  
        
         try {  
            String query = "insert into saida(codsaida,loja_codloja,transportadora_codtransportadora,total,"
                    + "frete,imposto) "
                    + "values("+codsaida+","+loja_codloja+","+transportadora_codtransportadora+", "
                    + "\""+total+"\",\""+frete+"\",\""+imposto+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update saida "
                    + "set loja_codloja="+loja_codloja+", "
                    + "transportadora_codtransportadora="+transportadora_codtransportadora+", "
                    + "total=\""+total+"\", "
                    + "frete=\""+frete+"\", "
                    + "imposto=\""+imposto+"\" "
                    + "where codsaida='"+codsaida+"'"; 
     
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
            String query = "delete from saida where codsaida='" +codsaida+"'";  
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
           String query = "select * from saida where codsaida='" +codsaida+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from saida");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  
