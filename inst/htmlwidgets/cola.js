HTMLWidgets.widget({

  name: 'cola',

  type: 'output',

  initialize: function(el, width, height) {
    var d3cola = cola.d3adaptor()
        .linkDistance(60)
        .avoidOverlaps(true)
        .size([width, height]);
        
    var outer = d3.select(el.id).append("svg")
        .attr("width", width)
        .attr("height", height)
        .attr("pointer-events", "all");

    outer.append('rect')
        .attr('class', 'background')
        .attr('width', "100%")
        .attr('height', "100%")
        .call(d3.behavior.zoom().on("zoom", redraw));
        
    function redraw() {
        vis.attr("transform", "translate(" + d3.event.translate + ")" + " scale(" + d3.event.scale + ")");
    }

    var vis = outer
        .append('g')
        .attr('transform', 'translate(80,80) scale(0.7)');
    
    return {
      vis : vis
    }

  },

  renderValue: function(el, x, instance) {
    console.log(el);
    console.log(x);
    console.log(instance);
  },

  resize: function(el, width, height, instance) {

  }

});
