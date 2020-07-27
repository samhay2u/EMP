import React, { Component } from 'react';
import CanvasJSReact from "../lib/canvasjs.react";

var CanvasJSChart = CanvasJSReact.CanvasJSChart;
var dataPoints = [];

class Chart extends Component {

    componentDidMount() {
        var webServiceURL = window.webServiceURL;
        var pieChart = this.pieChart;

        fetch(webServiceURL !== undefined? webServiceURL: "http://localhost:8080/EMP/rest/top5?userName=Mcsammer&password=tset")
            .then(function (response) {
                return response.json();
            }).then(function (data) {
                for (var i = 0; i < data.length; i++) {
                    dataPoints.push({
                     y: data[i].salary,
                     dob: data[i].dob,
                     emp_No: data[i].emp_No,
                     gender: data[i].gender,
                     hire_Date: data[i].hire_Date,
                     salary: data[i].salary,
                     fullname: data[i].fullname,
                        click: function (e) {
                            alert(
                                "Employee number: .... " + e.dataPoint.emp_No + "\n" + 
                                "Name: ............... " + e.dataPoint.fullname + "\n" + 
                                "Salary: ............. " + e.dataPoint.salary + "\n" 
                            );
                        }
                    });
                }

                pieChart.render();
            });        
    }

    render() {
        const pieChart = {
            exportEnabled: true,
            animatedEnabled: true,
            backgroundColor: "#5E4485",
            theme: "dark2",
            title: {
                text: "Top 5 salaries by employees"
            },
            data: [
                {
                    type: "pie",
                    startAngle: 75,
                    toolTipContent: "<b>{fullname}</b>: {y}",
                    showLegend: "true",
                    legendText: "{fullname}",
                    indexLabelFontSize: 16,
                    indexLabel: "{fullname} - {y}",
                    dataPoints: dataPoints
                }
            ]
        };

        return (
            <div id="pieChart">
                <CanvasJSChart options={pieChart}  onRef={ref => (this.pieChart = ref)} />
            </div>
        );
    }
}

export default Chart;
