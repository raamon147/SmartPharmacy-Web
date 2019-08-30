<!DOCTYPE html>
<html>

<head>
	<title>Add Student</title>

	
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>FooBar University</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Add Student</h3>
		
		<form action="ProdutoControllerServlet" method="GET">
		
			<input type="hidden" name="command" value="ADD" />
			
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><input type="text" name="codigo" /></td>
					</tr>

					<tr>
						<td><label>Last name:</label></td>
						<td><input type="text" name="produto" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="fabricante" /></td>
					</tr>
                                        
                                        <tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="principioativo" /></td>
					</tr>
                                        
                                        <tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="quantidade" /></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
					
				</tbody>
			</table>
		</form>
		
		<div style="clear: both;"></div>
		
		<p>
			<a href="ProdutoControllerServlet">Back to List</a>
		</p>
	</div>
</body>

</html>











