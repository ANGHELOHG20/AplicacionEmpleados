package pe.edu.utp.empleados.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import pe.edu.utp.empleados.modelo.Empleado;

public interface EmpleadoRepositorio extends JpaRepository<Empleado, Integer> {
}
