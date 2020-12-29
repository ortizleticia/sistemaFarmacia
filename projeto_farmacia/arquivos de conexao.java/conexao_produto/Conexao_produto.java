

package conexao_produto;  
      
    import java.sql.*;  
     
    public class Conexao_produto {  
        
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
 
      private int codproduto = 0;  
      private int categoria_codcategoria = 0;  
      private int fornecedor_codfornecedor = 0;
      private String descricao = null;
      private String peso = null;
      private String controlado = null;
      private int qtdemin = 0;
      
     
      public Conexao_produto() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_farmacia_matutino","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  

    public int getCodproduto() {
        return codproduto;
    }

    public void setCodproduto(int codproduto) {
        this.codproduto = codproduto;
    }

    public int getCategoria_codcategoria() {
        return categoria_codcategoria;
    }

    public void setCategoria_codcategoria(int categoria_codcategoria) {
        this.categoria_codcategoria = categoria_codcategoria;
    }

    public int getFornecedor_codfornecedor() {
        return fornecedor_codfornecedor;
    }

    public void setFornecedor_codfornecedor(int fornecedor_codfornecedor) {
        this.fornecedor_codfornecedor = fornecedor_codfornecedor;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String isControlado() {
        return controlado;
    }

    public void setControlado(String controlado) {
        this.controlado = controlado;
    }

    public int getQtdemin() {
        return qtdemin;
    }

    public void setQtdemin(int qtdemin) {
        this.qtdemin = qtdemin;
    }
     
           
      public void inserirDados(){  
        
         try {  
            String query = "insert into produto(codproduto,categoria_codcategoria,fornecedor_codfornecedor,"
                    + "descricao,peso,controlado,qtdemin) "
                    + "values("+codproduto+","+categoria_codcategoria+","+fornecedor_codfornecedor+","
                    + "\""+descricao+"\",\""+peso+"\",\""+controlado+"\","+qtdemin+")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update produto "
                    + "set categoria_codcategoria= "+categoria_codcategoria+", "
                    + "fornecedor_codfornecedor="+fornecedor_codfornecedor+", "
                    + "descricao=\""+descricao+"\", "
                    + "peso="+peso+", "
                    + "controlado=\""+controlado+"\", "
                    + "qtdemin=\""+qtdemin+"\" "
                    + "where codproduto='"+codproduto+"'"; 
     
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
            String query = "delete from produto where codproduto='" +codproduto+"'";  
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
           String query = "select * from produto where codproduto='" +codproduto+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from produto");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  