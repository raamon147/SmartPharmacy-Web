package Classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class ProdutoDbUtil {

	private DataSource dataSource;

	public ProdutoDbUtil(DataSource theDataSource) {
		dataSource = theDataSource;
	}
	
	public List<Produto> getProduto() throws Exception {
		
		List<Produto> students = new ArrayList<>();
		
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			// get a connection
			myConn = dataSource.getConnection();
			
			// create sql statement
			String sql = "select * from produto order by produto";
			
			myStmt = myConn.createStatement();
			
			// execute query
			myRs = myStmt.executeQuery(sql);
			
			// process result set
			while (myRs.next()) {
				
				// retrieve data from result set row
				int id = myRs.getInt("codigo");
				String firstName = myRs.getString("produto");
				String lastName = myRs.getString("last_name");
				String email = myRs.getString("email");
                                int qtd = myRs.getInt("quantidade");
				
				// create new student object
				Produto tempProduto = new Produto(id, firstName, lastName, email,qtd);
				
				// add it to the list of students
				students.add(tempProduto);				
			}
			
			return students;		
		}
		finally {
			// close JDBC objects
			close(myConn, myStmt, myRs);
		}		
	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

		try {
			if (myRs != null) {
				myRs.close();
			}
			
			if (myStmt != null) {
				myStmt.close();
			}
			
			if (myConn != null) {
				myConn.close();   // doesn't really close it ... just puts back in connection pool
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
	}

	public void addStudent(Produto theStudent) throws Exception {

		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		try {
			// get db connection
			myConn = dataSource.getConnection();
			
			// create sql for insert
			String sql = "insert into PRODUTO "
					   + "(codigo, produto, fabricante, principioativo, quantidade) "
					   + "values (?, ?, ?, ?, ?)";
			
			myStmt = myConn.prepareStatement(sql);
			
			// set the param values for the student
			myStmt.setInt(1, theStudent.getId());
                        myStmt.setString(2, theStudent.getNome());
			myStmt.setString(3, theStudent.getFabricante());
			myStmt.setString(4, theStudent.getPrincipioativo());
                        myStmt.setInt(5, theStudent.getQuantidade());
			
			// execute sql insert
			myStmt.execute();
		}
		finally {
			// clean up JDBC objects
			close(myConn, myStmt, null);
		}
	}

	public Produto getProduto(int produtoId) throws Exception {

		Produto theStudent = null;
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		int studentId;
		
		try {
			
			
			// get connection to database
			myConn = dataSource.getConnection();
			
			// create sql to get selected student
			String sql = "select * from student where id=?";
			
			// create prepared statement
			myStmt = myConn.prepareStatement(sql);
			
			// set params
			myStmt.setInt(1, produtoId);
			
			// execute statement
			myRs = myStmt.executeQuery();
			
			// retrieve data from result set row
			if (myRs.next()) {
				int codigo = myRs.getInt("codigo");
				String produto = myRs.getString("produto");
				String fabricante = myRs.getString("fabricante");
				String principioativo = myRs.getString("principioativo");
                                int qtd = myRs.getInt("quantidade");
				
				// use the studentId during construction
                                theStudent = new Produto(codigo, produto, fabricante, principioativo,qtd);
			}
			else {
				throw new Exception("Could not find student id: " + produtoId);
			}				
			
			return theStudent;
		}
		finally {
			// clean up JDBC objects
			close(myConn, myStmt, myRs);
		}
	}

	public void updateStudent(Produto theStudent) throws Exception {
		
		Connection myConn = null;
		PreparedStatement myStmt = null;

		try {
			// get db connection
			myConn = dataSource.getConnection();
			
			// create SQL update statement
			String sql = "update student "
						+ "set nome=?, fabricante=?, principioativo=?, quantidade=? "
						+ "where id=?";
			
			// prepare statement
			myStmt = myConn.prepareStatement(sql);
			
			// set params
			
                        myStmt.setString(1, theStudent.getNome());
			myStmt.setString(2, theStudent.getFabricante());
			myStmt.setString(3, theStudent.getPrincipioativo());
                        myStmt.setInt(4, theStudent.getQuantidade());
			myStmt.setInt(5, theStudent.getId());
			
			// execute SQL statement
			myStmt.execute();
		}
		finally {
			// clean up JDBC objects
			close(myConn, myStmt, null);
		}
	}

	public void deleteStudent(String theStudentId) throws Exception {

		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		try {
			// convert student id to int
			int studentId = Integer.parseInt(theStudentId);
			
			// get connection to database
			myConn = dataSource.getConnection();
			
			// create sql to delete student
			String sql = "delete from student where id=?";
			
			// prepare statement
			myStmt = myConn.prepareStatement(sql);
			
			// set params
			myStmt.setInt(1, studentId);
			
			// execute sql statement
			myStmt.execute();
		}
		finally {
			// clean up JDBC code
			close(myConn, myStmt, null);
		}	
	}
}















