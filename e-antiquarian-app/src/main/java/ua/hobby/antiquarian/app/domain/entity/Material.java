package ua.hobby.antiquarian.app.domain.entity;

import javax.persistence.*;

@Embeddable
public class Material {

    private String composition;
    private String material;

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
