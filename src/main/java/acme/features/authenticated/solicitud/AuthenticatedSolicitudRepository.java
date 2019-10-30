
package acme.features.authenticated.solicitud;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.solicitudes.Solicitud;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedSolicitudRepository extends AbstractRepository {

	@Query("select s from Solicitud s where s.deadline > CURRENT_TIMESTAMP")
	Collection<Solicitud> findMany();

	@Query("select s from Solicitud s where s.id = ?1")
	Solicitud findOneById(int id);

}
