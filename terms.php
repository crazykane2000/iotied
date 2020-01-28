<?php session_start();
    include 'administrator/connection.php';
    include 'administrator/function.php';
    $pdo_auth = authenticate();
    $pdo = new PDO($dsn, $user, $pass, $opt);  
    error_reporting(E_ALL & ~E_NOTICE);
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>View All Producers Data  | Iotied</title>
    <meta name="description" content="Iotied">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/neat.minc619.css?v=1.0">
    <style type="text/css">
      h3{margin-top: 30px}
    </style>
  </head>
  <body>

    <div class="o-page">
      <?php include 'sidebar.php'; ?>

      <main class="o-page__content">
        <?php include 'header.php'; ?>

        <div class="container-fluid">
         
          
          <div class="row">
            <div class="col-12">
              <h4>Data Access terms and Conditions</h4>
              <div style="padding: 10px;"></div>
              <div class="c-table-responsive@wide">
               <div style="padding:30px;background-color: #fff;min-height: 700px">
                  <h3>Introduction</h3>
<p>The Iotied Data Repository is a collection of data submitted to the Iotied NCC by various organisations or gathered through measurements conducted by the Iotied NCC.</p>
<p>The Iotied NCC aims to add value for useful research by facilitating the sharing of this data with researchers and Iotied Community members and shall make the Iotied Data Repository available under these Terms and Conditions (hereafter: the &quot;Terms and
    Conditions&quot;).</p>
<h3>Article 1 - Definitions</h3>
<p>In the Terms and Conditions, the following terms shall be understood to have the meanings assigned to them below:</p>
<p>Iotied NCC - R&eacute;seaux IP Europ&eacute;ens Network Coordination Centre, a membership association under Dutch law, operating from its registered office in Amsterdam, the Netherlands</p>
<p>Iotied Data Repository - a collection of data submitted to the Iotied NCC by various external organisations or gathered through measurements conducted by the Iotied NCC</p>
<p>Data - the data contained in the Iotied Data Repository</p>
<p>Data Supplier - the organisation that has collected a set(s) of Data and has submitted it to the Iotied NCC</p>
<p>User - anyone who has created an account for accessing the Iotied Data Repository</p>
<p>Access - accessing the Iotied Data Repository by the User after the creation of an account</p>
<h3>Article 2 - General</h3>
<p>1. The Terms and Conditions come into effect by means of an offer and an acceptance.</p>
<p>2. By checking the option &quot;I accept the full version of the Terms and Conditions&quot; Users confirm that that they have read, understood and agreed to these Terms and Conditions.</p>
<p>3. Only after having agreed on these Terms and Conditions can a User access the Iotied Data Repository and the Data.</p>
<p>4. The Iotied NCC reserves the right to amend the Terms and Conditions. The Iotied NCC shall notify Users of such amendments. Should a User not agree with the amendments or supplements, they must cancel their account immediately and delete any Data they posses
    in any form according to Article 6 paragraph 3.</p>
<p>5. The short explanation of the Terms and Conditions posted on the Access Request Form of the Iotied Data Repository is for convenience only and shall not affect the interpretation of the present Terms and Conditions.</p>
<h3>Article 3 - Use of the Iotied Data Repository</h3>
<p>1. A User may only access the Iotied Data Repository and the Data for scientific research or research in order to support the operation of a network. Access to and use of the Iotied Data Repository and the Data for any commercial purposes, for example selling
    the Data or services based on the Data, is not allowed.</p>
<p>2. The Iotied Data Repository and the Data may only be accessed and used by the User. The User must not re-distribute the Iotied Data Repository or the Data to anybody else.</p>
<p>3. A User may not re-package, compile, re-distribute or re-use any or all of the Iotied Data Repository or the Data unless when permission to do so is granted in writing by the Iotied NCC or the Data Supplier(s) of particular set(s) of Data.</p>
<p>4. A User may only access and use the Iotied Data Repository and the Data for the purposes as mentioned in Article 3 paragraph 1 hereof and provided these Terms and Conditions are followed. Any abuse of the Iotied Data Repository and the Data or any use of
    the Iotied Data Repository and the Data for illegal activities is not allowed. The Users are solely responsible for any ethical and legal implications pursuant to their use of the Iotied Data Repository and the Data.</p>
<p>5. Individuals cannot be identified by the Data. This anonymity must be maintained by the Users. In particular the Users must not:</p>
<ul>
    <li>Try to reveal the identity of any individuals by their own means;</li>
    <li>Publish or make by any means publicly available combinations of Data with other data they posses, which can lead to the identification of individuals.</li>
