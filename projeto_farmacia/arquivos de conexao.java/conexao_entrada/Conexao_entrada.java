
package conexao_entrada;  
      
    import java.sql.*;  
     
    public class Conexao_entrada {  
        
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
 
      private int codentrada = 0;  
      private int transportadora_codtransportadora = 0;  
      private String dataped = null;
      private String dataentr = null;
      private String total = null;
      private String frete = null;
      private int numnf = 0;
      private String imposto = null;
      
     
      public Conexao_entrada() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_farmacia_matutino","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  

    public int getCodentrada() {
        return codentrada;
    }

    public void setCodentrada(int codentrada) {
        this.codentrada = codentrada;
    }

    public int getTransportadora_codtransportadora() {
        return transportadora_codtransportadora;
    }

    public void setTransportadora_codtransportadora(int transportadora_codtransportadora) {
        this.transportadora_codtransportadora = transportadora_codtransportadora;
    }

    public String getDataped() {
        return dataped;
    }

    public void setDataped(String dataped) {
        this.dataped = dataped;
    }

    public String getDataentr() {
        return dataentr;
    }

    public void setDataentr(String dataentr) {
        this.dataentr = dataentr;
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

    public int getNumnf() {
        return numnf;
    }

    public void setNumnf(int numnf) {
        this.numnf = numnf;
    }

    public String getImposto() {
        return imposto;
    }

    public void setImposto(String imposto) {
        this.imposto = imposto;
    }

       
           
      public void inserirDados(){  
        
         try {  
            String query = "insert into entrada(codentrada,transportadora_codtransportadora,dataped,"
                    + "dataentr,total,frete,numnf,imposto) "
                    + "values("+codentrada+","+transportadora_codtransportadora+",\""+dataped+"\","
                    + "\""+dataentr+"\",\""+total+"\",\""+frete+"\","+numnf+",\""+imposto+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update entrada "
                    + "set transportadora_codtransportadora="+transportadora_codtransportadora+", "
                    + "dataped=\""+dataped+"\", "
                    + "dataentr=\""+dataentr+"\", "
                    + "total=\""+total+"\", "
                    + "frete=\""+frete+"\", "
                    + "numnf="+numnf+", "
                    + "imposto=\""+imposto+"\" "
                    + "where codentrada='"+codentrada+"'"; 
     
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
            String query = "delete from entrada where codentrada='" +codentrada+"'";  
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
           String query = "select * from entrada where codentrada='" +codentrada+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from entrada");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  
