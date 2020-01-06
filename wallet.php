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
    <title>Wallet  | Iotied</title>
    <meta name="description" content="Iotied">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/neat.minc619.css?v=1.0">
    <style type="text/css">
      td{padding: 10px;}
    </style>
  </head>
  <body>

    <div class="o-page">
      <?php include 'sidebar.php'; ?>

      <main class="o-page__content">
        <?php include 'header.php'; ?>

        <div class="container-fluid">
         

          <div style="padding: 20px;"></div>

          <div class="row" style="min-height: 70vh">
            <div class="col-7">
              <nav class="c-tabs"> 
            <div class="c-tabs__list nav nav-tabs" id="myTab" role="tablist">
              <a class="c-tabs__link active show" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Buy Via Wire Transfer</a>
              <a class="c-tabs__link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Buy Via Wire Bitcoin</a>
              <a class="c-tabs__link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Buy Via Wire Etherium</a>
            </div>
            <div class="c-tabs__content tab-content" id="nav-tabContent">
              <div class="c-tabs__pane active show" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <h4>Bank WIRE Transfer</h4>
                <h6 style="color: #888">Min. 10,000 USD and Max 50,000,000 USD</h6>
                <h6 style="color:#888">Processing Time : 1 to 5 Working Days</h6>
                <br/>
                <table class="c-table">
                    <thead class="c-table__head">
                        <tr style="font-family: 'Didact Gothic', sans-serif;color: #444;font-size: 12px;">
                            <td  style="width: 130px">Company </td>
                            <td>Iotied Company</td>
                        </tr>
                    </thead>
                    <tbody style="font-size: 12px;">
                        <tr>
                            <td>Company Address</td>
                            <td>Crystal Design Center (CDC), 1448/4, J2 Building, 2nd Floor Suite 201-203, Ladprao 87 Pradit Manutham Rd. , Klongchan Bangkapi, Bangkok Thailand 10240</td>
                        </tr>
                        <tr style="font-family: 'Didact Gothic', sans-serif;color: #444;font-size: 12px;">
                            <td>Bank Address</td>
                            <td>NO. 1 QUEEN'S ROAD CENTRAL HONG KONG </td>
                        </tr>
                        <tr>
                            <td>Bank Name</td>
                            <td>HSBC HONG KONG</td>
                        </tr>
                        <tr style="font-family: 'Didact Gothic', sans-serif;color: #444;font-size: 12px;">
                            <td>Account No. </td>
                            <td>787896789698765487658764785647386534</td>
                        </tr>
                        <tr>
                            <td>SWIFT Code. </td>
                            <td>8756745675675GGJHFGHN</td>
                        </tr>
                    </tbody>
                </table>
              </div>

              <div class="c-tabs__pane" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                <center>
                  <img src="https://nonceblox.com/brazil_pay/img/qr_btc.png" style="width: 200px">
                  <br/><br/><b>Iotied Address</b> : <?php echo $pdo_auth['tx_address']; ?>
                  <br/><br/>
                  <div style="padding: 14px;background-color: #064971;color:#fff;width: 80%">
                      Please Transfer your BTC to Above Address, and Update the Amount Sent and Iotied Token Requested. Once We Get BTC in Our Wallet we will Recharge you wallet with equivelent amount of Iotied Token.
                  </div>
                </center>
              </div>
              <div class="c-tabs__pane" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                <center>
                  <img src="https://nonceblox.com/brazil_pay/img/qr_btc.png" style="width: 200px">
                  <br/><br/><b>Iotied Address</b> : <?php echo $pdo_auth['tx_address']; ?>
                  <br/><br/>
                  <div style="padding: 14px;background-color: #064971;color:#fff;width: 80%">
                      Please Transfer your Etherium to Above Address, and Update the Amount Sent and Iotied Token Requested. Once We Get BTC in Our Wallet we will Recharge you wallet with equivelent amount of Iotied Token.
                  </div>
                </center>
              </div>
            </div>
          </nav>


          <button class="c-btn c-btn--large" data-toggle="modal" data-target="#modal1a">Pay and Buy Iotied Tokens</button>
          <div class="c-modal modal fade" id="modal1a" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true" style="display: none;">
                    <div class="c-modal__dialog modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="c-card u-p-medium u-mh-auto" style="max-width:500px;">
                                <h3>Modal Title</h3>
                                <p class="u-text-mute u-mb-small">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum similique, dolores dolorem perferendis inventore illum dicta. Nostrum, officiis alias distinctio deleniti aliquid eum dolorum sed fugit omnis molestias! Magnam, animi.</p>
                                <button class="c-btn c-btn--info" data-dismiss="modal">
                                    Ok, just close this modal
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-4"> 
              <div class="c-table-responsive@wide">
                 <div style="padding: 30px;background-color: #fff;">
                  <h3 style="font-size: 18px;">Wallet Iotied Token Balance</h3>
                  <div style="padding: 10px;"></div>
                  <hr style="opacity: .2" /><div style="padding: 10px;"></div>
                  <h1 style="color: #2196f3"><?php $balance =  get_wallet_balance($pdo_auth['tx_address']); 
                        $balance = json_decode($balance,true);
                        $balance = $balance['walletBalance'];
                        echo $balance." Iot";
                  ?></h1>
                  <div style="padding: 10px;"></div>
                  <p>This is Iotied Balance and must not be compared with Other fiat Currency, However the value of IOTied Tokens depands on market value and may change or exchanged to fiat of equivellent value </p>
                 </div>
              </div>
            </div>
          </div>
          
          <?php include 'footer.php'; ?>
        </div>
      </main>
    </div>
    <script src="js/neat.minc619.js?v=1.0"></script>



  </body>

</html>