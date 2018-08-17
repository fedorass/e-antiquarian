package ua.hobby.antiquarian.app.domain.entity.numismatics;

import ua.hobby.antiquarian.app.domain.entity.CollectionItemDenomination;
import ua.hobby.antiquarian.app.domain.entity.CollectionItemMaterial;

import java.time.LocalDate;
import java.util.UUID;

public interface NumismaticsCoinProjection {

    UUID getUuid();
    LocalDate getIssueDate();
    CollectionItemMaterial getCoinMaterial();
    CollectionItemDenomination getCoinDenomination();

}
