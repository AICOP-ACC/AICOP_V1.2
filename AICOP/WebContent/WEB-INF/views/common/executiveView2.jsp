
<script src="resources/js/custom/aicop_func.js"></script>

<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

<!-- CSS Files -->


<link href="../../assets/css/material-dashboard.min.css?v=2.0.2" rel="stylesheet" />


<div class="main-container container-fluid">

	<!-- top tiles -->
	<div class="row">


		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel tile fixed_height_320">
					<div class="x_title">
						<h2>Notifications</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"
									onclick="replaceBell()"></i></a>
							<li><a class="collapse-link1" onclick="replaceexclamation()"><i
									class="fa fa-exclamation-circle"></i></a></li>
							<li><a class="collapse-link11" onclick="replacesignal()"><i
									class="fa fa-signal"></i></a></li>

						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content" id="x_content1">

						<marquee scrollamount=2 onmouseout="this.start()"
							onmouseover="this.stop()" behavior="scroll" direction="up"
							style="height: 250px;">
							<b>1801040252 - OPOM</b> - Unable to place porting orders - Stuck
							in Order Summary Page <br>
							<br>
							<b>1801040276 - MyOptus</b> - App crashes frequently
						</marquee>

					</div>

				</div>
			</div>

			<div class="col-md-8 col-sm-8 col-xs-12">
				<div class="x_panel tile fixed_height_320 overflow_hidden">
					<div class="x_title">
						<h2>Flowchart</h2>

						<div class="clearfix"></div>
					</div>
					<div class="x_content" id="x_content2">


						<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
						<div>
							<textarea id="code" style="width: 100%; display: none;" rows="11">
st=>start: Start|past:>http://www.google.com
			 orderCapture=>operation: Order Capture:>http://www.google.com
sub1=>subroutine: My Subroutine
orderValidation=>operation: Order Validation
orderSubmission=>operation: Order Submission
op3=>operation: provisioning
PortingOrders=>operation: Porting Orders
NonPortingOrders=>operation: Non Porting Orders 
provisioning=>operation: Provisioning 
billing=>operation: Billing 
orderComp=>operation: Order Completion 
provcond=>condition: Porting?
e=>end: Into admin panel

orderCapture(right)->orderValidation(right)->orderSubmission(right)->provcond(up)
provcond(yes)->PortingOrders->provisioning->billing->orderComp
provcond(no)->NonPortingOrders->provisioning->billing->orderComp


