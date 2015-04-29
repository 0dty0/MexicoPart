import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
import java.util.ArrayList;
import java.util.Date;

public class TablaPreguntas extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response){

		try{
			
			
			RequestDispatcher disp = null;
			DBConnection dbc = new DBConnection();
			String query = "SELECT id_Pregunta_abierta, texto, fecha, id_administracion FROM Pregunta_abierta";
			
			ResultSet res = dbc.executeQuery(query);
			
			ArrayList<PPreguntaA> preguntas = new ArrayList<PPreguntaA>();
			
			while(res.next()){
				PPreguntaA pregunta = new PPreguntaA();
				pregunta.setId(res.getInt("id_Pregunta_abierta"));
				pregunta.setTexto(res.getString("texto"));
				pregunta.setFecha(res.getDate("fecha"));
				pregunta.setIdA(res.getString("id_administracion"));
								
				preguntas.add(pregunta);
			}
			
			request.setAttribute("preguntas",preguntas);
			disp = getServletContext().getRequestDispatcher("/tablaPreguntas.jsp");
			
			dbc.close();		
			
			if(disp!=null){
				disp.forward(request,response);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}



	}
}