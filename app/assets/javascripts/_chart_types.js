//XC race
Chart.types.Line.extend({
    // Passing in a name registers this chart in the Chart namespace in the same way
    name: "CrossCountry",
    initialize: function(data){
        Chart.types.Line.prototype.initialize.apply(this, arguments);
    }
});
