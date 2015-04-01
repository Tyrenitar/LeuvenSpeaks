/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ui.controller;

import domain.Geolocation;
import domain.Location;
import domain.LocationGuide;
import domain.LocationType;
import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Joris
 */
@Controller
public class LocationOverviewController {
    
    private LocationGuide service;
    
    public LocationOverviewController() {
        this.service = new LocationGuide("Memory");
    }
    
    @RequestMapping("/locationOverview")
    protected ModelAndView getLocations() {
        ArrayList<Location> locations = new ArrayList<Location>();
        locations.add(new Location(1,"KHL",new Geolocation(51,51),LocationType.University));
        locations.add(new Location(2,"KUL",new Geolocation(51,51),LocationType.University));
        
        return new ModelAndView("locationOverview", "locations", locations);
    }
    
}
