package pe.edu.utp.empleados.servicio;

import pe.edu.utp.empleados.modelo.Empleado;

import java.util.List;

public interface IEmpladoServicio {

    public List<Empleado> listarEmpleados();

    public Empleado buscarEmpleadoPorId(Integer id);

    public void guardarEmpleado(Empleado empleado);

    public void eliminarEmpleado(Empleado empleado);
}