</textarea>
						</div>
						<div>
							<button id="run" type="button"
								style="width: 100%; display: none;">Run</button>
						</div>
						<div id="canvas" style="width: 100%;height:200px;overflow-x:scroll;overflow-y:scroll;"></div>
						<div class="container">
							Trigger the modal with a button
							<link rel="stylesheet" href="resources/css/Treant.css">
    <link rel="stylesheet" href="resources/css/basic-example.css" >
							<div class="chart" id="basic-example"
								style="width: 100%; height: 200px;"></div>
							<script src="resources/js/raphael-min.js"></script>
    <script src="resources/js/Treant.js"></script>
    
    <script src="resources/js/basic-example1.js"></script>
							<script>
        new Treant( chart_config );
    </script>
							<button type="button" class="btn btn-primary btn-block"
								data-toggle="modal" data-target="#myModal" id="createflowchart">Create
								Flow Chart</button>

							Modal
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">

									Modal content
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Flow chart input</h4>
										</div>
										<div class="modal-body">
											<div class="controls" id="profs">
												<form class="input-append">
													<div>
														<input type="text" class="form-control" id="flow"
															placeholder="Enter second flow" style="width: 50%;">
														<button id="b1" class="btn add-more" type="button">+</button>
													</div>
												</form>
											</div>
											<br> <input type="text" class="form-control" id="flow1"
												placeholder="Enter second flow"> <br> <input
												type="text" class="form-control" id="flow2"
												placeholder="Enter third flow"> <br> <input
												type="text" class="form-control" id="flow3"
												placeholder="Enter fourth flow"> <br> <input
												type="text" class="form-control" id="flow4"
												placeholder="Enter fifth flow"> <br>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal" onclick="generateFlowChart()">Generate
												Flow Chart</button>
										</div>
									</div>

								</div>
							</div>

						</div>

					</div>
				</div>
			</div>




		</div>


	</div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">

			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel tile fixed_height_320">
					<div class="x_title">
						<h2>App Versions</h2>

						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<iframe class="chartjs-hidden-iframe"
							style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
						<canvas id="mybarChart" width="384" height="192"
							style="width: 384px; height: 192px;"></canvas>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel tile fixed_height_320 overflow_hidden">
					<div class="x_title">
						<h2>Device Usage</h2>

						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<table class="" style="width: 100%">
							<tbody>
								<tr>
									<th style="width: 37%;">
										<p>Top 5</p>
									</th>
									<th>
										<div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
											<p class="">Device</p>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											<p class="">Progress</p>
										</div>
									</th>
								</tr>
								<tr>
									<td><iframe class="chartjs-hidden-iframe"
											style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
										<canvas class="canvasDoughnut" height="140" width="140"
											style="margin: 15px 10px 10px 0px; width: 140px; height: 140px;"></canvas>
									</td>
									<td>
										<table class="tile_info">
											<tbody>
												<tr>
													<td>
														<p>
															<i class="fa fa-square blue"></i>POPI
														</p>
													</td>
													<td>30%</td>
												</tr>
												<tr>
													<td>
														<p>
															<i class="fa fa-square green"></i>OPOM
														</p>
													</td>
													<td>10%</td>
												</tr>
												<tr>
													<td>
														<p>
															<i class="fa fa-square purple"></i>Helix
														</p>
													</td>
													<td>20%</td>
												</tr>
												<tr>
													<td>
														<p>
															<i class="fa fa-square aero"></i>BCC
														</p>
													</td>
													<td>15%</td>
												</tr>
												<tr>
													<td>
														<p>
															<i class="fa fa-square red"></i>Helix Mobile
														</p>
													</td>
													<td>30%</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel tile fixed_height_320 overflow_hidden">
					<div class="x_title">
						<h2>Device Usage</h2>

						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<table class="" style="width: 100%">
							<tbody>
								<tr>
									<th style="width: 37%;">
										<p>Top 5</p>
									</th>
									<th>
										<div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
											<p class="">Device</p>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
											<p class="">Progress</p>
										</div>
									</th>
								</tr>
								<tr>
									<td><iframe class="chartjs-hidden-iframe"
											style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
										<canvas class="canvasDoughnut" height="140" width="140"
											style="margin: 15px 10px 10px 0px; width: 140px; height: 140px;"></canvas>
									</td>
									<td>
										<table class="tile_info">
											<tbody>
												<tr>
													<td>
														<p>
															<i class="fa fa-square blue"></i>POPI
														</p>
													</td>
													<td>30%</td>
												</tr>
												<tr>
													<td>
														<p>
															<i class="fa fa-square green"></i>OPOM
														</p>
													</td>
													<td>10%</td>
												</tr>
												<tr>
													<td>
														<p>
															<i class="fa fa-square purple"></i>Helix
														</p>
													</td>
													<td>20%</td>
												</tr>
												<tr>
													<td>
														<p>
															<i class="fa fa-square aero"></i>BCC
														</p>
													</td>
													<td>15%</td>
												</tr>
												<tr>
													<td>
														<p>
															<i class="fa fa-square red"></i>Helix Mobile
														</p>
													</td>
													<td>30%</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="col-md-10 ml-auto col-xl-6 mr-auto">
						<p class="category">Tabs with Icons on Card</p>
						
						<div class="card">
							<div class="card-header">
		                  		<ul class="nav nav-tabs justify-content-center" role="tablist">
		                    	<li class="nav-item">
		                      <a class="nav-link active" data-toggle="tab" href="#home" role="tab">
		                        <i class="now-ui-icons objects_umbrella-13"></i> Home
		                      </a>
		                    </li>
		                    <li class="nav-item">
		                      <a class="nav-link" data-toggle="tab" href="#profile" role="tab">
		                        <i class="now-ui-icons shopping_cart-simple"></i> Profile
		                      </a>
		                    </li>
		                    <li class="nav-item">
		                      <a class="nav-link" data-toggle="tab" href="#messages" role="tab">
		                        <i class="now-ui-icons shopping_shop"></i> Messages
		                      </a>
		                    </li>
		                    <li class="nav-item">
		                      <a class="nav-link" data-toggle="tab" href="#settings" role="tab">
		                        <i class="now-ui-icons ui-2_settings-90"></i> Settings
		                      </a>
		                    </li>
		                  </ul>
		                </div>
							
							<div class="card-body">
								Tab panes
								<div class="tab-content text-center">
									<div class="tab-pane active" id="home" role="tabpanel">
										<p>I think thats a responsibility that I have, to push possibilities, to show people,  I think thats a responsibility that I have, to push possibilities, to show people  I think thats a responsibility that I have, to push possibilities, to show people</p>
									</div>
									<div class="tab-pane" id="profile" role="tabpanel">
										<p>There is no responsibility that I have, to push possibilities, to show people,  I think thats a responsibility that I have, to push possibilities, to show people  I think thats a responsibility that I have, to push possibilities, to show people There is no responsibility that I have, to push possibilities, to show people,  I think thats a responsibility that I have, to push possibilities, to show people  I think thats a responsibility that I have, to push possibilities, to show people</p>
									</div>
									<div class="tab-pane" id="messages" role="tabpanel">
										<p>we could find some link that I have, to push possibilities, to show people,  I think thats a responsibility that I have, to push possibilities, to show people  I think thats a responsibility that I have, to push possibilities, to show people</p>
									</div>
									<div class="tab-pane" id="settings" role="tabpanel">
										<p>I think thats a responsibility that I have, to push possibilities, to show people,  I think thats a responsibility that I have, to push possibilities, to show people  I think thats a responsibility that I have, to push possibilities, to show people I think thats a responsibility that I have, to push possibilities, to show people,  I think thats a responsibility that I have, to push possibilities, to show people  I think thats a responsibility that I have, to push possibilities, to show people</p>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
			</div>

	
</div>