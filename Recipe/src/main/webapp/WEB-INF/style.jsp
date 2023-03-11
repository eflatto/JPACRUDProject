
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<style>
 
  body {
    font-family: Arial, sans-serif;
    font-size: 14px;
    line-height: 1.5;
    color: #333;
    background-color: #f5f5f5;
  }
  
  h1, h2, h3, h4, h5, h6 {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-weight: bold;
    margin-top: 0;
    margin-bottom: 20px;
  }
  
  a {
    color: #337ab7;
    text-decoration: none;
  }
  
  a:hover {
    color: #23527c;
    text-decoration: underline;
  }
  
  .card {
            width: 300px;
            margin: 20px;
            border: 1px solid #ccc;
            box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.3);
            border-radius: 5px;
            overflow: hidden;
            background-color: #fff;
            display: inline-block;
            vertical-align: top;
        }

        .card img {
            width: 100%;
            height: auto;
            object-fit: cover;
            vertical-align: top;
        }

        .card h2 {
            margin: 0;
            padding: 10px;
            font-size: 18px;
            text-align: center;
        }
         .card p {
            margin: 0;
            padding: 10px;
            font-size: 14px;
            line-height: 1.5;
            text-align: justify;
        }
  
</style>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="home.do">Recipe Book</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="recipes.do">View all the recipes</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="recipesform.do">Add a recipe</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="update.html">Update a recipe</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="delete.html">Delete a recipe</a>
					</li>
					
				</ul>
			</div>
		</div>
	</nav>
