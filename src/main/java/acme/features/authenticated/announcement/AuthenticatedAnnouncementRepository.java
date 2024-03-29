
package acme.features.authenticated.announcement;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.announcements.Announcement;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedAnnouncementRepository extends AbstractRepository {

	//2629750000

	@Query("select a from Announcement a where a.id = ?1")
	Announcement findOneById(int id);

	@Query("select a from Announcement a where a.moment > subdate(SYSDATE(), 30) ")
	Collection<Announcement> findMany();

}
