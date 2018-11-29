package com.finnetwork.views;

import java.util.ArrayList;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.finnetwork.controllers.APP_controller;
import com.finnetwork.controllers.SEC_controller;
import com.finnetwork.controllers.bubble_graph_controller;
import com.finnetwork.controllers.prospectus_controller;
import com.finnetwork.controllers.topic_mdl_controller;
import com.finnetwork.models.topic_mdl_issuers;

import antlr.collections.List;

import com.finnetwork.models.bubble_graph;
import com.finnetwork.models.prospectus;
@Path("/topic")
public class topic_mdl {
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/issuers")
	public Response getBaseNetwork() {
		topic_mdl_controller to_m_c = new topic_mdl_controller(); 
		to_m_c.getCompanyData();
		ObjectNode json_company_data = to_m_c.getCompanyData();
		Response response = Response.ok(json_company_data.toString(), MediaType.APPLICATION_JSON).build();	
		System.out.println(json_company_data.toString());
		return response;
	}
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/issuers_FI_FC")
	public Response Count_Fi_FC() {
		topic_mdl_controller to_m_c = new topic_mdl_controller(); 
		
		ObjectNode json_company_data = to_m_c.get_count_Fi();
		Response response = Response.ok(json_company_data.toString(), MediaType.APPLICATION_JSON).build();	
		System.out.println(json_company_data.toString());
		return response;
	}
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/{id}")
	public Response getBaseNetworkYear(@PathParam("id") String id) {
		
		topic_mdl_controller to_m_c = new topic_mdl_controller();
		JsonNode json_base_network_yearly = to_m_c.getIssuersDataForgivenData(id);
		
		Response response = Response.ok(json_base_network_yearly, MediaType.APPLICATION_JSON).build();		
		return response;
	}
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/bubble")
	public Response bubble_graph() {
		bubble_graph_controller bubble_graph = new bubble_graph_controller(); 
		bubble_graph bubble_model=new bubble_graph();
		
		//bubble_model
		ArrayList bubble_graph_list =(ArrayList) bubble_graph.get_bubble_given_id(2);
		System.out.println("------->>>>>issuers");
		Response response= Response.ok(bubble_graph_list,MediaType.APPLICATION_JSON).build();
		return response;
	}
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/prospectus")
	//import com.finnetwork.models.prospectus;
	public Response getProspectus() {
		prospectus_controller p_c = new prospectus_controller(); 
		prospectus prospectus=new prospectus();
		ArrayList prospectus_list=(ArrayList)p_c.get_prospectus();
    
		System.out.println("------->>>>>prospectus");
		Response response= Response.ok(prospectus_list,MediaType.APPLICATION_JSON).build();
		return response;
	}
}
