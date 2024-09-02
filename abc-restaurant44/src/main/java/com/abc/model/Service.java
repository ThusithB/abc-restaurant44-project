package com.abc.model;

public class Service {
    private int serviceId;
    private String serviceName;
    private String image;
    private String description;

    public Service() {}

    public Service(int serviceId, String serviceName, String image, String description) {
        this.serviceId = serviceId;
        this.serviceName = serviceName;
        this.image = image;
        this.description = description;
    }

    // Getters and Setters
    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
