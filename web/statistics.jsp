<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Statistics</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="./assets/libs/css/main.css">
    <link rel="stylesheet" href="./assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">  
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" defer></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js" defer></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" defer></script>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js" defer></script>
    <script src='./js/main.js' defer></script>
</head>
<body>
  <nav class="navbar navbar-expand-md bg-dark navbar-dark"> 
    <!--button sidenav-->
    <button class="bg-dark" type="button" onclick="openNav()">
      <span class="navbar-toggler-icon"></span>
    </button>
    <!--Navbar items-->
   <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="#">Sign In</a>
        </li>
      </ul>
    </div>
  </nav>
  <!--Sidenav-->
  <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="#" class="active">Home</a>
    <a href="#">About</a>
    <a href="#">Contact</a>
  </div>
  
<div class="container-fluid">
  <!-- Row 1 -->
  <div class="row">
    <div class="col box">
        <h2 class="header-box">GLOBAL</h2>
        <img src="img/unflag.gif" id="flag" alt="global"/>
        <div class="infowrap">
          <div class="col-md-4">
            <div class="cases">INFECTED 
              <br>
            2490516</div>
          </div>
          <div class="col-md-4">
            <div class="deaths">DEATHS
              <br>
            170590</div>
          </div>
          <div class="col-md-4">
            <div class="recover">RECOVERED
              <br>
            653577</div>
          </div>
        </div>
    </div>
    <div class="col box">
      <h2 class="header-box">VIETNAM</h2>
      <img src="img/VN.png" id="flag" alt="VN Flag"/>
      <div class="infowrap">
        <div class="col-md-4">
          <div class="cases">INFECTED
            <br>
          268</div>
        </div>
        <div class="col-md-4">
          <div class="deaths">DEATHS
            <br>
          0</div>
        </div>
        <div class="col-md-4">
          <div class="recover">RECOVERED
            <br>
          216</div>
        </div>
      </div>
    </div>
  </div>
  <br/>
    <div class="row">
      <div class="col box">
        <div id="chartContainer" style="height: 300px; width: 100%;"></div>
      </div>
      <div class="col">
        <table class="table table-striped">
          <thead>
            <tr>
              <th>Firstname</th>
              <th>Lastname</th>
              <th>Email</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>John</td>
              <td>Doe</td>
              <td>john@example.com</td>
            </tr>
            <tr>
              <td>Mary</td>
              <td>Moe</td>
              <td>mary@example.com</td>
            </tr>
            <tr>
              <td>July</td>
              <td>Dooley</td>
              <td>july@example.com</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
</div>
    <div class="footer">
      Copyright &copy; 2020 by Supernho Corp.
    </div>

    <!--Opt JS-->
    <script src="./assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="./assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="./assets/vendor/slimscroll/jquery.slimscroll.js"></script>
</body>
</html>