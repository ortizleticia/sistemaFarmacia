
package conexao_itementrada;

import java.sql.*; 

public class Conexao_itementrada {
    
    public Connection con;  
    public Statement stm;  
    public ResultSet res = null; 
 
    private int coditementrada = 0;  
    private int produto_codproduto = 0;  
    private int entrada_codentrada = 0;
    private String lote = null;
    private int qtde = 0;
    private String valor = null;
    
        
      public Conexao_itementrada() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_farmacia_matutino","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  

    public int getCoditementrada() {
        return coditementrada;
    }

    public void setCoditementrada(int coditementrada) {
        this.coditementrada = coditementrada;
    }

    public int getProduto_codproduto() {
        return produto_codproduto;
    }

    public void setProduto_codproduto(int produto_codproduto) {
        this.produto_codproduto = produto_codproduto;
    }

    public int getEntrada_codentrada() {
        return entrada_codentrada;
    }

    public void setEntrada_codentrada(int entrada_codentrada) {
        this.entrada_codentrada = entrada_codentrada;
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
            String query = "insert into itementrada(coditementrada,produto_codproduto,entrada_codentrada,lote,qtde,valor) "
                    + "values("+coditementrada+","+produto_codproduto+","+entrada_codentrada+",\""+lote+"\","+qtde+",\""+valor+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update itementrada "
                    + "set produto_codproduto="+produto_codproduto+", "
                    + "entrada_codentrada="+entrada_codentrada+", "
                    + "lote=\""+lote+"\", "
                    + "qtde="+qtde+", "
                    + "valor=\""+valor+"\" "
                    + "where coditementrada='"+coditementrada+"'"; 
     
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
            String query = "delete from itementrada where coditementrada='" +coditementrada+"'";  
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
           String query = "select * from itementrada where coditementrada='" +coditementrada+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from itementrada");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  


