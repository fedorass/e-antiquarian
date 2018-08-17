package ua.hobby.antiquarian.app.domain.entity.numismatics;

import ua.hobby.antiquarian.app.domain.entity.CollectionItemDenomination;
import ua.hobby.antiquarian.app.domain.entity.CollectionItemMaterial;
import ua.hobby.antiquarian.app.domain.entity.CollectionCountry;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

@Entity
@TableGenerator(name = "numismaticsMonetaryPeriodIdGen", table = "sequences",
        pkColumnName = "ID", valueColumnName = "VALUE",
        pkColumnValue = "NUMISMATICS_MONETARY_PERIOD_ID", initialValue = 1000, allocationSize = 10)
public class NumismaticsMonetaryPeriod {

    private Long id;
    private Long version = 1L;
    private UUID uuid;
    private Long startYear;
    private Long endYear;
    private String periodGroup;
    private String currency;
    private Set<CollectionItemMaterial> materials = new HashSet<>();
    private Set<CollectionItemDenomination> denominations = new HashSet<>();
    private CollectionCountry country;

    @Id
    @Column(name = "id", updatable = false)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "numismaticsMonetaryPeriodIdGen")
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
    public UUID getUuid() {
        return uuid;
    }

    public void setUuid(UUID uuid) {
        this.uuid = uuid;
    }

    @Column(nullable = false)
    public Long getStartYear() {
        return startYear;
    }

    public void setStartYear(Long startYear) {
        this.startYear = startYear;
    }

    @Column
    public Long getEndYear() {
        return endYear;
    }

    public void setEndYear(Long endYear) {
        this.endYear = endYear;
    }

    @Column
    public String getPeriodGroup() {
        return periodGroup;
    }

    public void setPeriodGroup(String periodGroup) {
        this.periodGroup = periodGroup;
    }

    @Column
    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String iso) {
        this.currency = iso;
    }

    @OneToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "numismatics_period_materials", joinColumns=@JoinColumn(name="item_id"), inverseJoinColumns=@JoinColumn(name="material_id"))
    public Set<CollectionItemMaterial> getMaterials() {
        return materials;
    }

    public void setMaterials(Set<CollectionItemMaterial> materials) {
        this.materials = materials;
    }

    @ManyToOne
    @JoinColumn(name="country_id")
    public CollectionCountry getCountry() {
        return country;
    }

    public void setCountry(CollectionCountry country) {
        this.country = country;
    }

    @OneToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "numismatics_period_denominations", joinColumns=@JoinColumn(name="item_id"), inverseJoinColumns=@JoinColumn(name="denomination_id"))
    public Set<CollectionItemDenomination> getDenominations() {
        return denominations;
    }

    public void setDenominations(Set<CollectionItemDenomination> denominations) {
        this.denominations = denominations;
    }
}
