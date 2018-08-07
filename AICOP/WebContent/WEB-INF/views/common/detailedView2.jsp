<script src="resources/js/custom/aicop-custom.js"></script>
<!-- page content -->
<div class="main-container container-fluid">
	<h2>AICOP: Detailed View</h2>
	<!-- Standard Pre-checks -->

	<div class="collapse-group">
		<!-- <div class="controls pull-right">
    <button class="btn btn-primary open-button" type="button">
      Open all
    </button>
    <button class="btn btn-primary close-button" type="button">
      Close all
    </button>
  </div> -->

		<div class="panel panel-default">
			<div class="panel-heading aicop-panel-heading" role="tab"
				id="headingOne">
				<h4 class="aicop-panel-title">
					<a id="stdPreChecks" role="button" data-toggle="collapse"
						href="#collapseOne" aria-expanded="true"
						aria-controls="collapseOne"
						class="fa fa-plus-circle aicop-collapse font-weight-bold text-white">
						Standard Pre-Checks </a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse" role="tabpanel"
				aria-labelledby="headingOne">
				<div class="panel-body">
					<form>

						<div class="form-group" style="padding-top: 20px">

							<div class="col-md-4">Special event/launches</div>

							<div class="col-md-2">
								<i
									class="fa fa-arrow-circle-o-right circle-icon-g icon-prechecks-neutral"></i>
							</div>
							<div class="col-md-4">Recent Server Restart/Broken Network
							</div>

							<div class="col-md-2">
								<i
									class="fa fa-arrow-circle-o-right circle-icon-g icon-prechecks-neutral"></i>
							</div>

						</div>

						<div class="form-group" style="padding-top: 20px">
							<div class="col-md-4">SLA of the flow</div>

							<div class="col-md-2">
								<i class="fa fa-thumbs-up circle-icon-g icon-prechecks-success"></i>
							</div>
							<div class="col-md-4">Ongoing Bulk submission in OPOM</div>

							<div class="col-md-2">
								<i
									class="fa fa-arrow-circle-o-right circle-icon-g icon-prechecks-neutral"></i>
							</div>

						</div>

						<div class="form-group" style="padding-top: 20px">
							<div class="col-md-4">New/Unexpected Errors</div>

							<div class="col-md-2">
								<i class="fa fa-thumbs-down circle-icon-r icon-prechecks-danger"></i>
							</div>
							<div class="col-md-4">Long running DB queries</div>

							<div class="col-md-2">
								<i class="fa fa-thumbs-down circle-icon-r icon-prechecks-danger"></i>
							</div>

						</div>


					</form>
				</div>
			</div>
		</div>


	</div>

	<div class="collapse-group">
		<!-- <div class="controls pull-right">
    <button class="btn btn-primary open-button" type="button">
      Open all
    </button>
    <button class="btn btn-primary close-button" type="button">
      Close all
    </button>
  </div> -->

		<div class="panel panel-default">
			<div class="panel-heading aicop-panel-heading" role="tab"
				id="headingOne">
				<h4 class="aicop-panel-title">
					<a id="autoConferencing" role="button" data-toggle="collapse"
						href="#autoConferencingContent" aria-expanded="true"
						aria-controls="autoConferencingContent"
						class="fa fa-plus-circle aicop-collapse"> Auto Conferencing </a>
				</h4>
			</div>
			<div id="autoConferencingContent" class="panel-collapse collapse"
				role="tabpanel" aria-labelledby="headingOne">
				<div class="panel-body">
					<div class="text-primary">Major Incident : 1801040252</div>


					<i id="confInit"
						class="fa fa-phone-square icon-green icon-large mouse-point icon-embossed"></i>
					<i id="confTerminate"
						class="fa fa-phone-square icon-red icon-large mouse-point icon-embossed"></i>
					<i id="shareBridge"
						class="fa fa-share-alt-square icon-blue icon-large mouse-point icon-embossed"></i>


					<!-- <i id="notesIcon" class="fa fa-comment-o icon-blue icon-large icon-embossed mouse-point pull-right"></i> -->
					<button type="button" data-toggle="modal" class="pull-right"
						data-target=".notes-modal-sm">
						<i id="notesIcon"
							class="fa fa-comment-o icon-blue icon-large icon-embossed mouse-point pull-right"></i>
					</button>
					<div class="modal fade notes-modal-sm" tabindex="-1" role="dialog"
						aria-hidden="true" style="display: none;">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">

								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
									<h4 class="modal-title" id="myModalLabel2">Notes</h4>
								</div>
								<div class="modal-body">
									<!-- <h4>Text in a modal</h4>
                          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                          <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                         -->
									<textarea rows="6" cols="200"></textarea>
									<div>&nbsp;</div>
									<textarea rows="2" cols="200"></textarea>


								</div>
								<div class="modal-footer">
									<!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
									<button type="button" class="btn btn-primary">Save
										changes</button>
								</div>

							</div>
						</div>
					</div>

					<table id="memDetTable" class="table table-striped">
						<thead>
							<tr height="30px">
								<th>Application</th>
								<th>Contact</th>
								<th>Designation</th>
								<th>Contact Type</th>
								<th>Number</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
							<tr id="+919790978398_StakeRow">
								<td><b>CC</b></td>
								<td>Srinivasan Sadagopan</td>
								<td>Duty Manager</td>
								<td>Primary</td>
								<td id="contactNum">+919790978398</td>
								<td id="removeStakeholder"></td>
							</tr>
							<tr id="+919600914814_StakeRow">
								<td><b>POPI</b></td>
								<td>Vinoth G</td>
								<td>Team Lead</td>
								<td>Primary</td>
								<td id="contactNum">+919600914814</td>
								<td id="removeStakeholder"></td>
							</tr>
							<tr id="+919176635540_StakeRow">
								<td><b>MTS</b></td>
								<td>Partha</td>
								<td>SME</td>
								<td>Primary</td>
								<td id="contactNum">+919176635540</td>
								<td id="removeStakeholder"></td>
							</tr>
							<tr id="+919962306163_StakeRow" height="30px">
								<td><b>OPOM</b></td>
								<td>Sampath</td>
								<td>Support Analyst</td>
								<td>Primary</td>
								<td id="contactNum">+919962306163</td>
								<td id="removeStakeholder"></td>
							</tr>
							<tr id="6596367950_StakeRow" height="30px">
								<td><b>NA</b></td>
								<td>Guest</td>
								<td>NA</td>
								<td>NA</td>
								<td id="contactNum">+6596367950</td>
								<td id="+6596367950_removeStakeholder"><center>
										<a title="Remove Actions"
											style="padding: 5px; min-width: 60px; height: 48px;"
											id="+6596367950_removeStakeholder" class=""><i
											class="fa fa-minus-circle"
											style="font-size: 1.73em; color: red"></i></a>
									</center></td>
							</tr>
						</tbody>
					</table>

				</div>
			</div>
		</div>


	</div>




	<!-- Impacts -->
	<div class="collapse-group">
		<div class="panel panel-default">
			<div class="panel-heading aicop-panel-heading" role="tab"
				id="headingOne">
				<h4 class="aicop-panel-title">
					<a id="impactsCollapse" role="button" data-toggle="collapse"
						href="#impactDiv" aria-expanded="true" aria-controls="impactDiv"
						class="fa fa-plus-circle aicop-collapse font-weight-bold text-white">
						Impacts </a>
				</h4>
			</div>
			<div id="impactDiv" class="panel-collapse collapse" role="tabpanel"
				aria-labelledby="headingOne">
				<div class="panel-body">
					<form>

						<div class="form-group aicop-padding-20">

							<label class="col-md-3">Business Impact</label>
							<div class="col-md-7 aicop-padding-bottom-20">
								<textarea rows="3" cols="200"></textarea>
							</div>

						</div>
						<div>&nbsp;</div>
						<div class="form-group aicop-padding-20">
							<label class="col-md-3">Impacted Application</label>
							<div class="col-md-7 col-sm-7 col-xs-12">
								<input id="tags_1" type="text" class="tags form-control"
									value="BUOS" data-tagsinput-init="true" style="display: none;">
								<div id="tags_1_tagsinput" class="tagsinput"
									style="width: auto; min-height: auto; height: auto;">
									<!-- Dynamic content -->
								</div>
								<div id="suggestions-container"
									style="position: relative; float: left; width: 250px; margin: 10px;"></div>
							</div>
						</div>
						<div>&nbsp;</div>
						<div class="form-group">

							<div class="col-md-9 col-sm-9 col-xs-9 pull-right">
								<select id="impactedAppl"
									style="position: relative; float: left; width: 300px; margin: 10px;"
									name="appl" multiple="multiple">
									<option>OPOM</option>
									<option selected="selected">MTS</option>
									<option>CMBS</option>
									<option selected="selected">POPI</option>
									<option>CNUM</option>
									<option>NRS</option>
								</select>
							</div>
						</div>






					</form>
				</div>
			</div>
		</div>


	</div>

	<!--Sintiya Changes Start-->
	<!-- AICOP - Notes History and Triage Actions - Start -->
	<div class="container">

		<ul class="nav nav-tabs" role="tablist">
			<li class="active"><a href="#noteshistab" role="tab"
				data-toggle="tab">Notes History</a></li>
			<li><a href="#triageacttab" role="tab" data-toggle="tab">Triage
					Actions</a></li>
		</ul>

		<div class="tab-content">
			<div class="tab-pane active" id="noteshistab">

				<table id="notesHistoryTable" class="table table-striped">
					<thead>
						<tr height="30px">
							<th>Notes</th>
							<th>Date</th>
							<th>TimeStamp</th>

						</tr>
					</thead>
					<tbody>
						<tr id="">
							<td>Analysis point out issue in weblogic</td>
							<td>commandcenter</td>
							<td>02/08/18 09:43:22</td>
						</tr>
						<tr id="">
							<td>Weblogic went down due to the stuck threads</td>
							<td>commandcenter</td>
							<td>02/08/18 06:27:32</td>
						</tr>
						<tr id="">
							<td>OPOM team to verify weblogic status</td>
							<td>commandcenter</td>
							<td>01/08/18 19:12:21</td>
						</tr>
						<tr id="">
							<td>Issue was caused due to weblgic issue in MTS</td>
							<td>commandcenter</td>
							<td>01/08/18 16:20:13</td>
						</tr>
						<tr id="">
							<td>Long Running to be checked in MTS</td>
							<td>commandcenter</td>
							<td>01/08/18 10:23:41</td>
						</tr>
					</tbody>
				</table>





			</div>
			<div class="tab-pane" id="triageacttab">
				<div class="collapse-group">
					<!-- <div class="controls pull-right">
    <button class="btn btn-primary open-button" type="button">
      Open all
    </button>
    <button class="btn btn-primary close-button" type="button">
      Close all
    </button>
  </div> -->

					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a id="suggActId" role="button" data-toggle="collapse"
									href="#collapseSuggestedActions" aria-expanded="true"
									aria-controls="collapseOne"
									class="fa fa-plus-circle aicop-collapse"> Suggested Actions
								</a>
							</h4>
						</div>
						<div id="collapseSuggestedActions" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">


								<div class="container">
									<table class="table table-striped">
										<thead>
											<tr>
												<th class="text-center">Action No</th>
												<th>Description</th>
												<th>Owner</th>
												<th class="text-center">No of Occurences</th>
												<th class="text-center">Success Percentage</th>
												<th class="text-center">Elapsed Duration(min)</th>
												<th class="text-center">Add Action</th>
											</tr>
										</thead>
										<tbody class="success">
											<tr>
												<td class="text-center">1</td>
												<td>Verify long running queries in opomprddb001</td>
												<td>OPOM</td>
												<td class="text-center">2</td>
												<td class="text-center">100%</td>
												<td class="text-center">30</td>
												<td class="text-center"><a data-toggle="tooltip"
													title="Add Manual Action"><span
														class="fa fa-plus-circle fa-lg"></span></a></td>
											</tr>
											<tr>
												<td class="text-center">2</td>
												<td>Application restart</td>
												<td>OPOM</td>
												<td class="text-center">4</td>
												<td class="text-center">100%</td>
												<td class="text-center">10</td>
												<td class="text-center"><a data-toggle="tooltip"
													title="Add Manual Action"><span
														class="fa fa-plus-circle fa-lg"></span></a></td>
											</tr>
											<tr>
												<td class="text-center">3</td>
												<td>Verify for Struck Threads</td>
												<td>OPOM</td>
												<td class="text-center">5</td>
												<td class="text-center">75%</td>
												<td class="text-center">120</td>
												<td class="text-center"><a data-toggle="tooltip"
													title="Add Manual Action"><span
														class="fa fa-plus-circle fa-lg"></span></a></td>
											</tr>
											<tr>
												<td class="text-center">4</td>
												<td>Check for active connections in application server</td>
												<td>OPOM</td>
												<td class="text-center">5</td>
												<td class="text-center">50%</td>
												<td class="text-center">120</td>
												<!--<td class="text-center"><span class="fa fa-plus-circle fa-lg"></span></td> -->
												<td class="text-center"><a data-toggle="tooltip"
													title="Add Manual Action"><span
														class="fa fa-plus-circle fa-lg"></span></a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

					<div class="panel panel-default">

						<div class="panel-heading" role="tab" id="headingOne">
							<div class="row">
								<div class="col-xs-10">
									<div class="panel-title">
										<!-- <a id="currActId" role="button" data-toggle="collapse" href="#collapseCurrentActions" aria-expanded="true" aria-controls="collapseOne" class="fa fa-plus-circle aicop-collapse"> -->
										Current Actions
										<!-- </a> -->
									</div>
								</div>
								<div class="col-xs-1">
									<a class="pull-right addRow">
										<button class="btn col-xs-12">
											<i class="fa fa-plus-square-o fa-lg col-xs-10"></i> <span
												class="col-xs-2">Add</span>
										</button>
									</a>
								</div>
								<div class="col-xs-1">
									<a class="pull-right">
										<button class="btn col-xs-12 saveRow">
											<i class="fa fa-save fa-lg col-xs-10"></i> <span
												class="col-xs-2">Save</span>
										</button>
									</a>
								</div>

							</div>
						</div>

						<!-- <div id="collapseCurrentActions" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne"> -->
						<div class="panel-body">


							<div class="container table-responsive">
								<table class="table  table-striped currActionTable"
									data-order='[[3,"asc"]]'>
									<thead>
										<tr>
											<th class="text-center">Action No</th>
											<th>Description</th>
											<th>Owner</th>
											<th>Dependency</th>
											<th class="text-center">Expected Duration(min)</th>
											<th>Status</th>
											<th>Start Time</th>
											<th>End Time</th>
											<th class="text-center">Actual Duration(min)</th>
											<th>Outcome</th>
											<th class="text-center">Delete</th>
										</tr>
									</thead>
									<tbody class="success">
										<tr>
											<td class="text-center">3</td>
											<td>Verify long running queries in opomprddb001</td>
											<td>OPOM</td>
											<td></td>
											<td class="text-center">30</td>
											<td>
												<form>
													<select>
														<option>Not Started</option>
														<option>In Progress</option>
														<option selected>Completed</option>
													</select>
												</form>
											</td>
											<td>7/11/2018 15:31</td>
											<td>7/11/2018 15:32</td>
											<td class="text-center">1</td>
											<td>
												<form>
													<select>
														<option>--Please Select--</option>
														<option selected>Success</option>
														<option>Failure</option>
														<option>NA</option>
													</select>
												</form>
											</td>
											<td class="text-center"><a data-toggle="tooltip"
												title="Remove Actions"><span
													class="fa fa-minus-circle fa-lg  text-danger"></span></a></td>
										</tr>
										<tr>
											<td class="text-center">2</td>
											<td>Null Pointer Exception to verify</td>
											<td>POPI</td>
											<td></td>
											<td class="text-center">30</td>
											<td>
												<form>
													<select>
														<option>Not Started</option>
														<option>In Progress</option>
														<option selected>Completed</option>
													</select>
												</form>
											</td>
											<td>6/22/2018 15:19</td>
											<td>6/22/2018 15:19</td>
											<td class="text-center">0</td>
											<td>
												<form>
													<select>
														<option>--Please Select--</option>
														<option selected>Success</option>
														<option>Failure</option>
														<option>NA</option>
													</select>
												</form>
											</td>
											<td class="text-center"><a data-toggle="tooltip"
												title="Remove Actions"><span
													class="fa fa-minus-circle fa-lg  text-danger"></span></a></td>
										</tr>
										<tr>
											<td class="text-center">1</td>
											<td>Verify Long running query</td>
											<td>MTS</td>
											<td></td>
											<td class="text-center">30</td>
											<td>
												<form>
													<select>
														<option>Not Started</option>
														<option>In Progress</option>
														<option selected>Completed</option>
													</select>
												</form>
											</td>
											<td>6/22/2018 14:31</td>
											<td>6/22/2018 14:31</td>
											<td class="text-center">0</td>
											<td>
												<form>
													<select>
														<option>--Please Select--</option>
														<option selected>Success</option>
														<option>Failure</option>
														<option>NA</option>
													</select>
												</form>
											</td>
											<td class="text-center"><a data-toggle="tooltip"
												title="Remove Actions"><span
													class="fa fa-minus-circle fa-lg  text-danger"></span></a></td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
</div>
<!-- AICOP - Notes History and Triage Actions - End -->
<!-- Sintiya Changes End -->







