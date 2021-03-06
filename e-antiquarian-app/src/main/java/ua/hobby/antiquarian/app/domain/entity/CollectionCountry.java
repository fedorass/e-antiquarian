package ua.hobby.antiquarian.app.domain.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "collection_country")
@TableGenerator(name = "countryIdGen", table = "sequences",
        pkColumnName = "id", valueColumnName = "value",
        pkColumnValue = "COUNTRY_ID", initialValue = 1000, allocationSize = 10)
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="collection_country_type", discriminatorType= DiscriminatorType.STRING)
public abstract class CollectionCountry {

    private Long id;
    private Long version = 1L;
    private UUID uuid;
    private String isoCode;
    private String userEmail;
    private String defaultName;
    private Set<CollectionItemMaterial> materials = new HashSet<>();

    @Id
    @Column(name = "id", updatable = false)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "countryIdGen")
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

    @Column(unique = true, nullable = false)
    public String getIsoCode() {
        return isoCode;
    }

    public void setIsoCode(String isoCode) {
        this.isoCode = isoCode;
    }

    @Column
    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    @Column(unique = true, nullable = false)
    public String getDefaultName() {
        return defaultName;
    }

    public void setDefaultName(String defaultName) {
        this.defaultName = defaultName;
    }

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "country_materials", joinColumns=@JoinColumn(name="item_id"), inverseJoinColumns=@JoinColumn(name="material_id"))
    public Set<CollectionItemMaterial> getMaterials() {
        return materials;
    }

    public void setMaterials(Set<CollectionItemMaterial> materials) {
        this.materials = materials;
    }

}
