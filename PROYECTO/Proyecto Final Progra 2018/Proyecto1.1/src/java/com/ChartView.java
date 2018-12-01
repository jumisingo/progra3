/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.Serializable;
import javax.annotation.PostConstruct;
import javax.inject.Named;
import javax.enterprise.context.Dependent;
import org.primefaces.model.chart.PieChartModel;

/**
 *
 * @author rconejo
 */
@Named(value = "chartView")
@Dependent
public class ChartView implements Serializable {
    
    private PieChartModel pieModel1;
    /**
     * Creates a new instance of ChartView
     */

        @PostConstruct
    public void init() {
        createPieModels();
    }

    public PieChartModel getPieModel1() {
        return pieModel1;
    }


    private void createPieModels() {
        createPieModel1();
    }
    
    private void createPieModel1() {
        pieModel1 = new PieChartModel();

        pieModel1.set("Play Station", 540000);
        pieModel1.set("Nintendo", 325000);
        pieModel1.set("ACER", 202000);
        pieModel1.set("AOC", 421000);

        pieModel1.setTitle("TecnoStore");
        pieModel1.setLegendPosition("w");
    }
}
