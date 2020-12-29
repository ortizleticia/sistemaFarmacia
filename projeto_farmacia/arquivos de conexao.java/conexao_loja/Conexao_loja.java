
package conexao_loja;

import java.sql.*;

public class Conexao_loja {
    
       public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
 
      private int codloja = 0;  
      private int cidade_codcidade = 0;  
      private String nome = null;
      private String endereco = null;
      private int num = 0;
      private String bairro = null;
      private String tel = null;
      private String insc = null;
      private String cnpj = null;
      
         
      public Conexao_loja() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_farmacia_matutino","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  

    public int getCodloja() {
        return codloja;
    }

    public void setCodloja(int codloja) {
        this.codloja = codloja;
    }

    public int getCidade_codcidade() {
        return cidade_codcidade;
    }

    public void setCidade_codcidade(int cidade_codcidade) {
        this.cidade_codcidade = cidade_codcidade;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
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

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getInsc() {
        return insc;
    }

    public void setInsc(String insc) {
        this.insc = insc;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

             
      public void inserirDados(){  
        
         try {  
            String query = "insert into loja(codloja,cidade_codcidade,nome,endereco,num,bairro,tel,insc,cnpj) "
                    + "values("+codloja+","+cidade_codcidade+",\""+nome+"\",\""+endereco+"\","+num+",\""+bairro+"\", "
                    + "\""+tel+"\",\""+insc+"\",\""+cnpj+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update loja "
                    + "set cidade_codcidade = '"+cidade_codcidade+"', nome= \""+nome+"\", "
                    + "endereco=\""+endereco+"\", num='"+num+"', bairro=\""+bairro+"\", "
                    + "cnpj=\""+cnpj+"\", insc=\""+insc+"\", tel=\""+tel+"\" "
                    + "where codloja='"+codloja+"'"; 
     
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
            String query = "delete from loja where codloja='" +codloja+"'";  
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
           String query = "select * from loja where codloja='" +codloja+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from loja");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  