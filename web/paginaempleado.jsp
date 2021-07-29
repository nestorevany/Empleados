<%@page import="componentes.nuevoarregloempleado"%>
<%@page import="componentes.nuevoempleado"%>

 <%
    //si el boton es carrito
    if (request.getParameter("btningresar") != null) { 
        
        nuevoempleado p = new nuevoempleado
        (request.getParameter("txtcodigo"),
                request.getParameter("txtedad"),
                request.getParameter("txtnombre"),
                request.getParameter("txtsexo"),
                request.getParameter("txtapellidos"),
                request.getParameter("txtfechana"),
                request.getParameter("txtdireccion"),
                request.getParameter("txtpuesto"),
                request.getParameter("txtfechacon"),
                request.getParameter("txtsueldo"),
                request.getParameter("txttelefono"),              
                request.getParameter("txtcorreo")
        );       
        nuevoarregloempleado bh;
        if (session.getAttribute("hogar") == null) {
            bh = new nuevoarregloempleado();
            session.setAttribute("hogar", bh);
        } else {
            bh = (nuevoarregloempleado) session.getAttribute("hogar");
        }
        bh.setNuevoemp(p);
        out.print("<script>alert('El empleado ha sido ingresado')</script>");
    }
%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#00A0E3">
        
    <div class="container center-h">       
<table border="2" style="margin: 0 auto;">     
        <tr>
            <td>                
                 <form name="frm1" action="paginaempleado.jsp" method="POST">                                
                          <br>
                          <h1>Nuevo Empleado</h1>
            
            <p>Datos del empleado</p><hr>
            
      <label for="codigo"><b>Codigo</b></label>
      <input type="text" placeholder="Ingrese Codigo" name="txtcodigo" required>
      <label for="edad"><b>Edad</b></label>
      <input type="text" placeholder="Ingrese edad" name="txtedad" required>
          <br>
      <label for="nombre"><b>Nombre</b></label>
      <input type="text" placeholder="Ingrese nombre" name="txtnombre" required>
      <label for="sexo"><b>Sexo</b></label>
      <input type="text" placeholder="Ingrese sexo" name="txtsexo" required>
          <br>
      <label for="apellido"><b>apellido</b></label>
      <input type="text" placeholder="Ingrese apellido" name="txtapellidos" required>
      <label for="fechana"><b>Fecha Nacimiento    </b></label>
      <input type="text" placeholder="Ingrese fecha nacimiento" name="txtfechana" required>
          <br>
      <label for="direccion"><b>Direccion</b></label>
      <input type="text" placeholder="Ingrese direccion" name="txtdireccion" required>
      <label for="puesto"><b>Puesto</b></label>
      <input type="text" placeholder="Ingrese Puesto" name="txtpuesto" required>
          <br>
      <label for="fechacon"><b>Fecha Contrato</b></label>
      <input type="text" placeholder="Ingrese Fecha de contrato" name="txtfechacon" required>
      <label for="sueldo"><b>Sueldo</b></label>
      <input type="text" placeholder="Ingrese Sueldo" name="txtsueldo" required>
          <br>
      <label for="telefono"><b>Telefono</b></label>
      <input type="text" placeholder="Ingrese Telefono" name="txttelefono" required>
      <label for="correo"><b>Correo</b></label>
      <input type="text" placeholder="Ingrese Correo" name="txtcorreo" required>  
          <br>
          <br>
          <input type="submit" value="Crear" name="btningresar" />
          <a href="index.jsp"><input type="button" value="Regresar" name="btnregresar" /> </a>                                                                                                    
        </form>                                                                         
            </td>
        </tr>
</table>  
                                 
    </div>
        
       
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    
    </body>
</html>
