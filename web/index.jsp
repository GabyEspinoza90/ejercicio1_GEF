<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio1</title>  
        <link rel="stylesheet" href="estiloccs.css">
    </head>
    <body>
        <%
         
        String matricula[] = 
        {
            "57201000169",
            "57201000177",
            "57201000165",
            "57201000174",
            "57201000153",
            "57201000163",
            "57201000173",
            "57201000178",
            "57201000164",
            "57201000182"};
        String nombre[] = 
        {
           "ADRIAN",
            "VERONICA",
            "LAURA",
            "ROGELIO",
            "KARLA IVONNE",
            "GABRIELA",
            "XOCHITL",
            "YOSAHANDY",
            "JOSE DE JESUS",
            "IGNACIO"
        };
        String apellidos[]=
        {
            "GIL GASPAR",
            "MARIN JORGE",
            "CUEVAS BAHENA",
            "PASCUALEÑO CHEPILLO",
            "CRUZ ROCHA",
            "ESPINOZA FLORES",
            "ESUDERO CERVANTES",
            "CHEPILLO CASTRO",
            "RODRIGUEZ NAVARRETE",
            "ZAPOTECO NAVA"
        };
        
        
        int ddi[]={10,9,8,9,10,9,8,10,9,9};
        int dwi []={8,8,9,10,9,8,10,8,9,9};
        int ecbd []={9,9,10,10,9,9,8,8,10,9};
        double prom []=new double[10];
        
        prom[0]=(ddi[0]+dwi[0]+ecbd[0])/3;
        prom[1]=(ddi[1]+dwi[1]+ecbd[1])/3;
        prom[2]=(ddi[2]+dwi[2]+ecbd[2])/3;
        prom[3]=(ddi[3]+dwi[3]+ecbd[3])/3;
        prom[4]=(ddi[4]+dwi[4]+ecbd[4])/3;
        prom[5]=(ddi[5]+dwi[5]+ecbd[5])/3;
        prom[6]=(ddi[6]+dwi[6]+ecbd[6])/3;
        prom[7]=(ddi[7]+dwi[7]+ecbd[7])/3;
        prom[8]=(ddi[8]+dwi[8]+ecbd[8])/3;
        prom[9]=(ddi[9]+dwi[9]+ecbd[9])/3;
        
        %>
            <h1>Tabla usando expresiones</h1> 
            <table border="1" align="center">  
            <thead>
                <tr>
                    <th>MATRICULA</th>
                    <th>NOMBRE</th>
                    <th>APELLIDOS</th>
                    <th>DDI</th>
                    <th>DWI</th>
                    <th>ECBD</th>
                    <th>PROM</th>
                </tr>
            </thead>
            <% for (int i=0;i<10;i++){%>
            <tbody>
                <tr>
                    <td> <%=matricula[i]%> </td>
                    <td> <%=nombre[i]%> </td> 
                    <td> <%=apellidos[i]%> </td> 
                    <td> <%=ddi[i]%></td>
                    <td> <%=dwi[i]%></td>
                    <td> <%=ecbd[i]%></td>
                    <td> <%=prom[i]%></td>
                </tr>  
            <% } %> 
            </tbody>
            </table>        
            <h1>Tabla 100% JAVA</h1>
                <% 
                    out.println("<table>"
                               
                               + "<tr>"
                               + "<th>MATRICULA</th>"
                               + "<th>NOMBRE</th>"
                               + "<th>APELLIDOS</th>"
                               + "<th>DDI</th>"
                               + "<th>DWI</th>"
                               + "<th>ECBD</th>"
                               + "<th>PROM</th>"
                               + "</tr>");
                for (int i=0;i<10;i++) 
                   
                out.println("<tr>"
                            +"<td>"+matricula[i]+ "</td>"
                            + "<td>"+nombre[i]+ "</td>" 
                            + "<td>"+apellidos[i]+ "</td>"
                            + "<td>"+ddi[i]+"</td>"
                            +"<td>"+dwi[i]+"</td>"
                            +"<td>"+ecbd[i]+"</td>"
                            +"<td>"+prom[i]+"</td>"
                            +"</tr>");
                  out.println("</table>");   
                %>    
    <footer id="footer">
    &copy;Todos los derechos reservados
    </footer>                 
    </body>
</html>
