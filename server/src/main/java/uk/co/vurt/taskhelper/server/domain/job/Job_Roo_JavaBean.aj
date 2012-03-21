// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uk.co.vurt.taskhelper.server.domain.job;

import java.util.Date;
import java.util.Set;
import uk.co.vurt.taskhelper.server.domain.job.DataItem;
import uk.co.vurt.taskhelper.server.domain.job.Status;
import uk.co.vurt.taskhelper.server.domain.user.Person;

privileged aspect Job_Roo_JavaBean {
    
    public Person Job.getPerson() {
        return this.person;
    }
    
    public void Job.setPerson(Person person) {
        this.person = person;
    }
    
    public Date Job.getCreated() {
        return this.created;
    }
    
    public void Job.setCreated(Date created) {
        this.created = created;
    }
    
    public Date Job.getDue() {
        return this.due;
    }
    
    public void Job.setDue(Date due) {
        this.due = due;
    }
    
    public Status Job.getStatus() {
        return this.status;
    }
    
    public void Job.setStatus(Status status) {
        this.status = status;
    }
    
    public java.lang.String Job.getGroupname() {
        return this.groupname;
    }
    
    public void Job.setGroupname(java.lang.String groupname) {
        this.groupname = groupname;
    }
    
    public java.lang.String Job.getName() {
        return this.name;
    }
    
    public void Job.setName(java.lang.String name) {
        this.name = name;
    }
    
    public java.lang.String Job.getNotes() {
        return this.notes;
    }
    
    public void Job.setNotes(java.lang.String notes) {
        this.notes = notes;
    }
    
    public Set<DataItem> Job.getDataItems() {
        return this.dataItems;
    }
    
    public void Job.setDataItems(Set<DataItem> dataItems) {
        this.dataItems = dataItems;
    }
    
}
