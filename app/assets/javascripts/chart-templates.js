
function emptyArray(size){return new Array(size).join("a").split("a");}

function addChart(data1,data2,canvas){
  var ctx = canvas.getContext("2d");
  var data = {
    labels: emptyArray(data1.length),
    datasets: [
  {
    label: "data1.name",
    fillColor: "rgba(220,220,220,0.5)",
    strokeColor: "rgba(220,220,220,0.8)",
    highlightFill: "rgba(220,220,220,0.75)",
    highlightStroke: "rgba(220,220,220,1)",
    data: data1
  }
  ]
};
if(typeof data2 != 'undefined'){
  data.datasets.push(
  {
    label: "data2.name",
    fillColor: "rgba(151,187,205,0.5)",
    strokeColor: "rgba(151,187,205,0.8)",
    highlightFill: "rgba(151,187,205,0.75)",
    highlightStroke: "rgba(151,187,205,1)",
    data: JSON.parse(data2.value)
  }
);
}
var options = {};
var myBarChart = new Chart(ctx).Bar(data, options);
return myBarChart;
}


function setupCanvas(canvas) {
  var ctx, newWidth;
  console.log(canvas);
  canvas = $(canvas);
  console.log(canvas);
  newWidth = canvas.parent().width()-30;
  canvas.prop({
    width: newWidth,
    height: canvas.parent().height()+40
  });
  ctx = canvas.get(0).getContext("2d");
  return new Chart(ctx).Line({
    labels: emptyArray(4),
    datasets: [
  {
    label: "data1.name",
    fillColor: "rgba(220,220,220,0.5)",
    strokeColor: "rgba(220,220,220,0.8)",
    highlightFill: "rgba(220,220,220,0.75)",
    highlightStroke: "rgba(220,220,220,1)",
    data: [1,2,5,2]
  }
  ]
});
};
$(document).ready(function(){
(function(canvas) {
  setupCanvas(canvas);
  return $(window).resize(function() {
    return setupCanvas(canvas);
  });
})("#chart");
})


// $(document).ready(function(){
//   for(var i = 0; i < $('canvas').length; i++){
//     var canvas = $('canvas').eq(i);
//     var chartObject = addChart(JSON.parse(canvas[0].attributes.data1.value),
//     canvas[0].attributes.data2
//     ,$('canvas').get(i));
//
//   }
// })
