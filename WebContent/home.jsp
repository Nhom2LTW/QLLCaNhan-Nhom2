<%@page import="com.devops.pojo.CalendarSetting"%>
<%@page import="com.dhtmlx.planner.controls.DHXLocalization"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.dhtmlx.planner.controls.DHXRule"%>
<%@page import="com.dhtmlx.planner.controls.DHXFilter"%>
<%@page import="com.dhtmlx.planner.controls.DHXTimelineView"%>
<%@page import="com.dhtmlx.planner.data.DHXDataLoader.DHXDynLoadingMode"%>
<%@page import="com.dhtmlx.planner.controls.DHXAgendaView"%>
<%@page import="com.dhtmlx.planner.api.DHXEventBox"%>

<%@page import="com.dhtmlx.planner.controls.DHXMiniCalendar"%>
<%@page import="com.dhtmlx.planner.controls.DHXLightboxMultiselect"%>
<%@page import="com.dhtmlx.planner.controls.DHXLightboxRadio"%>
<%@page import="com.dhtmlx.planner.controls.DHXMapView"%>
<%@page import="com.dhtmlx.planner.controls.DHXLightboxRecurringBlock"%>


<%@page import="com.dhtmlx.planner.controls.DHXLightboxCheckbox"%>
<%@page import="com.dhtmlx.planner.controls.DHXLightboxSelectOption"%>
<%@page import="com.dhtmlx.planner.controls.DHXLightboxSelect"%>
<%@page import="com.dhtmlx.planner.controls.DHXLightboxTime"%>

<%@page import="com.dhtmlx.planner.controls.DHXLightboxMiniCalendar"%>
<%@page import="com.dhtmlx.planner.controls.DHXLightboxText"%>
<%@page import="com.dhtmlx.planner.extensions.DHXExtension"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/Css.css">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <link href="plugin/fullcalendar.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="plugin/lib/cupertino/jquery-ui.min.css">
	<link href="plugin/fullcalendar.print.css" rel="stylesheet" media="print" />
	<script src="plugin/lib/moment.min.js"></script>
	<script src="plugin/lib/jquery.min.js"></script>
	<script src="plugin/fullcalendar.min.js"></script>
	<script src="plugin/lib/jquery-ui.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="plugin/locale/vi.js"></script>
	<link href='plugin/form.css' rel='stylesheet' />
    <link href='plugin/lib/font-awesome.min.css' rel='stylesheet' />
   
<%
	String check = (String) session.getAttribute("skey");
	String username = "";
	String userposition = "";

	if (check != null) {
		username = (String) session.getAttribute("ssuser");
		userposition = (String) session.getAttribute("ssup");

	} else {
		response.sendRedirect("index.jsp");
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
	<link href="css/layout_style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
$(document).ready(function() {
	
  $('#txt_tim').keydown(function(e) {
	var c=$('#txt_tim').val();
    if (e.which === 13) { //khi nhan phim enter
      if (c!=null) {
        window.location = "timkiem.jsp?t="+c;
      }
     
      return false;
    }
  });
});
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br></br>
		<div id="header">
			<div id="logo">
					<img src="images/background/logo.png" width="250" height="80"
						alt="logo">
	
			</div>
			<div id="nav_container">
				<div id="tag">
						<font size="2" color="black">Xin Chào</font><font size="2" color="blue">
						<%=username%></font><font size="2" color="black"> !</font>
				</div>
				<div id="nav_bar">
					<nav class="group">
						<%
							if (userposition.equals("A")) {
						%>
						<%@include file="inc/inc_admin_navigation.jsp"%>
						<%
							} else {
						%>
						<%@include file="inc/inc_user_navigation.jsp"%>
						<%
							}
						%>
					</nav>
				</div>		
			</div>
				
		</div>		
		<div id="content_container">
			<div class="form-group">
			  <input type="text" class="form-control" placeholder="Search" id="txt_tim" style="margin-top:20px;max-width:400px;margin-left:200px"/>
			</div>
			<div class="planner" id="planner"><%=getPlanner(request)%></div>
			<%@ page import="com.dhtmlx.planner.*,com.dhtmlx.planner.data.*"%>
			<%!String getPlanner(HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		int uid = (Integer) session.getAttribute("ssuid");
		CalendarSetting cs = new CalendarSetting();
		DHXPlanner s;

		s = new DHXPlanner("./codebase/", DHXSkin.TERRACE);

		

		s.setWidth(1000);
		
		s.lightbox.clear();

		
		//add tooltips for events
		s.extensions.add(DHXExtension.TOOLTIP);

		// add event details field
		DHXLightboxText notes = new DHXLightboxText("text", "Tên Sự Kiện");
		notes.setHeight(40);
		s.lightbox.add(notes);
		
		//set recurring events in lightbox
		s.lightbox.add(new DHXLightboxRecurringBlock("event_length",
				"Định Kì"));
		//set event length in lightbox 
		s.lightbox.add(new DHXLightboxTime("time", "Thời Gian"));

		//set event colors
		DHXLightboxSelect select = new DHXLightboxSelect("color", "Loại Sự Kiện");
		select.addOption(new DHXLightboxSelectOption("", ""));
		select.addOption(new DHXLightboxSelectOption("#FF6699", "Official"));
		select.addOption(new DHXLightboxSelectOption("#E6B800", "Business"));
		select.addOption(new DHXLightboxSelectOption("#999966", "Education"));
		select.addOption(new DHXLightboxSelectOption("#8e671e", "Social"));
		select.addOption(new DHXLightboxSelectOption("#76b007", "Family"));
		select.addOption(new DHXLightboxSelectOption("#1796b0", "Other"));
		s.lightbox.add(select);

		//Highlight important events
		DHXLightboxCheckbox check = new DHXLightboxCheckbox("highlighting",
				"Quan Trọng");
		check.setMapTo("textColor");
		check.setCheckedValue("black");
		s.lightbox.add(check);

		//Enables autoresizing for the scheduler container

		s.extensions.add(DHXExtension.CONTAINER_AUTORESIZE);

		//Enables the keyboard navigation.

		s.extensions.add(DHXExtension.KEYBOARD_NAVIGATION);

		//export to PDF

		String ch1 = cs.activepdf(uid);
		if (ch1.equals("pdfA")) {

			s.extensions.add(DHXExtension.PDF);
			s.toPDF();
		} else {
			s.extensions.clear();
		}

		String ch2 = cs.activeminc(uid);

		if (ch2.equals("mcA")) {

			s.calendars.attachMiniCalendar();
		} else {
			s.calendars.clear();
		}


		//Agenda

		String agn = cs.activeAgenda(uid);
		if (agn.equals("agA")) {

			s.views.add(new DHXAgendaView());
		}

		//s.templates.map_text = function(start,end,ev){
		// return ev.text;
		//};

		//Limiting the number of events per cell in the Month view
		s.config.setMaxMonthEvents(3);

		s.load("events.jsp", DHXDataFormat.JSON);
		s.data.dataprocessor.setURL("events.jsp");

		return s.render();

	}%>


		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="jquery/jquery-2.1.4.min.js"></script>
	<script src="js/layout.js"></script>

</body>

</html>