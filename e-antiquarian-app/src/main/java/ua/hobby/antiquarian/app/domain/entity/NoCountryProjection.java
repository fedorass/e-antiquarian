package ua.hobby.antiquarian.app.domain.entity;

import java.util.Set;
import java.util.UUID;

public interface NoCountryProjection {

    Long getId();
    Long getStartYear();
    Long getEndYear();
    String getPeriodGroup();
    UUID getUuid();
    Set<CollectionItemMaterial> getMaterials();
    Set<CollectionItemDenomination> getDenominations();
}
