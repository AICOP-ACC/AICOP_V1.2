
<!-- <script src="resources/js/custom/aicop_func.js"></script>
 -->
<!-- <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 -->
<!-- CSS Files -->
 <script src=https://cdnjs.cloudflare.com/ajax/libs/flowchart/1.11.3/flowchart.js></script>
 <script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
 









<!-- Navbar -->

 
<!-- <div class="content">
  <div class="container-fluid">
   
  <div class="row">-->
    <div class="col-md-5">
      <div class="card ">
        <div class="card-header card-header-icon card-header-info ">
        <div class="card-icon">
              <i class="material-icons">notifications_active</i>
            </div>
          <h4 class="card-title">Service Impacts -
            <small class="description">Notifications</small>
          </h4>
        </div>
        <div class="card-body ">
<!--           <ul class="nav nav-pills nav-pills-warning" role="tablist">
 -->          <ul class="nav nav-pills_custom nav-pills-primary nav-pills-just-icons" role="tablist">
            <li class="nav-item_custom">
              <a class="nav-link_custom active" data-toggle="tab" href="#openMajors" role="tablist" data-toggle="tooltip" title="Open Majors">
                <i class="material-icons">notification_important</i>
              </a>
            </li>
            <li class="nav-item_custom">
              <a class="nav-link_custom" data-toggle="tab" href="#otherAlerts" role="tablist" data-toggle="tooltip" title="Other Alerts" onclick="replaceexclamation()">
                <i class="material-icons">error</i>
              </a>
            </li>
            <li class="nav-item_custom">
              <a class="nav-link_custom" data-toggle="tab" href="#incidentTrends" role="tablist" data-toggle="tooltip" title="Incident Trend" onclick="replacesignal()">
                <i class="material-icons">poll</i>
              </a>
            </li>
          </ul>
          <div class="tab-content tab-space">
            <div class="tab-pane active" id="openMajors">
              <marquee scrollamount=2 onmouseout="this.start()"
							onmouseover="this.stop()" behavior="scroll" direction="up"
							style="height: 250px;">
							<b>1801040252 - OPOM</b> - Unable to place porting orders - Stuck
							in Order Summary Page <br>
							<br>
							<b>1801040276 - MyOptus</b> - App crashes frequently
						</marquee>

            </div>
            <div class="tab-pane" id="otherAlerts">
              <br>Other Alerts will be displayed
            </div>
            <div class="tab-pane" id="incidentTrends">
              Incident Trends will be displayed
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-7">
      <div class="card ">
        <div class="card-header card-header-icon card-header-info">
        <div class="card-icon">
              <i class="material-icons">timeline</i>
            </div>
          <h4 class="card-title">Business Flow -
            <small class="description">Flow Chart</small>
          </h4>
        </div>
        <div class="card-body ">
          <div class="row">
            <div class="col-md-12">
              <div class="tab-content" id="businessFlow">
                						<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
                						
                							<div class="chart" id="basic-example" style="width:100%;height:357px;"></div>
									    <script>
									        new Treant( chart_config );
									    </script>
						<div>
							<textarea id="code" style="width: 100%;display:none;" rows="11">
								st=>start: Start|past:>javascript:test()
											 orderCapture=>operation: Order Capture:>javascript:test()
								sub1=>subroutine: My Subroutine
								orderValidation=>operation: Order Validation
								orderSubmission=>operation: Order Submission
								op3=>operation: provisioning
								PortingOrders=>operation: Porting Orders:>javascript:loadNewFlowChart()
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
							<textarea id="code1" style="width: 100%;display:none;" rows="11">
								PortINInitiatedinCRM=>operation: Port IN Initiated in CRM
								CRMisNotified=>operation: CRM is Notified
								IntimateNo.OfInventoryofAssignedCarrier=>operation: Intimate No.Of Inventory of Assigned Carrier
								ActivationSystemCompletestheActivation=>operation: Activation System Completes the Activation
								MiddlewarereceivetheRequest=>operation: Middleware receive the Request
								NotifytheRejectionMessagetoCRM=>operation: Notify the Rejection Message to CRM
								TriggertheCutoverNotification=>operation: Trigger the Cutover Notification
								InitiateActivation=>operation: Initiate Activation
								ReceivestheRequest=>operation: Receives the Request
								ReceivestheResponseforNotifyRequest=>operation: Receives the Response for Notify Request
								SendstheDisconnectRequest=>operation: Sends the Disconnect Request
								BroadcasttheActivationCompletion=>operation: Broadcast the Activation Completion
								NotifytheLosingCarrier=>operation: Notify the Losing Carrier
								DisconnectionrequesttoLosingCarrier=>operation: Disconnection request to Losing Carrier
								Losingcarrierisnotified=>operation: Losing carrier is notified
								ReceivestheResponseforDisconnectRequest=>operation: Receives the Response for Disconnect Request
								NotifiedtheRejectionMessagetoCRM=>operation: Notified the Rejection Message to CRM
								Confirmed?=>condition: Confirmed?
								DisconnectCompleted?=>condition: Disconnect Completed?
								e=>end: Into admin panel
								PortINInitiatedinCRM(right)->MiddlewarereceivetheRequest(right)->ReceivestheRequest(right)->NotifytheLosingCarrier->ReceivestheResponseforNotifyRequest->Confirmed?->ReceivestheResponseforDisconnectRequest->DisconnectCompleted?
								Confirmed?(yes)->TriggertheCutoverNotification->SendstheDisconnectRequest->DisconnectionrequesttoLosingCarrier->ReceivestheResponseforDisconnectRequest
								Confirmed?(no)->NotifytheRejectionMessagetoCRM->CRMisNotified
								DisconnectCompleted?(yes)->InitiateActivation->ActivationSystemCompletestheActivation->BroadcasttheActivationCompletion->Losingcarrierisnotified
								DisconnectCompleted?(no)->NotifiedtheRejectionMessagetoCRM->CRMisNotified
							</textarea>

						</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    
    <!-- row 2 start -->
            <div class="row">
                  <div class="col-md-4">
                    <div class="card card-chart" data-count="4">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <div class="ct-chart" id="queueMonitoringOneSLA">
                        <!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-bar" style="width: 100%; height: 100%;"><g class="ct-grids"><line y1="120" y2="120" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="235" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><line x1="48.125" x2="48.125" y1="120" y2="54.959999999999994" class="ct-bar" ct:value="542" opacity="1"></line><line x1="64.375" x2="64.375" y1="120" y2="66.84" class="ct-bar" ct:value="443" opacity="1"></line><line x1="80.625" x2="80.625" y1="120" y2="81.6" class="ct-bar" ct:value="320" opacity="1"></line><line x1="96.875" x2="96.875" y1="120" y2="26.400000000000006" class="ct-bar" ct:value="780" opacity="1"></line><line x1="113.125" x2="113.125" y1="120" y2="53.64" class="ct-bar" ct:value="553" opacity="1"></line><line x1="129.375" x2="129.375" y1="120" y2="65.64" class="ct-bar" ct:value="453" opacity="1"></line><line x1="145.625" x2="145.625" y1="120" y2="80.88" class="ct-bar" ct:value="326" opacity="1"></line><line x1="161.875" x2="161.875" y1="120" y2="67.92" class="ct-bar" ct:value="434" opacity="1"></line><line x1="178.125" x2="178.125" y1="120" y2="51.84" class="ct-bar" ct:value="568" opacity="1"></line><line x1="194.375" x2="194.375" y1="120" y2="46.8" class="ct-bar" ct:value="610" opacity="1"></line><line x1="210.625" x2="210.625" y1="120" y2="29.28" class="ct-bar" ct:value="756" opacity="1"></line><line x1="226.875" x2="226.875" y1="120" y2="12.599999999999994" class="ct-bar" ct:value="895" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="56.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">F</span></foreignObject><foreignObject style="overflow: visible;" x="72.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="88.75" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="105" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="121.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="137.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="153.75" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="170" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" x="186.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">O</span></foreignObject><foreignObject style="overflow: visible;" x="202.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">N</span></foreignObject><foreignObject style="overflow: visible;" x="218.75" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">D</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg> -->
                              <script>loadSLAChart()</script>
               			 
                        </div>
                      </div>
                      <div class="card-body">
                      
                        <h4 class="card-title">Order Management</h4>
                        <p class="card-category">Order inflows Vs Order completed</p>
                        
                       
                      </div>
                      <div class="card-footer">
                        <div class="stats col-md-12">
                        
                           <div class="radio col-md-6">
						    <label ><input type="radio" name="optradio" checked onclick="loadSLAChart()">SLA</label>
					   		</div>
					    <div class="radio col-md-6">
					      	<label ><input type="radio" name="optradio" onclick="loadOrderInPort()" >Flow</label>
					    </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card card-chart">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <div class="ct-chart" id="dailySalesChart">
                        <!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line x1="40" x2="40" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="68.57142857142857" x2="68.57142857142857" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="97.14285714285714" x2="97.14285714285714" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="125.71428571428572" x2="125.71428571428572" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="154.28571428571428" x2="154.28571428571428" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="182.85714285714286" x2="182.85714285714286" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="211.42857142857144" x2="211.42857142857144" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line y1="120" y2="120" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="240" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M 40 91.2 C 68.571 79.2 68.571 79.2 68.571 79.2 C 97.143 103.2 97.143 103.2 97.143 103.2 C 125.714 79.2 125.714 79.2 125.714 79.2 C 154.286 64.8 154.286 64.8 154.286 64.8 C 182.857 76.8 182.857 76.8 182.857 76.8 C 211.429 28.8 211.429 28.8 211.429 28.8" class="ct-line"></path><line x1="40" y1="91.2" x2="40.01" y2="91.2" class="ct-point" ct:value="12" opacity="1"></line><line x1="68.57142857142857" y1="79.2" x2="68.58142857142857" y2="79.2" class="ct-point" ct:value="17" opacity="1"></line><line x1="97.14285714285714" y1="103.2" x2="97.15285714285714" y2="103.2" class="ct-point" ct:value="7" opacity="1"></line><line x1="125.71428571428572" y1="79.2" x2="125.72428571428573" y2="79.2" class="ct-point" ct:value="17" opacity="1"></line><line x1="154.28571428571428" y1="64.8" x2="154.29571428571427" y2="64.8" class="ct-point" ct:value="23" opacity="1"></line><line x1="182.85714285714286" y1="76.8" x2="182.86714285714285" y2="76.8" class="ct-point" ct:value="18" opacity="1"></line><line x1="211.42857142857144" y1="28.799999999999997" x2="211.43857142857144" y2="28.799999999999997" class="ct-point" ct:value="38" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="28.571428571428573" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="68.57142857142857" y="125" width="28.571428571428573" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">T</span></foreignObject><foreignObject style="overflow: visible;" x="97.14285714285714" y="125" width="28.571428571428577" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">W</span></foreignObject><foreignObject style="overflow: visible;" x="125.71428571428572" y="125" width="28.57142857142857" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">T</span></foreignObject><foreignObject style="overflow: visible;" x="154.28571428571428" y="125" width="28.57142857142857" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">F</span></foreignObject><foreignObject style="overflow: visible;" x="182.85714285714286" y="125" width="28.571428571428584" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" x="211.42857142857144" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">10</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">20</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">30</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">40</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">50</span></foreignObject></g></svg> -->
                          <div  id="queueMonitoringTwo" style="height: 250px; width: 100%;"></div>
                			<script>loadBilling()</script>
                        </div>
                       
                      </div>
                      <div class="card-body">
                        <div class="card-actions">
                          <button type="button" class="btn btn-danger btn-link fix-broken-card">
                            <i class="material-icons">build</i> Fix Header!
                          </button>
                          <button type="button" class="btn btn-info btn-link" rel="tooltip" data-placement="bottom" title="" data-original-title="Refresh">
                            <i class="material-icons">refresh</i>
                          </button>
                          <button type="button" class="btn btn-default btn-link" rel="tooltip" data-placement="bottom" title="" data-original-title="Change Date">
                            <i class="material-icons">edit</i>
                          </button>
                        </div>
                        <h4 class="card-title">Order Provisioning</h4>
                        <p class="card-category">
                          <span class="text-success"><i class="fa fa-long-arrow-up"></i> </span> Order processed</p>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons">access_time</i> updated 4 minutes ago
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card card-chart" data-count="1">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <div class="ct-chart" id="completedTasksChart">
                        	<!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line x1="40" x2="40" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="65" x2="65" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="90" x2="90" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="115" x2="115" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="140" x2="140" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="165" x2="165" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="190" x2="190" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="215" x2="215" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line y1="120" y2="120" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="240" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M 40 92.4 C 65 30 65 30 65 30 C 90 66 90 66 90 66 C 115 84 115 84 115 84 C 140 86.4 140 86.4 140 86.4 C 165 91.2 165 91.2 165 91.2 C 190 96 190 96 190 96 C 215 97.2 215 97.2 215 97.2" class="ct-line"></path><line x1="40" y1="92.4" x2="40.01" y2="92.4" class="ct-point" ct:value="230" opacity="1"></line><line x1="65" y1="30" x2="65.01" y2="30" class="ct-point" ct:value="750" opacity="1"></line><line x1="90" y1="66" x2="90.01" y2="66" class="ct-point" ct:value="450" opacity="1"></line><line x1="115" y1="84" x2="115.01" y2="84" class="ct-point" ct:value="300" opacity="1"></line><line x1="140" y1="86.4" x2="140.01" y2="86.4" class="ct-point" ct:value="280" opacity="1"></line><line x1="165" y1="91.2" x2="165.01" y2="91.2" class="ct-point" ct:value="240" opacity="1"></line><line x1="190" y1="96" x2="190.01" y2="96" class="ct-point" ct:value="200" opacity="1"></line><line x1="215" y1="97.2" x2="215.01" y2="97.2" class="ct-point" ct:value="190" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="65" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">3p</span></foreignObject><foreignObject style="overflow: visible;" x="90" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">6p</span></foreignObject><foreignObject style="overflow: visible;" x="115" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">9p</span></foreignObject><foreignObject style="overflow: visible;" x="140" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="165" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">3a</span></foreignObject><foreignObject style="overflow: visible;" x="190" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">6a</span></foreignObject><foreignObject style="overflow: visible;" x="215" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">9a</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg> -->
                        	<div  id="queueMonitoringThree" style="height: 250px; width: 100%;"></div>
                   			 <script>loadOrder()</script> 
                        </div>
                      </div>
                      <div class="card-body">
                        <div class="card-actions">
                          <button type="button" class="btn btn-danger btn-link fix-broken-card">
                            <i class="material-icons">build</i> Fix Header!
                          </button>
                          <button type="button" class="btn btn-info btn-link" rel="tooltip" data-placement="bottom" title="" data-original-title="Refresh">
                            <i class="material-icons">refresh</i>
                          </button>
                          <button type="button" class="btn btn-default btn-link" rel="tooltip" data-placement="bottom" title="" data-original-title="Change Date">
                            <i class="material-icons">edit</i>
                          </button>
                        </div>
                        <h4 class="card-title">Billing Management</h4>
                        <p class="card-category">Billing inflows</p>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons">access_time</i> updated 2 hours ago
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- row 2 end -->
                
    
    <!-- row 3 start-->
            <div class="row">
                  <div class="col-md-4">
                    <div class="card card-chart" data-count="4">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <div class="ct-chart" id="chartContainerHelix" style="height: 250px; width: 100%;">
                        <!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-bar" style="width: 100%; height: 100%;"><g class="ct-grids"><line y1="120" y2="120" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="235" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><line x1="48.125" x2="48.125" y1="120" y2="54.959999999999994" class="ct-bar" ct:value="542" opacity="1"></line><line x1="64.375" x2="64.375" y1="120" y2="66.84" class="ct-bar" ct:value="443" opacity="1"></line><line x1="80.625" x2="80.625" y1="120" y2="81.6" class="ct-bar" ct:value="320" opacity="1"></line><line x1="96.875" x2="96.875" y1="120" y2="26.400000000000006" class="ct-bar" ct:value="780" opacity="1"></line><line x1="113.125" x2="113.125" y1="120" y2="53.64" class="ct-bar" ct:value="553" opacity="1"></line><line x1="129.375" x2="129.375" y1="120" y2="65.64" class="ct-bar" ct:value="453" opacity="1"></line><line x1="145.625" x2="145.625" y1="120" y2="80.88" class="ct-bar" ct:value="326" opacity="1"></line><line x1="161.875" x2="161.875" y1="120" y2="67.92" class="ct-bar" ct:value="434" opacity="1"></line><line x1="178.125" x2="178.125" y1="120" y2="51.84" class="ct-bar" ct:value="568" opacity="1"></line><line x1="194.375" x2="194.375" y1="120" y2="46.8" class="ct-bar" ct:value="610" opacity="1"></line><line x1="210.625" x2="210.625" y1="120" y2="29.28" class="ct-bar" ct:value="756" opacity="1"></line><line x1="226.875" x2="226.875" y1="120" y2="12.599999999999994" class="ct-bar" ct:value="895" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="56.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">F</span></foreignObject><foreignObject style="overflow: visible;" x="72.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="88.75" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="105" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="121.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="137.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="153.75" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="170" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" x="186.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">O</span></foreignObject><foreignObject style="overflow: visible;" x="202.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">N</span></foreignObject><foreignObject style="overflow: visible;" x="218.75" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">D</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg> -->
                              <script>loadHelixQueue()</script>
               			 	
                        </div>
                      </div>
                      <div class="card-body">
                      
                        <h4 class="card-title">Helix Queue</h4>
                        <p class="card-category">Order Fallouts</p>
                        
                       
                      </div>
                      <div class="card-footer">
                        <div class="stats col-md-12">
                        
                           
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card card-chart">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <div class="ct-chart" id="chartContainerTMT" style="height: 250px; width: 100%;">
                        <!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line x1="40" x2="40" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="68.57142857142857" x2="68.57142857142857" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="97.14285714285714" x2="97.14285714285714" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="125.71428571428572" x2="125.71428571428572" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="154.28571428571428" x2="154.28571428571428" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="182.85714285714286" x2="182.85714285714286" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="211.42857142857144" x2="211.42857142857144" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line y1="120" y2="120" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="240" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M 40 91.2 C 68.571 79.2 68.571 79.2 68.571 79.2 C 97.143 103.2 97.143 103.2 97.143 103.2 C 125.714 79.2 125.714 79.2 125.714 79.2 C 154.286 64.8 154.286 64.8 154.286 64.8 C 182.857 76.8 182.857 76.8 182.857 76.8 C 211.429 28.8 211.429 28.8 211.429 28.8" class="ct-line"></path><line x1="40" y1="91.2" x2="40.01" y2="91.2" class="ct-point" ct:value="12" opacity="1"></line><line x1="68.57142857142857" y1="79.2" x2="68.58142857142857" y2="79.2" class="ct-point" ct:value="17" opacity="1"></line><line x1="97.14285714285714" y1="103.2" x2="97.15285714285714" y2="103.2" class="ct-point" ct:value="7" opacity="1"></line><line x1="125.71428571428572" y1="79.2" x2="125.72428571428573" y2="79.2" class="ct-point" ct:value="17" opacity="1"></line><line x1="154.28571428571428" y1="64.8" x2="154.29571428571427" y2="64.8" class="ct-point" ct:value="23" opacity="1"></line><line x1="182.85714285714286" y1="76.8" x2="182.86714285714285" y2="76.8" class="ct-point" ct:value="18" opacity="1"></line><line x1="211.42857142857144" y1="28.799999999999997" x2="211.43857142857144" y2="28.799999999999997" class="ct-point" ct:value="38" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="28.571428571428573" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="68.57142857142857" y="125" width="28.571428571428573" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">T</span></foreignObject><foreignObject style="overflow: visible;" x="97.14285714285714" y="125" width="28.571428571428577" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">W</span></foreignObject><foreignObject style="overflow: visible;" x="125.71428571428572" y="125" width="28.57142857142857" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">T</span></foreignObject><foreignObject style="overflow: visible;" x="154.28571428571428" y="125" width="28.57142857142857" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">F</span></foreignObject><foreignObject style="overflow: visible;" x="182.85714285714286" y="125" width="28.571428571428584" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" x="211.42857142857144" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">10</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">20</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">30</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">40</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">50</span></foreignObject></g></svg> -->
                     <script>loadTMTQueue()</script> 
                			
                        </div>
                       
                      </div>
                      <div class="card-body">
                        <div class="card-actions">
                          <button type="button" class="btn btn-danger btn-link fix-broken-card">
                            <i class="material-icons">build</i> Fix Header!
                          </button>
                          <button type="button" class="btn btn-info btn-link" rel="tooltip" data-placement="bottom" title="" data-original-title="Refresh">
                            <i class="material-icons">refresh</i>
                          </button>
                          <button type="button" class="btn btn-default btn-link" rel="tooltip" data-placement="bottom" title="" data-original-title="Change Date">
                            <i class="material-icons">edit</i>
                          </button>
                        </div>
                        <h4 class="card-title">TMT Queues</h4>
                        <p class="card-category">
                          <span class="text-danger"><i class="fa fa-long-arrow-down"></i> </span> Order Fallouts</p>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                           <div class="iradio_flat-green checked hover" style="position: relative;">
		                <p>
		                
		                <input type="radio" class="flat" name="MobileTypeTmt" id="allTmt" value="all" checked="" required onclick="showTMTQueue(this.id)" /> All
                       
                        <input type="radio" class="flat" name="MobileTypeTmt" id="postpaidTmt" value="postpaid" required  onclick="showTMTQueue(this.id)" /> Postpaid
                        <input type="radio" class="flat" name="MobileTypeTmt" id="prepaidTmt" value="prepaid" onclick="showTMTQueue(this.id)"  /> Prepaid
                      </p>
                      </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card card-chart" data-count="1">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <div class="ct-chart" id="chartContainerMTS" style="height: 250px; width: 100%;">
                        	<!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line x1="40" x2="40" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="65" x2="65" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="90" x2="90" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="115" x2="115" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="140" x2="140" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="165" x2="165" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="190" x2="190" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="215" x2="215" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line y1="120" y2="120" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="240" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M 40 92.4 C 65 30 65 30 65 30 C 90 66 90 66 90 66 C 115 84 115 84 115 84 C 140 86.4 140 86.4 140 86.4 C 165 91.2 165 91.2 165 91.2 C 190 96 190 96 190 96 C 215 97.2 215 97.2 215 97.2" class="ct-line"></path><line x1="40" y1="92.4" x2="40.01" y2="92.4" class="ct-point" ct:value="230" opacity="1"></line><line x1="65" y1="30" x2="65.01" y2="30" class="ct-point" ct:value="750" opacity="1"></line><line x1="90" y1="66" x2="90.01" y2="66" class="ct-point" ct:value="450" opacity="1"></line><line x1="115" y1="84" x2="115.01" y2="84" class="ct-point" ct:value="300" opacity="1"></line><line x1="140" y1="86.4" x2="140.01" y2="86.4" class="ct-point" ct:value="280" opacity="1"></line><line x1="165" y1="91.2" x2="165.01" y2="91.2" class="ct-point" ct:value="240" opacity="1"></line><line x1="190" y1="96" x2="190.01" y2="96" class="ct-point" ct:value="200" opacity="1"></line><line x1="215" y1="97.2" x2="215.01" y2="97.2" class="ct-point" ct:value="190" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="65" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">3p</span></foreignObject><foreignObject style="overflow: visible;" x="90" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">6p</span></foreignObject><foreignObject style="overflow: visible;" x="115" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">9p</span></foreignObject><foreignObject style="overflow: visible;" x="140" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="165" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">3a</span></foreignObject><foreignObject style="overflow: visible;" x="190" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">6a</span></foreignObject><foreignObject style="overflow: visible;" x="215" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">9a</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg> -->
                   			 <script>loadMTSQueue()</script> 
                        </div>
                      </div>
                      <div class="card-body">
                        <div class="card-actions">
                          <button type="button" class="btn btn-danger btn-link fix-broken-card">
                            <i class="material-icons">build</i> Fix Header!
                          </button>
                          <button type="button" class="btn btn-info btn-link" rel="tooltip" data-placement="bottom" title="" data-original-title="Refresh">
                            <i class="material-icons">refresh</i>
                          </button>
                          <button type="button" class="btn btn-default btn-link" rel="tooltip" data-placement="bottom" title="" data-original-title="Change Date">
                            <i class="material-icons">edit</i>
                          </button>
                        </div>
                        <h4 class="card-title">MTS Queue</h4>
                        <p class="card-category">Order Fallouts</p>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
	                           <div class="iradio_flat-green checked hover" style="position: relative;">
	                		<p>
	                			
	                        <input type="radio" class="flat" name="MobileTypeMts" id="allMts" value="all" checked="" required onclick="showMTSQueue(this.id)" /> All
	                       
	                        <input type="radio" class="flat" name="MobileTypeMts" id="postpaidMts" value="postpaid"  required onclick="showMTSQueue(this.id)"/> Postpaid
	                        <input type="radio" class="flat" name="MobileTypeMts" id="prepaidMts" value="prepaid" onclick="showMTSQueue(this.id)"/>Prepaid
	                      </p>
                      </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- row 3 end -->
    
    
                
                <div class="row">
                  <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                      <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                          <i class="material-icons">weekend</i>
                        </div>
                        <p class="card-category">Disk Space Utilization</p>
                        <h3 class="card-title">75%</h3>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons text-danger">warning</i>
                          <a href="#pablo">Get More Space...</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                      <div class="card-header card-header-rose card-header-icon">
                        <div class="card-icon">
                          <i class="material-icons">equalizer</i>
                        </div>
                        <p class="card-category">Last week order inflow</p>
                        <h3 class="card-title">6,345</h3>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons">local_offer</i> Tracked from Order provisioning system
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                      <div class="card-header card-header-success card-header-icon">
                        <div class="card-icon">
                          <i class="material-icons">store</i>
                        </div>
                        <p class="card-category">No of Invoices Generated</p>
                        <h3 class="card-title">80,003</h3>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons">date_range</i> Last 24 Hours
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                      <div class="card-header card-header-info card-header-icon">
                        <div class="card-icon">
                          <i class="fa fa-twitter"></i>
                        </div>
                        <p class="card-category">Last week Order activation</p>
                        <h3 class="card-title">5,000</h3>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons">update</i> Just Updated
                        </div>
                      </div>
                    </div>
                  </div>
<!--                             </div>
                
  </div>
            </div>
 -->
