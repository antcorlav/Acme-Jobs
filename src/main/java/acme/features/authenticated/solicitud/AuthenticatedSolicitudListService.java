
package acme.features.authenticated.solicitud;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.solicitudes.Solicitud;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Authenticated;
import acme.framework.services.AbstractListService;

@Service
public class AuthenticatedSolicitudListService implements AbstractListService<Authenticated, Solicitud> {

	@Autowired
	AuthenticatedSolicitudRepository repository;


	@Override
	public boolean authorise(final Request<Solicitud> request) {
		assert request != null;
		return true;
	}

	@Override
	public void unbind(final Request<Solicitud> request, final Solicitud entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;
		request.unbind(entity, model, "title", "text", "moment", "reward", "deadline", "ticker");
	}

	@Override
	public Collection<Solicitud> findMany(final Request<Solicitud> request) {
		assert request != null;
		Collection<Solicitud> result;
		result = this.repository.findMany();

		return result;
	}

}
