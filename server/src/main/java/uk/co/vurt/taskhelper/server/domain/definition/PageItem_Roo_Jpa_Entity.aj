// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uk.co.vurt.taskhelper.server.domain.definition;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect PageItem_Roo_Jpa_Entity {
    
    declare @type: PageItem: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private java.lang.Long PageItem.id;
    
    @Version
    @Column(name = "version")
    private java.lang.Integer PageItem.version;
    
    public java.lang.Long PageItem.getId() {
        return this.id;
    }
    
    public void PageItem.setId(java.lang.Long id) {
        this.id = id;
    }
    
    public java.lang.Integer PageItem.getVersion() {
        return this.version;
    }
    
    public void PageItem.setVersion(java.lang.Integer version) {
        this.version = version;
    }
    
}
