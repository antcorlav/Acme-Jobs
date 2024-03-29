
package acme.features.anonymous.companyrecord;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.companyrecords.CompanyRecord;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Anonymous;
import acme.framework.services.AbstractListService;

@Service
public class AnonymousCompanyRecordListTopsService implements AbstractListService<Anonymous, CompanyRecord> {

	@Autowired
	AnonymousCompanyRecordRepository repository;


	@Override
	public boolean authorise(final Request<CompanyRecord> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<CompanyRecord> request, final CompanyRecord entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "name", "sector", "ceo", "description", "webSite", "phone", "email", "indication", "star");
	}

	@Override
	public Collection<CompanyRecord> findMany(final Request<CompanyRecord> request) {
		assert request != null;

		Collection<CompanyRecord> result = this.repository.findManyStars();

		for (CompanyRecord cr : result) {
			String name = cr.getName();
			if (cr.getIndication()) {
				cr.setName(name + ", Inc");
			} else {
				cr.setName(name + ", LLC");
			}
		}

		return result;
	}

}
