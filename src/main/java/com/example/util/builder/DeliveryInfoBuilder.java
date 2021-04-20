package com.example.util.builder;

import com.example.util.DeliveryType;
import com.example.util.Location;
import com.example.util.Week;

import java.util.List;

public class DeliveryInfoBuilder {

    private static final String SUFFIX = "수령 가능한 상품입니다.";

    private StringBuilder deliveryInfo = new StringBuilder();

    private List<Location> locations;
    private List<DeliveryType> deliveryTypes;
    private List<Week> weeks;

    public DeliveryInfoBuilder addLocation(List<Location> location) {
        this.locations = location;
        return this;
    }

    public DeliveryInfoBuilder addDeliveryType(List<DeliveryType> deliveryTypes) {
        this.deliveryTypes = deliveryTypes;
        return this;
    }

    public DeliveryInfoBuilder addWeeks(List<Week> weeks) {
        this.weeks = weeks;
        return this;
    }

    public String build() {
        setLocations();
        setDeliveryTypes();
        setWeeks();
        return deliveryInfo.toString();
    }

    private void setLocations() {
        locations.forEach(location -> deliveryInfo.append(location).append(" "));
    }

    private void setDeliveryTypes() {
        for(int i = 0; i < deliveryTypes.size(); i++) {
            deliveryInfo
                    .append(deliveryTypes.get(i))
                    .append(deliveryTypes.get(i).getDescription());
            if(i != deliveryTypes.size()-1) {
                deliveryInfo.append(" / ");
            }
        }
    }

    private void setWeeks() {
        deliveryInfo.append("[");
        for(int i = 0; i < weeks.size(); i++) {
            deliveryInfo.append(weeks.get(i));
            if(i != weeks.size() - 1) {
                deliveryInfo.append(" * ");
            }
        }
        deliveryInfo.append("]");
    }

}
