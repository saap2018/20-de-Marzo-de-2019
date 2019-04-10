<?php require_once('Login/config.php'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SAAP</title>
<link rel="stylesheet" type="text/css" href="assets/css/formulario.css"/>
<style>
.header {
  overflow: hidden;
  background-color: #999;
  padding: 20px 10px;
  font-family:Arial, Helvetica, sans-serif;
  opacity: 0.6;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}
.header p {
  float: right;
  font-family:Arial, Helvetica, sans-serif;
  size: 10px;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
.footer {
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: #999;
  opacity: 0.9;
  text-align: center;
  font-family:Arial, Helvetica, sans-serif;
}
p{
	font-family:Arial, Helvetica, sans-serif;
	size: 18px;
	color:#333;
}
</style>

</head>
<div class="header">
  <a href="#default" class="logo">SAAP</a>
  <div class="header-right">
    
  </div>
</div>

<body>
<div class="footer">Software desarrollado por <strong>SAAP</strong>.</div>
<div id="container">
<div id="login">
<h3>Cantidad de parqueaderos </h3>
<form id="form1" name="form1" method="POST" action="parqueaderos.php">
  
</p>
  <p>Ingrese el numero de parqueaderos 
    <label for="textfield"></label>
    <input type="text" name="numero" id="textfield" />
  </p>
  <p>
    <input type="submit" name="button" id="button" value="Ingresar" />
  </p>
  <input type="hidden" name="MM_insert" value="form1" />
</form>
</div>
</div>
</body>
</html>