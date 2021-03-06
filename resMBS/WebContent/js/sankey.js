//d3.select("svg").remove();
	
	
function call(year) {
	console.log("test....");
	
	d3.select("#sankey_svg").selectAll("svg").remove();
    var graphDiv = document.getElementById("sankey_svg");

    var svg = d3.select(graphDiv).append("svg")
                            .attr('width', '100%')
                            .attr('height', '100%');

    var width = graphDiv.clientWidth;
    var height = graphDiv.clientHeight;
    
    console.log("h :"+height+" w : "+width);
	
//	var newSvg = document.getElementById('svg');
//	newSvg.outerHTML += '<svg   width="1000" height="900"></svg>';
//
//	var svg = d3.select("svg"), width = +svg.attr("width"), height = +svg
//			.attr("height");

	var formatNumber = d3.format(",.0f"), format = function(d) {
		return formatNumber(d) + " TWh";
	}, color = d3.scaleOrdinal(d3.schemeCategory10);

	var sankey = d3.sankey().nodeWidth(15).nodePadding(10).extent(
			[ [ 1, 1 ], [ width - 1, height - 5 ] ]);

	var link = svg.append("g").attr("class", "links").attr("fill", "none")
			.attr("stroke", "#000").attr("stroke-opacity", 0.2).selectAll(
					"path");

	var node = svg.append("g").attr("class", "nodes").attr("font-family",
			"sans-serif").attr("font-size", 10).selectAll("g");

	var graph;
	
	if (year != '2002') {
		$('#2002').removeClass('active');
	}

	
	d3.json("rest/topic/sankey/" + year, function(error, energy) {

		if (error)
			throw error;
		// graph=null;
		graph = sankey(energy);

		link = link.data(energy.links).enter().append("path").attr("d",
				d3.sankeyLinkHorizontal()).attr("stroke-width", function(d) {

			return Math.max(1, d.width);
		});

		link.append("title").text(
				function(d) {
					return d.source.name + " → " + d.target.name + "\n"
							+ format(d.value);
				});

		node = node.data(energy.nodes).enter().append("g").call(
				d3.drag().subject(function(d) {
					return d
				}).on('start', function() {
					this.parentNode.appendChild(this);
				}).on('drag', dragmove));

		node.append("rect").attr("x", function(d) {
			return d.x0;
		}).attr("y", function(d) {
			return d.y0;
		}).attr("height", function(d) {
			return d.y1 - d.y0;
		}).attr("width", function(d) {
			return d.x1 - d.x0;
		}).attr("fill", function(d) {
			return color(d.name.replace(/ .*/, ""));
		}).attr("stroke", "#000");

		node.append("text").attr("x", function(d) {
			return d.x0 - 6;
		}).attr("y", function(d) {
			return (d.y1 + d.y0) / 2;
		}).attr("dy", "0.35em").attr("text-anchor", "end").text(function(d) {
			return d.name;
		}).filter(function(d) {
			return d.x0 < width / 2;
		}).attr("x", function(d) {
			return d.x1 + 6;
		}).attr("text-anchor", "start");

		node.append("title").text(function(d) {
			return d.name + "\n" + format(d.value);
		});
	});
	
	// the function for moving the nodes
	function dragmove(d) {

		var rectY = d3.select(this).select("rect").attr("y");

		d.y0 = d.y0 + d3.event.dy;

		var yTranslate = d.y0 - rectY;

		d3.select(this).attr("transform", "translate(0" + "," + (yTranslate) + ")");

		sankey.update(graph);
		link.attr("d", d3.sankeyLinkHorizontal());
	}
}

