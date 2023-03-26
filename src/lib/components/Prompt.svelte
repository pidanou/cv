<script>
  import Typewriter from "svelte-typewriter";
  import MediaQuery from "svelte-media-queries";

  export let command;
  export let path;
  export let counter;

  let display;

  export let show;

  let next = false;

  export function test(key) {
    console.log(key);
  }

  export function handleKeyDown(e) {
    if (e.key != "Enter") {
      return;
    }
    if (next) {
      counter++;
      next = false;
    }
  }

  function changeState() {
    next = true;
  }

  $: tickerColor = "white";
  $: ticker = true;
  function switchTicker() {
    if (next && ticker) {
      if (tickerColor == "white") {
        tickerColor = "";
      } else {
        tickerColor = "white";
      }
    }
    if (counter >= 100) {
      tickerColor = "";
    }
  }

  setInterval(switchTicker, 700);

  function skip() {
    next = false;
    counter++;
    ticker = false;
  }

  setTimeout(skip, 30000);
</script>

<svelte:window on:keydown={handleKeyDown} />
<MediaQuery query="(min-width: 1024px)" let:matches>
  {#if matches}
    {#if show}
      <div class="container" style:display>
        <p class="cli-input path" id="first">{path}</p>
        <Typewriter
          cursor={false}
          delay={300}
          mode={"concurrent"}
          on:done={changeState}
          interval={[30, 56, 30, 45, 150]}
          ><p class="cli-input">{command}</p></Typewriter
        >
        {#if next}
          <div class="ticker" style="background-color:{tickerColor}" />
        {/if}
      </div>
    {/if}
  {/if}
</MediaQuery>

<MediaQuery query="(max-width: 1023px)" let:matches>
  {#if matches}
    {#if show}
      <div class="container" style:display>
        <p class="cli-input path" id="first">{path}</p>
        <Typewriter
          cursor={false}
          delay={300}
          mode={"concurrent"}
          on:done={changeState}
          interval={[30, 56, 30, 45, 150]}
          ><p class="cli-input">{command}</p></Typewriter
        >
        {#if next}
          <div class="ticker" style="background-color:{tickerColor}" />
        {/if}
      </div>
    {/if}
  {/if}
</MediaQuery>

<style>
  p {
    margin: 0;
  }

  .ticker {
    width: 0.7em;
    height: auto;
  }

  .container {
    display: flex;
    vertical-align: center;
    margin-bottom: 2px;
    min-height: 2ch;
  }
  .cli-input {
    font-size: 0.875rem;
    font-weight: 500;
    padding: 2px;
    white-space: nowrap;
  }

  .path {
    background-color: rgb(47, 50, 53);
    vertical-align: center;
  }

  #first {
    color: aliceblue;
    padding-right: 0;
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
    margin-left: 10px;
    padding-left: 10px;
    padding-right: 1em;
    margin-right: 0.5em;
  }
</style>
