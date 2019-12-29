<?php session_start();
    include 'administrator/connection.php';
    include 'administrator/function.php';
    $pdo_auth = authenticate();
    $pdo = new PDO($dsn, $user, $pass, $opt);  
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Search Data  | Iotied</title>
    <meta name="description" content="Iotied">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/neat.minc619.css?v=1.0">
  </head>
  <body>

    <div class="o-page">
      <?php include 'sidebar.php'; ?>

      <main class="o-page__content">
        <?php include 'header.php'; ?>

        <div class="container">
         
          <?php $curl = curl_init();
              curl_setopt_array($curl, array(
                CURLOPT_PORT => "3005",
                CURLOPT_URL => "http://13.233.7.230:3005/api/dataManager/get/patients",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "GET",
                CURLOPT_POSTFIELDS => "",
                CURLOPT_HTTPHEADER => array(
                  "Postman-Token: aad61225-a932-4834-8fc9-f71d65f52ac2",
                  "cache-control: no-cache"
                ),
              ));

              $response = curl_exec($curl);
              $err = curl_error($curl);

              curl_close($curl);

              if ($err) {
                echo "cURL Error #:" . $err;
              } else {
                $response = json_decode($response,true);
              } 
              //print_r($response);
              ?>
          <div class="row">
            <div class="col-12">
              <h4>your search Term : <?php echo $_REQUEST['search_term']; ?> has following Results </h4>
              <div style="padding: 10px;"></div>
              <div class="c-table-responsive@wide">
                <table class="c-table">
                  <thead class="c-table__head">
                    <tr class="c-table__row">
                      <th class="c-table__cell c-table__cell--head">Select</th>
                      <th class="c-table__cell c-table__cell--head">Customer</th>
                      <th class="c-table__cell c-table__cell--head">Country</th>
                      <th class="c-table__cell c-table__cell--head">ICD Code</th>
                      <th class="c-table__cell c-table__cell--head">DOB</th>
                      <th class="c-table__cell c-table__cell--head">Disease Tags</th>
                      <th class="c-table__cell c-table__cell--head">Actions</th>
                    </tr>
                  </thead>

                  <tbody>
                    <?php 

                    function getIfSet(& $var) {
                        if (isset($var)) {
                            return $var;
                        }
                        return null;
                    }


                      foreach ($response as $key => $value) {
                        if ($value['patientData']['ICD Codes']!=$_REQUEST['search_term']) {
                          continue;
                        }

                        $tt = '';
                        if (!in_array(getIfSet($value['patientData']['Disease Tags']), $value)) {
                          $tags = getIfSet($value['patientData']['Disease Tags']); 
                          $tags = explode(",", $tags);
                          foreach ($tags as $key => $value1) {
                               $tt.="<span style='padding:5px;border:solid 1px #8bc34a;border-radius:3px;margin-right:3px;font-size:12px;'>".$value1."</span>";           
                            }                      
                        }   
                        else{
                          $tt = '';
                        }            

                        echo '<tr class="c-table__row">
                                <td>
                                  <div class="c-choice c-choice--checkbox">
                                    <input class="" id="checkbox1" style="padding:10px;margin-left:30px;" type="checkbox">
                                  </div>
                                </td>
                                <td class="c-table__cell">
                                  <div class="o-media">
                                    <div class="o-media__img u-mr-xsmall">
                                      <div class="c-avatar c-avatar--small">
                                        <img class="c-avatar__img" src="img/download.jpg" alt="'.$value['patientData']['First Name']." ".$value['patientData']['Last Name'].'">
                                      </div>
                                    </div>
                                    <div class="o-media__body">
                                      <h6>'.$value['patientData']['First Name']." ".$value['patientData']['Last Name'].'</h6>
                                      <p>'.$value['patientData']['City'].", ".$value['patientData']['State'].", ".$value['patientData']['County'].'</p>
                                    </div>
                                  </div>
                                </td>
                                <td class="c-table__cell">'.$value['patientData']['County'].'</td>
                                <th class="c-table__cell">'.$value['patientData']['ICD Codes'].'</th>
                                <td class="c-table__cell">'.$value['patientData']['DOB'].'</td>
                                <td class="c-table__cell">
                                  '.$tt.'
                                </td>
                                <td class="c-table__cell">
                                  <div class="c-dropdown dropdown">
                                    <a href="#" class="c-btn c-btn--info has-icon dropdown-toggle" id="dropdownMenuTable1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      More <i class="feather icon-chevron-down"></i>
                                    </a>

                                    <div class="c-dropdown__menu dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuTable1">
                                      <a class="c-dropdown__item dropdown-item" href="view_data.php?address='.$value['address'].'">View Data</a>
                                    </div>
                                  </div>
                                </td>
                              </tr>';
                      }
                     ?>

                   
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          
          <div class="row">
            <div class="col-12">
              <footer class="c-footer">
                <p>© 2018 <?php echo $pdo_auth['name']; ?>, Inc</p>
                <span class="c-footer__divider">|</span>
                <nav>
                  <a class="c-footer__link" href="#">Terms</a>
                  <a class="c-footer__link" href="#">Privacy</a>
                  <a class="c-footer__link" href="#">FAQ</a>
                  <a class="c-footer__link" href="#">Help</a>
                </nav>
              </footer>
            </div>
          </div>
        </div>
      </main>
    </div>
    <script src="js/neat.minc619.js?v=1.0"></script>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-88739867-5"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag() {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());

      gtag('config', 'UA-88739867-5');

    </script>
  </body>

</html>