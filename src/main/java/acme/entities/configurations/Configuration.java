
package acme.entities.configurations;

import java.util.Collection;
import java.util.HashSet;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Configuration extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@ElementCollection(fetch = FetchType.EAGER)
	private Collection<String>	spamWords			= new HashSet<String>();

	@DecimalMax(value = "100.0")
	@DecimalMin(value = "1.0")
	private Double				spamThreshold;

}
