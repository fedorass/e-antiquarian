package ua.hobby.antiquarian.app.domain.entity;

import java.util.Collection;
import java.util.UUID;

public interface NoCountryProjection {

    Long getId();
    Long getStartYear();
    Long getEndYear();
    String getPeriodGroup();
    UUID getUuid();
    Collection<Material> getMaterials();
    Collection<Denomination> getDenominations();
}
