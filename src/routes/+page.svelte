<script>
  import Terminal from "./terminal.svelte";
  import "../app.css";
  import Pida from "$lib/components/Asciiart-pida.svelte";
  import Prompt from "$lib/components/Prompt.svelte";
  import Result from "$lib/components/Result.svelte";
</script>

<div>
  <Terminal>
    <Prompt path="~" folder="" command="ls"/>
    <Result result="Desktop    Downloads  Music Videos
    Documents  Pictures  Public"/>
    <Prompt path="~" folder="" command="cd Documents"/>
    <Prompt path="~/Documents/" folder="CV" command="ls"/>
    <Result result="name education"/>
    <Prompt path="~/Documents/" folder="CV" command="cat name"/>
    <Pida />
  </Terminal>
</div>

<style>
  div {
    height: 100%;
    width: 100%;
  }
</style>
