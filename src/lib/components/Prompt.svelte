<script>
  import Typewriter from 'svelte-typewriter'

  export let command;
  export let folder;
  export let path;
  export let counter;

  export let typewritingAuto = false;

  let animation = false

  export let show;

  function handleEnterKeydown(e) {
    if (show){
      animation = true
    }
  }

  function changeState(){
    counter++
  }

  
</script>

<svelte:window on:keydown={handleEnterKeydown}/>

<div class="container">
    <p class="cli-input path" id="first">{path}</p><p class="cli-input path" id="last">{folder}</p>
    {#if !typewritingAuto}
    <Typewriter disabled={!animation} mode={"concurrent"} cursor= {false} on:done={changeState}><p class="cli-input">{command}</p></Typewriter>
    {:else}
    <Typewriter mode={"concurrent"} cursor= {false} on:done={changeState}><p class="cli-input">{command}</p></Typewriter>
    {/if}


</div>

<style>

  p {
    margin: 0;
  }

  .container {
    display: flex;
    flex-wrap: wrap;
  }
  .cli-input {
    font-weight: 500;
    padding: 2px;
    margin-bottom: 0.2em;
  }

  .path {
    background-color: rgb(74, 77, 80);
  }

  #first {
    color: aliceblue;
    padding-right: 0;
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
    margin-left: 10px;
    padding-left: 10px;
  }

  #last {
    margin-right: 0.5em;
    color: rgb(43, 146, 187);
    font-weight: 700;
    padding-right: 1em;
    padding-left: 0;
  }
</style>
