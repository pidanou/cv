<script>
  import Typewriter from "svelte-typewriter";

  export let command;
  export let folder;
  export let path;
  export let counter;

  let display;

  export let show;

  function changeState() {
    setTimeout(() => {
      counter++;
    }, 300);
  }
</script>

{#if show}
  <div class="container" style:display>
    <p class="cli-input path" id="first">{path}</p>
    <p class="cli-input path" id="last">{folder}</p>
    <Typewriter
      --cursor-color={"white"}
      delay={300}
      mode={"concurrent"}
      on:done={changeState}
      interval={[30, 56, 30, 45, 150]}
      ><p class="cli-input">{command}</p></Typewriter
    >
  </div>
{/if}

<style>
  p {
    margin: 0;
  }

  .container {
    display: flex;
    min-height: 1.7em;
  }
  .cli-input {
    font-weight: 500;
    padding: 2px;
    margin-bottom: 0.2em;
    white-space: nowrap;
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
