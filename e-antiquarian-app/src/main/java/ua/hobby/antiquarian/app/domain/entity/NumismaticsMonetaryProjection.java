package ua.hobby.antiquarian.app.domain.entity;

import java.util.Set;
import java.util.UUID;

public interface NumismaticsMonetaryProjection {

    UUID getUuid();
    Long getStartYear();
    Long getEndYear();
    String getPeriodGroup();
    Set<CollectionItemMaterial> getMaterials();
    Set<CollectionItemDenomination> getDenominations();
}
