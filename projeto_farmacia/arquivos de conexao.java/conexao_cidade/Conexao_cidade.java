
 package conexao_cidade;  
      
    import java.sql.*;  
     
    public class Conexao_cidade {  
        
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
 
      private int codcidade = 0;  
      private String cidade = null;  
	  private String uf = null;
     
      public Conexao_cidade() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_farmacia_matutino","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  
        
      public void setCodcidade(int codcidade){  
         this.codcidade = codcidade;  
      }  
     
      public void setCidade(String cidade){  
         this.cidade = cidade;  
      }  
	  
      public void setUf(String uf){  
         this.uf = uf;  
      }  
     
      public int getCodcidade(){  
         return codcidade;  
      }  
           
      public String getCidade(){  
         return cidade;  
      }  
	  
	   public String getUf(){  
         return uf;  
      }  
     
      public void inserirDados(){  
        
         try {  
            String query = "insert into cidade(codcidade,cidade,uf)"
                    + "values("+codcidade+",\""+cidade+"\",\""+uf+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update cidade "
                    + "set cidade=\""+cidade+"\",uf=\""+uf+"\" "
                    + "where codcidade='"+codcidade+"'"; 
     
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
            String query = "delete from cidade where codcidade='" +codcidade+"'";  
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
           String query = "select * from cidade where codcidade='" +codcidade+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from cidade");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  
