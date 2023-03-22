<script>
  import Typewriter from "svelte-typewriter/Typewriter.svelte";

  export let counter;
  export let result;
  export let show;

  export let typer = false;

  function changeState() {
    counter++;
  }
</script>

{#if show}
  <div class="cli-input result">
    <Typewriter
      disabled={!typer}
      mode={"concurrent"}
      cursor={false}
      on:done={changeState}><p class="cli-input">{result}</p></Typewriter
    >
  </div>
{/if}

<style>
  .cli-input {
    font-weight: 500;
    padding: 2px;
  }

  .result {
    margin-left: 0.8em;
  }
</style>
