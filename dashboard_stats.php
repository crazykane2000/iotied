<div class="row">
  <div class="col-md-3">
    <div class="c-state-card c-state-card--info">
      <h4 class="c-state-card__title">Registered Producers</h4>
      <a href="view_producers.php"><span class="c-state-card__number">
        <?php $balance =  get_patients(); 
              $balance = json_decode($balance,true);
              $balance = count($balance);
              echo $balance;
        ?></span></a>
    </div>
  </div>

  <div class="col-md-3">
    <div class="c-state-card c-state-card--success">
      <h4 class="c-state-card__title">Whitelisted Producers</h4>
      <span class="c-state-card__number">2</span>                
    </div>
  </div>

  <div class="col-md-3">
    <div class="c-state-card c-state-card--fancy">
      <h4 class="c-state-card__title">Wallet</h4>
      <span class="c-state-card__number"><?php $balance =  get_wallet_balance($pdo_auth['tx_address']); 
                        $balance = json_decode($balance,true);
                        $balance = $balance['walletBalance'];
                        echo $balance;
                  ?></span>                
    </div>
  </div>
  <div class="col-md-3">
    <div class="c-state-card c-state-card--warning">
      <h4 class="c-state-card__title">Amount Spent</h4>
      <span class="c-state-card__number">00</span>                
    </div>
  </div>
  
</div>