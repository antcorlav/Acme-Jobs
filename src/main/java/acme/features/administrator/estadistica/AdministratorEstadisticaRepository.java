
package acme.features.administrator.estadistica;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.framework.datatypes.Money;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AdministratorEstadisticaRepository extends AbstractRepository {

	//2629750000

	@Query("select count(*) from Announcement")
	Double findAnnoun();

	@Query("select count(*) from CompanyRecord")
	Double findCompanyRecord();

	@Query("select count(*) from InvestorRecord")
	Double findInvestorRecord();

	@Query("select o.rewardMin from Offer o")
	List<Money> minOffer();

	@Query("select o.rewardMax from Offer o")
	List<Money> maxOffer();

	@Query("select s.reward from Request s")
	List<Money> findRequest();
}
