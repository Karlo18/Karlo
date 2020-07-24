import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class estudianteBean implements Serializable {

	private static final long serialVersionUID = 6081417964063918994L;

	public List<Estudiante> getcars() throws ClassNotFoundException, SQLException {

		Connection connect = null;

		String url = "jdbc:mysql://localhost:3306/estudiante";

		String username = "root";
		String password = "";

		try {

			Class.forName("com.mysql.jdbc.Driver");

			connect = DriverManager.getConnection(url, username, password);
			// System.out.println("Connection established"+connect);

		} catch (SQLException ex) {
			System.out.println("in exec");
			System.out.println(ex.getMessage());
		}

		List<Estudiante> cars = new ArrayList<Estudiante>();
		PreparedStatement pstmt = connect.prepareStatement("select clave, nombre, trimestre, requisito, from cursos");
		
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {

			Estudiante st  = new Estudiante();
			st.setClave(rs.getInt("clave"));
			st.setNombre(rs.getString("nombre"));
			st.setTrimestre(rs.getInt("trimestre"));
			st.setRequisito(rs.getString("requisito"));
			

			cars.add(st);

		}

		// close resources
		rs.close();
		pstmt.close();
		connect.close();
		

		return cars;

	}

	


}