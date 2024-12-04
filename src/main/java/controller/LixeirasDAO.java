package controller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Lixeira;
import model.MySQLConnect;
import java.sql.ResultSet;


public class LixeirasDAO {

	Connection conn = null;
	String sql = "";
	PreparedStatement ps;
	Statement st;
		
	
	public void inserir(Lixeira dados) {
		sql = "INSERT INTO lixeiras(rua,numero,capacidade,finalidade) VALUES(?,?,?,?)";
		try{
			
			conn = MySQLConnect.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, dados.getRua());
			ps.setString(2, dados.getNumero());
			ps.setString(3, dados.getCapacidade());
			ps.setString(4, dados.getFinalidade());
			ps.execute();
			ps.close();
		}catch(SQLException e) {
			System.out.println("Erro ao inserir" + e.getMessage());			
		}
	}
	public ArrayList<Lixeira> getLista() {
		ArrayList<Lixeira> listar = new ArrayList<Lixeira>();

		sql = "SELECT * FROM lixeiras	";

		try {
			conn = MySQLConnect.getConnection();
			ResultSet resultado = conn.createStatement().executeQuery(sql);

			while (resultado.next()) {
				Lixeira lixeira = new Lixeira();
				lixeira.setId(resultado.getInt("id"));
				lixeira.setRua(resultado.getString("rua"));
				lixeira.setNumero(resultado.getString("numero"));
				lixeira.setCapacidade(resultado.getString("capacidade"));
				lixeira.setFinalidade(resultado.getString("finalidade"));
				listar.add(lixeira);
			}
		} catch (SQLException e) {
			System.out.println("Erro ao listar");
		}
		return listar;
	}

	
	public void atualizar(Lixeira dados) {
		
		sql = "UPDATE lixeiras SET rua=?, numero=?, capacidade=?, finalidade=?";
		
		
		try {
			conn = MySQLConnect.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, dados.getRua());
			ps.setString(2, dados.getNumero());
			ps.setString(3, dados.getCapacidade());
			ps.setString(4, dados.getFinalidade());
			ps.execute();
			ps.close();
			
		} catch (SQLException e) {
			System.out.println("Erro ao atualizar");
		}
		
	}
	
	public void deletar(int valor) {
		sql = "DELETE FROM * lixeiras WHERE id="+ valor;
		
		try {
			conn = MySQLConnect.getConnection();
			ps = conn.prepareStatement(sql);
			st.execute(sql);
			st.close();
			
		} catch (SQLException e) {
			System.out.println("Erro ao deletar");
			
		}
		
		
	}
}
