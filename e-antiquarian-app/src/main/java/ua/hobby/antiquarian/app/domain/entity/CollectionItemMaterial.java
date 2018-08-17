package ua.hobby.antiquarian.app.domain.entity;

import javax.persistence.*;

@Entity
@TableGenerator(name = "collectionItemMaterialIdGen", table = "sequences",
        pkColumnName = "ID", valueColumnName = "VALUE",
        pkColumnValue = "COLLECTION_ITEM_MATERIAL_ID", initialValue = 1000, allocationSize = 10)
public class CollectionItemMaterial {

    private Long id;
    private Long version = 1L;
    private String composition;
    private String material;

    @Id
    @Column(name = "id", updatable = false)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "collectionItemMaterialIdGen")
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

    @Column(nullable = false)
    public String getComposition() {
        return composition;
    }

    public void setComposition(String composition) {
        this.composition = composition;
    }

    @Column(nullable = false)
    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }
}
