package ua.hobby.antiquarian.app.domain.entity;

import javax.persistence.*;

@Entity
@DiscriminatorValue("NUMISMATICS_COUNTRY")
public class NumismaticsCountry extends Country {

}
