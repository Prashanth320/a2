<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="uts.css" />
</head>
<body>
	<form action="FileUploadServlet" method="post"
		enctype="multipart/form-data" name="form1" id="form1">
		<div class="post">
			<div id="column-1" class="post">
				update status |
				<!-- <a href="addphoto.jsp" onclick="return addphoto()"> -->
				<input type="file" name="file" size="50" />
				<!-- <a data-hover="tooltip" data-tooltip-content="Photo/Video Album" data-tooltip-alignh="center" class="_4-h7 _4sv0 _m" id="u_36_1" rel="ignore" href="#" ajaxify="/album/uploader/?application=html5&amp;xapplication=web_html5&amp;owner_id=100004200665768&amp;session_id=u_36_1&amp;qn=4a76778b6c6bd8e5345ef6819875e3ef&amp;ref=react_composer&amp;av=100004200665768" tabindex="0" data-tooltip-delay="500" data-tooltip-display="overflow" role="button"><span class="uiIconText"><i class="img sp_WVHUeX6hZPk sx_839ce8"></i><div class="_5qtp">Photo/Video Album</div></span><div class="_3jk"><label class="accessible_elem" for="js_a5">Choose a file to upload</label><input type="file" class="_n" tabindex="-1" accept="video/*,  video/x-m4v, video/webm, video/x-ms-wmv, video/x-msvideo, video/3gpp, video/flv, video/x-flv, video/mp4, video/quicktime, video/mpeg, video/ogv, .ts, .mkv, image/*" multiple="" title="Choose a file to upload" id="js_a5"></div></a> -->
				<hr>
				<br> <br> <br> <br> <br> <br>
				<hr>
			</div>
			<div id="postpos" class="post">
				<input type="submit" id="buttonpost" value="post" />
		</div>
			<div id="postboxpos" class="post">
				<textarea placeholder="What's in your mind........" id="postbox"
					type="text" name="message"></textarea>
			</div>
		</div>
		<div class="header10"></div>
	</form>
</body>
</html>