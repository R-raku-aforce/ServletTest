<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jersey+10+Charted&family=Jersey+20&family=Jersey+25+Charted&family=Josefin+Sans:wght@366&family=Josefin+Slab:ital,wght@0,100..700;1,100..700&family=Pacifico&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../CSS/style.css">
</head>

<body>
	<header>
		<h2>お問い合わせ</h2>
	</header>
	
	<form action="contact" method="post">
	
		<div class="content_top">
			<div class="inscribe_top">
				<h3>記入項目</h3>
					<p>氏名：<input type="text" name="user" required></p>
					<p>会社：<input type="text" name="company"></p>
					<p>メールアドレス：<input type="text" name="email" required></p>
					<p>お問い合わせ　：<textarea name="review" rows="10" cols="50" required></textarea></p>
			</div>
		
			<div class="newsletter">
				<div class="newsletter_top">	
					<h3>メルマガ種類</h3>
				</div>
				<div class="check-box">
					<p>
						<input type="checkbox" name="genre" value="総合案内">総合案内
						<input type="checkbox" name="genre" value="セミナー案内">セミナー案内
						<input type="checkbox" name="genre" value="求人採用情報">求人採用情報
					</p>
				</div>
			</div>
		
			<div class="hope">
				<div class="hope_top">		
					<h3>資料請求希望</h3>
				</div>
				<div>
					<p>
						<input type="radio" name="quiz" value="Yes" checked>Yes
						<input type="radio" name="quiz" value="No">No
					</p>					
				</div>				
			</div>		
			<input type="submit" value="確定">
		</div>
	</form>
</body>
<%@include file="../footer.html" %>
</html>