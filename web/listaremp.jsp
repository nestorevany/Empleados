<%@page import="java.util.ArrayList"%>
<%@page import="componentes.nuevoarregloempleado"%>
<%@page import="componentes.nuevoempleado"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <STYLE type="text/css">
  BODY {text-align: center}
 </STYLE>  
    </head>
    <body bgcolor="#00A0E3">                     
        <table border="1" style="margin: 0 auto;">            
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Edad</th>
                    <th>Sexo</th>
                    <th>Fecha Nacimiento</th>
                    <th>Direccion</th>
                    <th>Puesto</th>
                    <th>Fecha Contratacion</th>
                    <th>Sueldo</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                </tr>
            </thead>
            <tbody>     
                         <%                                     
            nuevoarregloempleado bh = (nuevoarregloempleado) session.getAttribute("hogar");
            ArrayList<nuevoempleado> lista = bh.getNuevoemp();
             for (nuevoempleado temp : lista) {
                out.print("<tr> <td>"+temp.getCodigo()+"</td> <td>"+temp.getNombre()+"</td> <td>"+temp.getApellido()+"</td> "
                        + "<td>"+temp.getEdad()+"</td> <td>"+temp.getSexo()+"</td> <td>"+temp.getFechanacimiento()+"</td> <td>"+temp.getDireccion()+"</td>"
                                + "<td>"+temp.getPuesto()+"</td> <td>"+temp.getFechacontratacion()+"</td> <td>"+temp.getSueldo()+"</td> "
                                        + "<td>"+temp.getTelefono()+"</td> <td>"+temp.getCorreo()+"</td> </tr>");                       
                out.print("<br>");
            }                            
        %>                                            
                <h1>Lista de Empleados</h1>  
            </tbody>
        </table>

<br>       
   <a href="index.jsp"><input type="button" value="Regresar" name="btnregresar" /> </a>          
    </body>
</html>
