<script>
  export let counter;

  function skip() {
    counter = 100;
  }
</script>

<div class="container cli-input">
  <p>To read me, press Enter or Tap to continue</p>
  <p>To skip animations press S or this <button on:click={skip}>S</button></p>
</div>

<style>
  .container {
    flex-wrap: nowrap;
    margin-left: 10px;
  }
  .cli-input {
    font-weight: 500;
    padding: 2px;
  }

  button {
    width: 3em;
  }
</style>
