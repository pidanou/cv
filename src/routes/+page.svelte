<script>
  import TerminalDesktop from "./terminalDesktop.svelte";
  import "../app.css";
  import MediaQuery from "svelte-media-queries";

  let counter = 0;

  let terminalTitle = "pidanoueang@computer:~";
</script>

<MediaQuery query="(max-height: 1280px)" let:matches>
  {#if matches}
    <div>
      <TerminalDesktop tabName={terminalTitle} />
    </div>
  {/if}
</MediaQuery>

<MediaQuery query="(min-height: 1281px)" let:matches>
  {#if matches}
    <div>
      <TerminalDesktop tabName={terminalTitle} />
    </div>
  {/if}
</MediaQuery>

<style>
  div {
    height: 100%;
    width: 100%;
  }

  button {
    height: 100px;
    width: 100px;
  }
</style>
