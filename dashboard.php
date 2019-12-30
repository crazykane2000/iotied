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
    <title>Dashboard  | Iotied</title>
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
          <?php include 'dashboard_stats.php'; ?>

          <form action="search_handle.php" method="POST">
            <div style="padding: 30px;background-color: #fff;box-shadow: 0px 0px 10px #eee;">
              <div class="row">
                <div class="col-8">
                   <input type="text" name="search_term" style="padding: 10px;width: 100%;border:solid 1px #eee;" placeholder="Enter ICT Code, Desiese">
                </div>
                <div class="col-3">
                   <button class="c-btn c-btn--info" style="width: 100%;padding: 10px;">Search Data</button>
                </div>
              </div>      
            </div>
          </form>

          <div style="padding: 15px;"></div>

          

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
              <div class="c-table-responsive@wide">
                <table class="c-table">
                  <thead class="c-table__head">
                    <tr class="c-table__row">
                      <th class="c-table__cell c-table__cell--head">Whitelisted Users</th>
                      <th class="c-table__cell c-table__cell--head">Block No.</th>
                      <th class="c-table__cell c-table__cell--head">Patient Id</th>
                      <th class="c-table__cell c-table__cell--head">Country</th>
                      <th class="c-table__cell c-table__cell--head">Disease Tags</th>
                      <th class="c-table__cell c-table__cell--head">Status</th>
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
                                <td class="c-table__cell">
                                  <div class="o-media">
                                    <div class="o-media__img u-mr-xsmall">
                                      <div class="c-avatar c-avatar--small">
                                        <img class="c-avatar__img" src="img/download.jpg" alt="'.$value['patientData']['First Name']." ".$value['patientData']['Last Name'].'">
                                      </div>
                                    </div>
                                    <div class="o-media__body">
                                      <h6 style="font-size:12px;cursor:pointer;font-weight:bold" data-toggle="modal" data-target="#modal1" >'.substr($value['patientAddress'], 0,16).'...</h6>
                                      <p>'.$value['patientData']['City'].", ".$value['patientData']['State'].", ".$value['patientData']['County'].'</p>
                                    </div>
                                  </div>
                                </td>
                                <td class="c-table__cell">'.$value['blockNumber'].'</td>
                                <th class="c-table__cell" title="'.$value['patientAddress'].'">'.substr($value['patientAddress'], 0,10).'...</th>
                                <td class="c-table__cell">'.ucfirst($value['patientData']['County']).'</td>
                                <td class="c-table__cell">
                                  '.$tt.'
                                </td>
                                <td><label class="c-badge c-badge--success c-badge--small" style="">Whitelisted</label></td>
                                <td class="c-table__cell">
                                  <div class="c-dropdown dropdown">
                                    <a href="#" class="c-btn c-btn--info has-icon dropdown-toggle" id="dropdownMenuTable1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      More <i class="feather icon-chevron-down"></i>
                                    </a>

                                    <div class="c-dropdown__menu dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuTable1">
                                      <a class="c-dropdown__item dropdown-item" href="view_data.php?address='.$value['address'].'">Show Details</a>
                                      <a class="c-dropdown__item dropdown-item" href="view_data.php?address='.$value['address'].'">Request Access</a>
                                    </div>
                                  </div>
                                </td>
                              </tr>';
                      }
                     ?>

                     <tr class="c-table__row">
                                <td class="c-table__cell">
                                  <div class="o-media">
                                    <div class="o-media__img u-mr-xsmall">
                                      <div class="c-avatar c-avatar--small">
                                        <img class="c-avatar__img" src="img/download.jpg" alt="">
                                      </div>
                                    </div>
                                    <div class="o-media__body">
                                      <h6 style="font-size:12px;cursor:pointer;font-weight:bold" data-toggle="modal" data-target="#modal1" >DepEyEGkiOQAOXp...</h6>
                                      <p>Raipur, Chhattisgarh</p>
                                    </div>
                                  </div>
                                </td>
                                <td class="c-table__cell">785</td>
                                <th class="c-table__cell" title="">0x8db058e3......</th>
                                <td class="c-table__cell">India</td>
                                <td class="c-table__cell">
                                  <span style='padding:5px;border:solid 1px #8bc34a;border-radius:3px;margin-right:3px;font-size:12px;'>cholera</span>
                                  <span style='padding:5px;border:solid 1px #8bc34a;border-radius:3px;margin-right:3px;font-size:12px;'>Poik</span>
                                </td>
                                <td><label class="c-badge c-badge--danger c-badge--small" style="">Not Contacted</label></td>
                                <td class="c-table__cell">
                                  <div class="c-dropdown dropdown">
                                    <a href="#" class="c-btn c-btn--info has-icon dropdown-toggle" id="dropdownMenuTable1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      More <i class="feather icon-chevron-down"></i>
                                    </a>

                                    <div class="c-dropdown__menu dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuTable1">
                                      <a class="c-dropdown__item dropdown-item" href="view_data.php?address='.$value['address'].'">Request Access</a>
                                    </div>
                                  </div>
                                </td>
                              </tr>

                   
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

    <div class="c-modal modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="modal1">
        <div class="c-modal__dialog modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="c-card u-p-medium u-mh-auto" style="max-width:500px;">
                    <h3>Whitelisted User Information</h3>
                    <hr/>
                    <div style="padding: 10px;"></div>
                    <table class="c-table" style="font-size: 12px;">
                      <tr style="border-bottom: solid 1px #eee;">
                        <td style="padding:10px;">Address</td>
                        <td style="padding:10px;">0x8db058e36f1672a4cf965be8f349a032c5868c58</td>
                      </tr>

                      <tr style="border-bottom: solid 1px #eee;">
                        <td style="padding:10px;">Patient Id </td>
                        <td style="padding:10px;">0x99058e36f1672a4cf965be8f349a032c5868889</td>
                      </tr>

                      <tr style="border-bottom: solid 1px #eee;">
                        <td style="padding:10px;">DNA </td>
                        <td style="padding:10px;">depEyEGkiOQAOXpk4W4gaIh9MqcBeafFT</td>
                      </tr>

                      <tr style="border-bottom: solid 1px #eee;">
                        <td style="padding:10px;">Biometric Id </td>
                        <td style="padding:10px;">X2tDZmETJIYtq14YtjZLBEfFYCOKGY</td>
                      </tr>

                       <tr style="border-bottom: solid 1px #eee;">
                        <td style="padding:10px;"><img src="12.png"> </td>
                      </tr>


                    </table>
                    <div style="padding: 10px;"></div>
                    <button class="c-btn c-btn--danger" data-dismiss="modal">
                        Close Now
                    </button>
                </div>
            </div>
        </div>
    </div>


  </body>

</html>