package ua.hobby.antiquarian.app.domain.entity.numismatics;

import ua.hobby.antiquarian.app.domain.entity.CollectionCountry;

import javax.persistence.*;

@Entity
@DiscriminatorValue("NUMISMATICS_COUNTRY")
public class NumismaticsCountry extends CollectionCountry {

}
