<script>
  import Terminal from "./terminal.svelte";
  import "../app.css";

  let terminalTitle = "pidanoueang@computer:~";
</script>

<div>
  <Terminal tabName={terminalTitle} />
</div>

<style>
  div {
    height: 100%;
    width: 100%;
  }
</style>
