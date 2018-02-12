<div id="sidebar" class="sidebar-fixed">
			<div id="sidebar-content">
				<form class="sidebar-search">
					<!-- <div class="input-box">
						<button type="submit" class="submit">
							<i class="icon-search"></i>
						</button>
						<span> <input type="text" placeholder="Search...">
						</span>
					</div> -->
				</form>
				<div class="sidebar-search-results">
					<i class="icon-remove close"></i>
					<div class="title">Documents</div>
					<ul class="notifications">
						<li><a href="javascript:void(0);">
								<div class="col-left">
									<span class="label label-info"><i class="icon-file-text"></i></span>
								</div>
								<div class="col-right with-margin">
									<span class="message"><strong>John Doe</strong> received
										$1.527,32</span> <span class="time">finances.xls</span>
								</div>
						</a></li>
						<li><a href="javascript:void(0);">
								<div class="col-left">
									<span class="label label-success"><i
										class="icon-file-text"></i></span>
								</div>
								<div class="col-right with-margin">
									<span class="message">My name is <strong>John
											Doe</strong> ...
									</span> <span class="time">briefing.docx</span>
								</div>
						</a></li>
					</ul>
					<div class="title">Persons</div>
					<ul class="notifications">
						<li><a href="javascript:void(0);">
								<div class="col-left">
									<span class="label label-danger"><i class="icon-female"></i></span>
								</div>
								<div class="col-right with-margin">
									<span class="message">Jane <strong>Doe</strong></span> <span
										class="time">21 years old</span>
								</div>
						</a></li>
					</ul>
				</div>
				<ul id="nav">
					<li class="current"><a href="index.jsp"> <i
							class="icon-dashboard"></i> Dashboard
					</a></li>
						
						<li class=""><a href="javascript:void(0);"> <i
							class="icon-edit"></i> Manage Area
					</a>
						<ul class="sub-menu">
							<li class="current"><a href="addArea.jsp"> <i
									class="icon-angle-right"></i> Add Area
							</a></li>
							<li><a href="<%=request.getContextPath()%>/AreaController?flag=searchArea"> <i
									class="icon-angle-right"></i> Search Area
							</a></li>
							
						</ul></li>
						
						<li class=""><a href="javascript:void(0);"> <i
							class="icon-edit"></i> Manage Police Station
					</a>
						<ul class="sub-menu">
							<li class="current"><a href="<%=request.getContextPath()%>/PoliceStationController?flag=loadArea"> <i
									class="icon-angle-right"></i> Add Police Station
							</a></li>
							<li><a href="<%=request.getContextPath()%>/PoliceStationController?flag=searchPoliceStation"> <i
									class="icon-angle-right"></i> Search Police Station
							</a></li>
																	
						</ul></li>
						
						<li class=""><a href="javascript:void(0);"> <i
							class="icon-edit"></i> Manage Location
					</a>
						<ul class="sub-menu">
							<li class="current"><a href="addLocation.jsp"> <i
									class="icon-angle-right"></i> Add Location
							</a></li>
							<li><a href="<%=request.getContextPath()%>/LocationController?flag=searchLocation"> <i
									class="icon-angle-right"></i> Search Location
							</a></li>
							<li><a href="<%=request.getContextPath()%>/StaffViewLocationController?flag=searchStaffViewLocation">  
							<i class="icon-angle-right"></i> View Location
							</a></li>
																	
						</ul></li>
						
						<li class=""><a href="javascript:void(0);"> <i
							class="icon-edit"></i> Assign Location
					</a>
						<ul class="sub-menu">
							<li class="current"><a href="<%=request.getContextPath()%>/AssignLocationController?flag=loadAssignLocation"><i
									class="icon-angle-right"></i> Add Assign Location
							</a></li>
							<li><a href="<%=request.getContextPath()%>/AssignLocationController?flag=searchAssignLocation"> <i
									class="icon-angle-right"></i> Search Assign Location
							</a></li>
							</ul></li>
							
							<li class=""><a href="javascript:void(0);"> <i
							class="icon-edit"></i> Manage Post
					</a>
						<ul class="sub-menu">
							<li class="current"><a href="addPost.jsp"> <i
									class="icon-angle-right"></i> Add Post
							</a></li>
							<li><a href="<%=request.getContextPath()%>/PostController?flag=searchPost"> <i
									class="icon-angle-right"></i> Search Post
							</a></li>
							</ul></li>
							
				<li class=""><a href="javascript:void(0);"> <i
							class="icon-edit"></i> Manage Police Staff
					</a>
						<ul class="sub-menu">
							<li class="current"><a href="<%=request.getContextPath()%>/PoliceStaffController?flag=loadPoliceStaff"><i
									class="icon-angle-right"></i> Add Police Staff
							</a></li>
							<li><a href="<%=request.getContextPath()%>/PoliceStaffController?flag=searchPoliceStaff"><i
									class="icon-angle-right"></i> Search Police Staff
							</a></li>
							</ul></li>
							
							<li class=""><a href="javascript:void(0);"> <i
							class="icon-edit"></i>Manage Complaint
					</a>
						<ul class="sub-menu">
							
							<li><a href="<%=request.getContextPath()%>/StaffComplaintController?flag=searchStaffComplaint"> <i
									class="icon-angle-right"></i> View Staff Complaint
							</a></li>
							<%-- <li><a href="<%=request.getContextPath()%>/ComplaintController?flag=searchComplaint"> <i
									class="icon-angle-right"></i> View User Complaint
							</a></li> --%>
							<li><a href="<%=request.getContextPath()%>/StaffComplaintController?flag=sentStaffComplaint"> <i
									class="icon-angle-right"></i> Sent
							</a></li>
							</ul></li>
							
					<li class=""><a href="javascript:void(0);"> <i
							class="icon-edit"></i> Manage Feedback
					</a>
						<ul class="sub-menu">
							
							<li><a href="form_layouts.html"> <i
									class="icon-angle-right"></i> View Feedback
							</a></li>
							</ul></li>

				<!-- <li class=""><a href="javascript:void(0);"> <i
							class="icon-edit"></i> Manage Location
					</a>
						<ul class="sub-menu">
							
							<li><a href="form_layouts.html"> 
							<i class="icon-angle-right"></i> View Location
							</a></li>
							</ul></li> -->

						
					<!-- <li><a href="javascript:void(0);"> <i class="icon-table"></i>
							Tables
					</a>
						<ul class="sub-menu">
							<li><a href="tables_static.html"> <i
									class="icon-angle-right"></i> Static Tables
							</a></li>
							<li><a href="tables_dynamic.html"> <i
									class="icon-angle-right"></i> Dynamic Tables (DataTables)
							</a></li>
							<li><a href="tables_responsive.html"> <i
									class="icon-angle-right"></i> Responsive Tables
							</a></li>
						</ul></li> -->
					<!-- <li><a href="charts.html"> <i class="icon-bar-chart"></i>
							Charts &amp; Statistics
					</a></li> -->
					<!-- <li><a href="javascript:void(0);"> <i
							class="icon-folder-open-alt"></i> Pages
					</a>
						<ul class="sub-menu">
							<li><a href="login.html"> <i class="icon-angle-right"></i>
									Login
							</a></li>
							<li><a href="pages_user_profile.html"> <i
									class="icon-angle-right"></i> User Profile
							</a></li>
							<li><a href="pages_calendar.html"> <i
									class="icon-angle-right"></i> Calendar
							</a></li>
							<li><a href="pages_invoice.html"> <i
									class="icon-angle-right"></i> Invoice
							</a></li>
							<li><a href="404.html"> <i class="icon-angle-right"></i>
									404 Page
							</a></li>
						</ul></li> -->
					<!-- <li><a href="javascript:void(0);"> <i class="icon-list-ol"></i>
							4 Level Menu
					</a>
						<ul class="sub-menu">
							<li class="open-default"><a href="javascript:void(0);">
									<i class="icon-cogs"></i> Item 1 <span class="arrow"></span>
							</a>
								<ul class="sub-menu">
									<li class="open-default"><a href="javascript:void(0);">
											<i class="icon-user"></i> Sample Link 1 <span class="arrow"></span>
									</a>
										<ul class="sub-menu">
											<li class="current"><a href="javascript:void(0);"><i
													class="icon-remove"></i> Sample Link 1</a></li>
											<li><a href="javascript:void(0);"><i
													class="icon-pencil"></i> Sample Link 1</a></li>
											<li><a href="javascript:void(0);"><i
													class="icon-edit"></i> Sample Link 1</a></li>
										</ul></li>
									<li><a href="javascript:void(0);"><i class="icon-user"></i>
											Sample Link 1</a></li>
									<li><a href="javascript:void(0);"><i
											class="icon-external-link"></i> Sample Link 2</a></li>
									<li><a href="javascript:void(0);"><i class="icon-bell"></i>
											Sample Link 3</a></li>
								</ul></li>
							<li><a href="javascript:void(0);"> <i class="icon-globe"></i>
									Item 2 <span class="arrow"></span>
							</a>
								<ul class="sub-menu">
									<li><a href="javascript:void(0);"><i class="icon-user"></i>
											Sample Link 1</a></li>
									<li><a href="javascript:void(0);"><i
											class="icon-external-link"></i> Sample Link 1</a></li>
									<li><a href="javascript:void(0);"><i class="icon-bell"></i>
											Sample Link 1</a></li>
								</ul></li>
							<li><a href="javascript:void(0);"> <i
									class="icon-folder-open"></i> Item 3
							</a></li>
						</ul></li> -->
				</ul>
				<!-- <div class="sidebar-title">
					<span>Notifications</span>
				</div> -->
				<!-- <ul class="notifications demo-slide-in">
					<li style="display: none;">
						<div class="col-left">
							<span class="label label-danger"><i
								class="icon-warning-sign"></i></span>
						</div>
						<div class="col-right with-margin">
							<span class="message">Server <strong>#512</strong>
								crashed.
							</span> <span class="time">few seconds ago</span>
						</div>
					</li>
					<li style="display: none;">
						<div class="col-left">
							<span class="label label-info"><i class="icon-envelope"></i></span>
						</div>
						<div class="col-right with-margin">
							<span class="message"><strong>John</strong> sent you a
								message</span> <span class="time">few second ago</span>
						</div>
					</li>
					<li>
						<div class="col-left">
							<span class="label label-success"><i class="icon-plus"></i></span>
						</div>
						<div class="col-right with-margin">
							<span class="message"><strong>Emma</strong>'s account was
								created</span> <span class="time">4 hours ago</span>
						</div>
					</li>
				</ul> -->
				<div class="sidebar-widget align-center">
					<div class="btn-group" data-toggle="buttons" id="theme-switcher">
						<label class="btn active"> <input type="radio"
							name="theme-switcher" data-theme="bright"><i
							class="icon-sun"></i> Bright
						</label> <label class="btn"> <input type="radio"
							name="theme-switcher" data-theme="dark"><i
							class="icon-moon"></i> Dark
						</label>
					</div>
				</div>
			</div>
			<div id="divider" class="resizeable"></div>
		</div>