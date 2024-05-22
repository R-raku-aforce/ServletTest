<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@include file="../header.html" %>

<%@taglib prefix="c" uri="jakarta.tags.core" %>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jersey+10+Charted&family=Jersey+20&family=Jersey+25+Charted&family=Josefin+Sans:wght@366&family=Josefin+Slab:ital,wght@0,100..700;1,100..700&family=Pacifico&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../CSS/style.css">
</head>

<body>
	<header>
		<h1>お問い合わせ</h1>
	</header>
	
	<div class="content">	
		<div class="inscribe">
			<h2>記入項目：</h2>

			<p>氏名: ${user }</p>
			<p>会社: ${company }</p>
			<p>メールアドレス: ${email }</p>
			<p>お問合せ内容:「${review }」</p>
		</div>
			
		<c:if test="${not empty genres }">
			<div class="check">
				<c:forEach var="genre" items="${genres }">
					<p>${genre }</p>
				</c:forEach>
				<p><b>に関する情報を送りいたします。</b></p>
			</div>
		</c:if>
			
		<div class="thanks">
			<h3>Thank you for your assistance.</h3>
		</div>		
	</div>		
</body>

<%@include file="../footer.html" %>
