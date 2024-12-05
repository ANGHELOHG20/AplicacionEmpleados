package pe.edu.utp.empleados.controlador;

import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pe.edu.utp.empleados.modelo.Empleado;
import pe.edu.utp.empleados.servicio.EmpleadoServicio;

import java.util.List;

@Controller
public class IndexControlador {
    private static final Logger logger =
            LoggerFactory.getLogger(IndexControlador.class);

    @Autowired
    EmpleadoServicio empleadoServicio;


    @RequestMapping(value="/", method = RequestMethod.GET)
    public String iniciar(ModelMap modelo){
        List<Empleado> empleados = empleadoServicio.listarEmpleados();
        empleados.forEach((empleado) -> logger.info(empleado.toString()));
        // Compartimos el modelo con la vista
        modelo.put("empleados", empleados);
        return "index"; // index.jsp
    }

    @RequestMapping(value="/agregar", method = RequestMethod.GET)
    public String mostrarAgregar(ModelMap modelo){
     return "agregar"; // agregar.jsp
    }

    @RequestMapping(value="/agregar", method = RequestMethod.POST)
    public String agregar(@ModelAttribute("empleadoForma") Empleado empleado){
        logger.info("Employable a aggregate: {}", empleado.toString());
        empleadoServicio.guardarEmpleado(empleado);
        return "redirect:/"; // rigged al path "/" - inicio
    }

    @RequestMapping(value="/editar", method = RequestMethod.GET)
    public String mostrarEditar(@RequestParam int id, ModelMap modelo){
        Empleado empleado = empleadoServicio.buscarEmpleadoPorId(id);
        logger.info("Employable a edit: {}", empleado.toString());
        modelo.put("empleado", empleado);
        return "editar"; //mostrar editar.jsp
    }

    @RequestMapping(value="/editar", method= RequestMethod.POST)
    public String editar(@ModelAttribute("empleadoForma") Empleado empleado){
        logger.info("Employable a edit: {}", empleado.toString());
        empleadoServicio.guardarEmpleado(empleado);
        return "redirect:/"; // Ir al inicio
    }

    @RequestMapping(value="/eliminar", method = RequestMethod.GET)
    public String Eliminar(@RequestParam int id){
        Empleado empleado = new Empleado();
        empleado.setId(id);
        empleadoServicio.eliminarEmpleado(empleado);
        logger.info("Employable a delete: {}", empleado.toString());
        return "redirect:/"; // Inicio
    }

    @RequestMapping(value = "/informacion", method = RequestMethod.GET)
    public String mostrarInformacion(ModelMap modelo) {
        return "informacion"; //
    }

}
