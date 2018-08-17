package ua.hobby.antiquarian.app.domain.entity.numismatics;

import ua.hobby.antiquarian.app.domain.entity.CollectionItemDenomination;
import ua.hobby.antiquarian.app.domain.entity.CollectionItemMaterial;

import java.util.Set;
import java.util.UUID;

public interface NumismaticsMonetaryProjection {

    UUID getUuid();
    Long getStartYear();
    Long getEndYear();
    String getCurrency();
    String getPeriodGroup();
    Set<CollectionItemMaterial> getMaterials();
    Set<CollectionItemDenomination> getDenominations();
}
