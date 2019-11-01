
package acme.entities.challenges;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotBlank;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Challenge extends DomainEntity {

	public static final long	serialVersionUID	= 1L;

	@NotBlank
	private String				title;

	@NotBlank
	private String				description;

	@NotBlank
	private String				goldG;

	@NotBlank
	private String				silverG;

	@NotBlank
	private String				bronzeG;

	@NotBlank
	private String				goldR;

	@NotBlank
	private String				silverR;

	@NotBlank
	private String				bronzeR;

	@Temporal(TemporalType.TIMESTAMP)
	@Future
	private Date				moment;
}
