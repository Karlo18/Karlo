<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*"%>
    <%@ page import ="java.io.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>
			Septiembre2020		
		</title>	
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="http://webcalendario.com/favicons/09.ico">	
		<script src="lib/jquery-1.10.1.min.js"></script>
		<script src="lib/jquery-ui.js"></script>
		<script src="js/codigo.js">
		
		</script>
		<link rel="stylesheet" type="text/css" href="css/estilo.css">
		<link rel="stylesheet" type="text/css" href="css/header.css">
	</head>
	<body>
	<div id="tituloprint">www.webcalendario.com</div>
	<header>
		<div id="logo">
			
				<h1>webcalendario.com</h1>
				<h2>Tu calendario en la nube</h2>
			</div>
			<nav>
				<ul>
					<li>
						Inicio
					</li>
					<li>
						FAQ
					</li>
					<li id="botonlogin">
						Inicia sesion
					</li>
					<li id="botonsignin">
						Regístrate
					</li>
					<li id="contacto">
						Contacto
					</li>
					<li id="contacto">
						<a href="">Cerrar Sesion</a>
					</li>
				</ul>
			</nav>
	</header>
	<table width="100%">
	<tbody><tr>
	<td id="aniotitulo">
		<h2>Septiembre</h2><h1>2014</h1></td>
		<td id="botones">
			<a href="http://webcalendario.com/"><button> &lt;&lt; </button></a>
			<a href="./webcalendario_files/webcalendario.html"><button> &gt;&gt; </button></a>
		</td>
		<td>
			<div id="calendarios">
			
				<span class="calendariocol" idcalendario="1" style="width:80px;background:#9fb6ff;">Calendario1</span>
				<span class="calendariocol" idcalendario="1" style="width:80px;background:#9fb6ff;">Calendario2</span>
			
			</div>
			<span class="calendariocol" style="background:grey;" id="ocultacalendarios"> &gt; </span>
			</td>
			
			
			<%  
		
		try{
			String conexion = "jdbc:mysql://localhost:3306/webcalendario";
			Connection connection=null;
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection=DriverManager.getConnection(conexion,"root","");
			
			//segunda parte
			
			Statement stmt =connection.createStatement();
			ResultSet rset;
			
		 
		
			
				String peticion = "select*from calendarios";
				rset = stmt.executeQuery(peticion);

				while(rset.next()){
					out.println(rset.getString("nombre")+"<br>");
				}
				
			stmt.close();
			connection.close();
			
			
		}catch(Exception ex){
			out.println("error de "+ex.getMessage().toString());
		}
		
		%>
		</tr>
		</tbody></table>
		<div style="clear:both;"></div>
		<div id="calendario">
		<%for (int dia=1;dia<=31; dia++){
			out.println("<div class='dia ui-droppable' dia="+dia+" style='position:relative;'><div class='numerodia'><b>"+dia+"</b></div></div>");
			}
		%>
		<!-- -dias -->
		<!--  
			<div class="dia ui-droppable" dia="1" style="position:relative;"><div class="numerodia"><b>1</b></div></div>
			<div class="dia ui-droppable" dia="2" style="position:relative;"><div class="numerodia"><b>2</b></div></div>
			<div class="dia ui-droppable" dia="3" style="position:relative;"><div class="numerodia"><b>3</b></div></div>
			<div class="dia ui-droppable" dia="4" style="position:relative;"><div class="numerodia"><b>4</b></div></div>
			<div class="dia ui-droppable" dia="5" style="position:relative;"><div class="numerodia"><b>5</b></div></div>
			<div class="dia ui-droppable" dia="6" style="background:rgba(0,0,0,0.2);position:relative;"><div class="numerodia"><b>6</b></div></div>
			<div class="dia ui-droppable" dia="7" style="background:rgba(0,0,0,0.2);position:relative;"><div class="numerodia"><b>7</b></div></div>
			<div style="clear:both;"></div>
			<div class="dia ui-droppable" dia="8" style="position:relative;"><div class="numerodia"><b>8</b></div></div>
			<div class="dia ui-droppable" dia="9" style="background:white !important;position:relative;"><div class="numerodia"><b>9</b></div></div>
			<div class="dia ui-droppable" dia="10" style="position:relative;"><div class="numerodia"><b>10</b></div></div>
			<div class="dia ui-droppable" dia="11" style="position:relative;"><div class="numerodia"><b>11</b></div></div>
			<div class="dia ui-droppable" dia="12" style="position:relative;"><div class="numerodia"><b>12</b></div></div>
			<div class="dia ui-droppable" dia="13" style="background:rgba(0,0,0,0.2);position:relative;">
				<div class="numerodia"><b>13</b></div>
				<div idcaldia="7" anio="2014" mes="9" dia="13" hora="9" nombre="IMF" class="evento ui-draggable" style="background:#d7d7d7;width:90%;height:19.2%;position:absolute;top:48%;">
					9:0-15:00
						<span class="motivoevento">
							-Evento 1
						</span>
						<div class="eliminar">
							<a style="color:#d7d7d7;" href="http://webcalendario.com/php/calendario.php?operacion=eliminar&anio=2014&mes=9&dia=13&nombre=IMF">
								X
							</a>
						</div>
					</div>
				</div>
			<div class="dia ui-droppable" dia="14" style="background:rgba(0,0,0,0.2);position:relative;"><div class="numerodia"><b>14</b></div></div>
			<div style="clear:both;"></div><div class="dia ui-droppable" dia="15" style="position:relative;"><div class="numerodia"><b>15</b></div></div>
			<div class="dia ui-droppable" dia="16" style="position:relative;"><div class="numerodia"><b>16</b></div></div>
			<div class="dia ui-droppable" dia="17" style="position:relative;"><div class="numerodia"><b>17</b></div></div>
			<div class="dia ui-droppable" dia="18" style="position:relative;"><div class="numerodia"><b>18</b></div></div>
			<div class="dia ui-droppable" dia="19" style="position:relative;"><div class="numerodia"><b>19</b></div></div>
			<div class="dia ui-droppable" dia="20" style="background:rgba(0,0,0,0.2);position:relative;"><div class="numerodia"><b>20</b></div></div>
			<div class="dia ui-droppable" dia="21" style="background:rgba(0,0,0,0.2);position:relative;"><div class="numerodia"><b>21</b></div></div>
			<div style="clear:both;"></div><div class="dia ui-droppable" dia="22" style="position:relative;"><div class="numerodia"><b>22</b></div></div>
			<div class="dia ui-droppable" dia="23" style="position:relative;"><div class="numerodia"><b>23</b></div></div>
			<div class="dia ui-droppable" dia="24" style="position:relative;"><div class="numerodia"><b>24</b></div></div>
			<div class="dia ui-droppable" dia="25" style="position:relative;"><div class="numerodia"><b>25</b></div></div>
			<div class="dia ui-droppable" dia="26" style="position:relative;"><div class="numerodia"><b>26</b></div></div>
			<div class="dia ui-droppable" dia="27" style="background:rgba(0,0,0,0.2);position:relative;"><div class="numerodia"><b>27</b></div></div>
			<div class="dia ui-droppable" dia="28" style="background:rgba(0,0,0,0.2);position:relative;"><div class="numerodia"><b>28</b></div></div>
			<div style="clear:both;"></div><div class="dia ui-droppable" dia="29" style="position:relative;"><div class="numerodia"><b>29</b></div></div>
			<div class="dia ui-droppable" dia="30" style="position:relative;"><div class="numerodia"><b>30</b></div></div>
			<div class="dia ui-droppable" dia="31" style="position:relative;"><div class="numerodia"><b>31</b></div></div>
			</div>
			-->
			<div id="nuevoevento" style="display: none;">
				<div id="contieneform">
					<div id="cerrarnuevoevento">X</div>
					<form action="http://webcalendario.com/jsp/calendario.jsp?evento=nuevo" method="POST">
					<input type="hidden" name="anio" value="2014">
						<input type="hidden" name="mes" value="9">
						<h3>Nuevo evento</h3>
					<table width="100%" id="tablanuevoevento" cellpadding="0" cellspacing="0">
						<tbody><tr>
							<td>
								Año:
							</td>
							<td>
								2014							</td>
						</tr>
						<tr>
							<td>
							Mes:	
							</td>
							<td>
								Sep							</td>
						</tr>
						<tr>
							<td>
								Dia:
							</td>
							<td>
								<input type="text" name="dia" id="dimedia">
							</td>
						</tr>
						<tr>
							<td>
								Calendario:
							</td>
							<td>
								<select name="calendario">
								<option value="1">Calendario1</option><option value="2">Calendario2</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								Hora de inicio:
							</td>
							<td>
								<select name="hora">
													<%for (int hora=0;hora<=24;hora++){
														out.println("<option value="+hora+">"+hora+"</option>");
														}
													%>	
							</select>							
						<select name="minuto">
	                                            <%for (int minuto=0;minuto<=60;minuto++){
														out.println("<option value="+minuto+">"+minuto+"</option>");
														}
													%>	
							</select>				
								</td>
						</tr>
						<tr>
							<td>
								Duración:
							</td>
							<td>
								<select name="duracion">
												  <%for (int duracion=0;duracion<=60;duracion+=5){
														out.println("<option value="+duracion+">"+duracion+"</option>");
														}
													%>
									</select>
							</td>
						</tr>
						<tr>
							<td>
								Nombre del evento:
							</td>
							<td>
								<input type="text" name="nombre" placeholder="nombre">
							</td>
						</tr>
						<tr>
							<td>
								
							</td>
							<td>
								<input type="submit">
							</td>
						</tr>
						
					</tbody></table>	
				</form>
			</div>
		</div>
		<div id="ajax"></div>
	
</body>
</html>
