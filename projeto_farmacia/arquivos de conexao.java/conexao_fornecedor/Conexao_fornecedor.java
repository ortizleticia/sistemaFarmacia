
package conexao_fornecedor;  
      
    import java.sql.*;  
     
    public class Conexao_fornecedor {  
        
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
 
      private int codfornecedor = 0;  
      private int cidade_codcidade = 0;  
      private String fornecedor = null;
      private String endereco = null;
      private int num = 0;
      private String bairro = null;
      private String cep = null;
      private String contato = null;
      private String cnpj = null;
      private String insc = null;
      private String tel = null;
     
      public Conexao_fornecedor() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_farmacia_matutino","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  

    public int getCodfornecedor() {
        return codfornecedor;
    }

    public void setCodfornecedor(int codfornecedor) {
        this.codfornecedor = codfornecedor;
    }

    public int getCidade_codcidade() {
        return cidade_codcidade;
    }

    public void setCidade_codcidade(int cidade_codcidade) {
        this.cidade_codcidade = cidade_codcidade;
    }

    public String getFornecedor() {
        return fornecedor;
    }

    public void setFornecedor(String fornecedor) {
        this.fornecedor = fornecedor;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getContato() {
        return contato;
    }

    public void setContato(String contato) {
        this.contato = contato;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getInsc() {
        return insc;
    }

    public void setInsc(String insc) {
        this.insc = insc;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
        
           
      public void inserirDados(){  
        
         try {  
            String query = "insert into fornecedor(codfornecedor,cidade_codcidade,fornecedor,endereco,num,bairro,cep,contato,cnpj,insc,tel) "
                    + "values("+codfornecedor+", "+cidade_codcidade+", \""+fornecedor+"\", \""+endereco+"\" ,"+num+", \""+bairro+"\", \""+cep+"\", \""+contato+"\", \""+cnpj+"\", \""+insc+"\", \""+tel+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update fornecedor "
                    + "set cidade_codcidade="+cidade_codcidade+", "
                    + "fornecedor=\""+fornecedor+"\", "
                    + "endereco=\""+endereco+"\", "
                    + "num="+num+", "
                    + "bairro=\""+bairro+"\", "
                    + "cep=\""+cep+"\", "
                    + "contato=\""+contato+"\", "
                    + "cnpj=\""+cnpj+"\", "
                    + "insc=\""+insc+"\", "
                    + "tel=\""+tel+"\" "
                    + "where codfornecedor='"+codfornecedor+"'"; 
     
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
            String query = "delete from fornecedor where codfornecedor='" +codfornecedor+"'";  
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
           String query = "select * from fornecedor where codfornecedor='" +codfornecedor+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from fornecedor");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  