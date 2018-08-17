package ua.hobby.antiquarian.app.domain.entity;

import javax.persistence.*;

@Entity
@TableGenerator(name = "collectionItemDenominationIdGen", table = "sequences",
        pkColumnName = "id", valueColumnName = "value",
        pkColumnValue = "COLLECTION_ITEM_DENOMINATION_ID", initialValue = 1000, allocationSize = 10)
public class CollectionItemDenomination {

    private Long id;
    private Long version = 1L;

    private String denotation;
    private String denomination;
    private Double rate;

    @Id
    @Column(name = "id", updatable = false)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "collectionItemDenominationIdGen")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Version
    public Long getVersion() {
        return version;
    }

    public void setVersion(Long version) {
        this.version = version;
    }

    @Column(unique = true, nullable = false)
    public String getDenotation() {
        return denotation;
    }

    public void setDenotation(String denotation) {
        this.denotation = denotation;
    }

    @Column(nullable = false)
    public String getDenomination() {
        return denomination;
    }

    public void setDenomination(String denomination) {
        this.denomination = denomination;
    }

    @Column
    public Double getRate() {
        return rate;
    }

    public void setRate(Double rate) {
        this.rate = rate;
    }

}