</ul>
<p>6. Any User must attribute the Iotied NCC and the Data Supplier (if different than the Iotied NCC) when they make publicly available research results generated by any use of the Data.</p>
<p>7. The User must provide a valid email address to the Iotied NCC for the purposes of establishing a channel of communication between the User and the Iotied NCC regarding the Iotied Data Repository.</p>
<p>8. The User must inform the Iotied NCC about their research or publicly available research results generated by the use of Data, including publications. For this purpose the Iotied NCC may periodically send reminders to Users.</p>
<h3>Article 4 - Control of the Iotied Data Repository</h3>
<p>1. The Iotied NCC is entitled to control the use of the Iotied Data Repository and to restrict any unauthorised use or to correct unauthorised alterations of the Data. For this purpose the Iotied NCC may perform security checks and audits.</p>
<p>2. Users must assist the Iotied NCC with security checks and audits as appropriate.</p>
<h3>Article 5 - Liability</h3>
<p>1. Use of the Iotied Data Repository and the Data is at the User&#39;s own risk.</p>
<p>2. The User shall be liable for all aspects of the use of the Iotied Data Repository and the Data.</p>
<p>3. The Iotied NCC does not guarantee that the Iotied Data Repository or the Data will be available on a best effort basis and the Iotied NCC may suspend its operation without notice or liability to the User, for technical, legal, anti-abuse reasons or any other
    legitimate reason within the scope of managing the operations of the Iotied Data Repository.</p>
<p>4. The Iotied NCC shall, in any event, not be liable for non-performance or damages due to force majeure, including but not limited to industrial action, strikes, occupations and sit-ins, blockades, embargoes, governmental measures, denial of service attacks,
    war, revolutions or comparable situations, power failures, defects in electronic lines of communication, fire, explosions, damage caused by water, floods and earthquakes.</p>
<p>5. The Iotied NCC excludes all liability for any direct or indirect damages, including, but not limited to, damages to the User&#39;s business, loss of profit, damages to third parties, personal injury or damages to property, except in cases involving willful
    misconduct or gross negligence on the part of the Iotied NCC.</p>
<p>6. The User shall indemnify the Iotied NCC against any and all third party claims filed against the Iotied NCC in relation to the User&#39;s use of the Iotied Data Repository or the Data.</p>
<h3>Article 6 - Termination</h3>
<p>1. Any User may terminate their account at any time.</p>
<p>2. The Iotied NCC may immediately terminate the account of any User, without being liable to pay damages to them and without prejudice to the Iotied NCC&#39;s right to claim (additional) damages from them if:</p>
<ul>
    <li>a. The User has infringed any provision of the Terms and Conditions;</li>
    <li>b. The User in any way acts or neglects to act such as to cause damage to the name, trademarks or intellectual property rights of the Iotied NCC or the Data Supplier;</li>
    <li>c. The Iotied NCC is no longer able to contact the User (for example, if the User repeatedly does not respond to emails from the Iotied NCC or if the User fails to maintain a valid email address that is known to the Iotied NCC).</li>
</ul>
<p>3. Any User whose account has been for any reason deleted must immediately erase all copies of the Data they possess in any form.</p>
<h3>Article 7 - Miscellaneous</h3>
<p>1. Access to particular sets of Data might only be permitted provided that additional terms and conditions are accepted by the User, along with these Terms and Conditions.</p>
<p>2. The Iotied NCC&#39;s intellectual property (agreements, documents, software, databases, website, etc.) may only be used, reproduced and made available to third parties upon prior written authorisation from the Iotied NCC.</p>
<p>3. Without the Iotied NCC&#39;s prior written consent, the User shall not be permitted to assign to third parties any rights or obligations that arise from the Terms and Conditions.</p>
<p>4. If any provision contained in the Terms and Conditions is held to be invalid by a court of law, this shall not in any way affect the validity of the remaining provisions.</p>
<h3>Article 8 - Governing Law</h3>
<p>These Terms and Conditions shall be exclusively governed by the laws of the Netherlands. The competent court in Amsterdam shall have exclusive jurisdiction with regard to disputes arising from these Terms and Conditions.</p>
               </div>
              </div>
            </div>
          </div>          
          <?php include 'footer.php';  ?>
        </div>
      </main>
    </div>
    <script src="js/neat.minc619.js?v=1.0"></script>
    
  </body>

</html>