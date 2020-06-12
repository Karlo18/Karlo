<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import ="java.sql.*"%>
    <%@ page import ="java.io.*" %>
<!DOCTYPE html>

<html lang="es">
<head>
    <title>UTP</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Estilos Css -->
    <link rel="stylesheet" href="css/styles.css">

    <link href="https://fonts.googleapis.com/css?family=Red+Hat+Text:400,500,700&display=swap" rel="stylesheet">

</head>
<body>

  <!-- Ir Arriba -->
  <div class="go-top">
    <span class="fas fa-angle-up"></span>
  </div>
  

    <!-- Menu de Navegacion -->
    <header id="header">
    <nav class="menu">
     <div class="logo-box">
   	<h1><a href="#">Universidad tecnologica del Peru</a></h1>
       <span class="btn-menu"><i class="fas fa-bars"></i></span>
     </div>
     
     <div class="list-container">
        <ul class="lists">
            <li><a href="#" class="active">Inicio</a></li>
            <li><a href="#">Nosotros</a></li>
            <li><a href="#">Servicios</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Contacto</a></li>
        </ul>
     </div>
    </nav>
 
    <!-- Imagen Header -->
    <div class="img-header">
     <div class="welcome">
       <h1>Carrera de Ingeneria de Sistemas</h1>
       <hr>
       <p> Desarrollo web Integrado </p>
       <button id="abajo">Informacion</button>
     </div>       
    </div>
    
    <div class="skew-abajo"></div>

    </header>

 <main>

    <!-- Acerca de nosotros -->
    <section class="acerca-de">
    <div class="info-container">
      <h1>Acerca de Nosotros</h1>
      <p>Domina sistemas informáticos, redes y conectividad, y seguridad informática. Diseña soluciones viables para problemas complejos.Aplica con eficiencia las Tecnologías de la Información y Comunicaciones (TIC) desde un punto de vista ético-sistémico y de costo-beneficio. Conceptualiza, planifica, provee y evalúa servicios puntuales de consultoría informática centrados en las necesidades de los clientes, con un enfoque en soluciones y una clara línea comercial</p>
      <p>Participa en proyectos de diseño e implementación de redes y conectividad. Garantiza que los sistemas TIC de una organización funcionen de forma adecuada, sean seguros y estén adecuadamente instalados, documentados, personalizados, mantenidos y actualizados</p>
      <div class="about-gallery">
        <img src="img/img-9.jpg" alt="">
        <img src="img/img-13.jpg" alt="">
        <img src="img/img-17.jpg" alt="">
      </div>

      <div class="about-more"><button>Leer mas</button></div>

    </div>
    </section>

   <!-- Nuestros proyectos -->
   <section class="our-projects">
      <div class="skew-arriba"></div>
   <div class="deg-background"></div>
   
   <div class="ejeZproject">
      <div class="container-project">
        <div class="project-title">
          <h2>Nuestros Proyectos</h2>
          <hr>
        </div>
          <div class="project-img">
            <img src="img/theme-1.png" alt="">
            <img src="img/theme-2.png" alt="">
            <img src="img/theme-3.png" alt="">
            <img src="img/theme-4.jpg" alt="">
            <img src="img/theme-5.png" alt="">
            <img src="img/theme-6.jpg" alt="">
            <img src="img/theme-7.jpg" alt="">
            <img src="img/theme-8.png" alt="">
            <img src="img/theme-9.jpg" alt="">
            <img src="img/theme-10.jpg" alt="">
         </div>
   <div class="skew-abajo"></div>
   </section>

   <!-- Testimonios -->
   <section class="testimonios">
    <div class="testimonios-title">
     <h2>EGRESADOS PREGRADO </h2>
     <hr>
    </div>

     <div class="box-testimonio">
      <div class="card-testimonio">
        <div class="card-img"><img src="img/peaple-1.jpg" alt=""></div>
        <div class="testimonio-text">
        <h4>Amanta Castillo</h4>
        <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec tellus quis orci tristique accumsan a quis tortor. Quisque ultricies diam vitae dolor varius, et molestie dolor faucibus."</p>
        </div>
      </div>

      <div class="card-testimonio">
          <div class="card-img"><img src="img/peaple-2.jpg" alt=""></div>
          <div class="testimonio-text">
          <h4>Clara Smilla</h4>
          <p>"In a gravida enim. Ut nunc tortor, viverra et leo ut, mattis pretium velit. Phasellus vitae molestie tortor, blandit scelerisque tellus."</p>
          </div>
        </div>

        <div class="card-testimonio">
            <div class="card-img"><img src="img/peaple-3.jpg" alt=""></div>
            <div class="testimonio-text">
            <h4>Oscar Muñoz - Fundandor</h4>
            <p>"Sed pulvinar neque semper quam ultricies placerat. Suspendisse id posuere diam, sit amet malesuada urna. Proin eleifend consectetur convallis. Nulla dignissim ut elit a faucibus. Sed luctus sagittis gravida. Vivamus ante leo, finibus a rutrum ac, sodales vitae nisi."</p>
            </div>
          </div>

          <div class="card-testimonio">
              <div class="card-img"><img src="img/peaple-4.jpg" alt=""></div>
              <div class="testimonio-text">
              <h4>Roberto Perez</h4>
              <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec tellus quis orci tristique accumsan a quis tortor. Quisque ultricies diam vitae dolor varius, et molestie dolor faucibus."</p>
              </div>
            </div>

     </div>
   </section>

 </main> 

 <!-- Footer -->
 <footer class="footer">
   <div class="skew-arriba"></div>
  <div class="deg-footer"></div>
 
  <div class="ejeZfooter">
  <div class="footer-content">
   <div class="footer-title">
     <h2>Formulario de Contacto</h2>
     <hr>
   </div>

   <div class="formulario-content">
     <form id="formulario">
        <label for="user">Nombre:</label>
        <input type="text" id="user" name="user" placeholder="Ingresa tu Nombre">
   
        <label for="email">Correo Electronico:</label>
        <input type="email" id="email" name="email" placeholder="Ingresa tu Correo Electronico">
   
        <label for="message">Escribe tu mensaje</label>
        <textarea name="menssage" id="message"></textarea>
   
        <div class="send"><button>Enviar</button></div>
   
        <div class="mensaje-form">
          <p>Escribenos un mensaje, con gusto tendras una respuesta de parte de nosotros en muy poco tiempo.</p>
        </div>
     </form>
   </div>

   <div class="footer-text">
     <p>&copy; Universidad Tecnologica del Peru - 2020 </p>
   </div>
  
  </div>
</div>
 </footer>

<!-- Scripts -->
<script src="https://kit.fontawesome.com/35db202371.js"></script>
<script src="js/app.js"></script>

</body>
</html>