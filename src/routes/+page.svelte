<script>
  import Terminal from "./terminal.svelte";
  import "../app.css";
  import Pida from "$lib/components/Asciiart-pida.svelte";
  import Prompt from "$lib/components/Prompt.svelte";
  import Result from "$lib/components/Result.svelte";
  import Clone from "$lib/components/Asciiart-clone.svelte";
  import Blank from "$lib/components/Blank.svelte";

  let folderList = ["~", "~/Documents", "~/Documents"];

  let counter = 0;

  let terminalTitle = "pidanoueang@computer:~";
</script>

<div>
  <Terminal tabName={terminalTitle}>
    <Blank />
    <Pida show={counter >= 7} />
    <Prompt
      show={counter >= 6}
      path="~/Documents/"
      folder="CV"
      command="cat name"
      bind:counter
    />
    <Result show={counter >= 7} result="name education" />
    <Prompt
      show={counter >= 5}
      path="~/Documents/"
      folder="CV"
      command="ls"
      bind:counter
    />
    <Prompt
      show={counter >= 4}
      path="~/Documents/"
      folder="CV"
      command="cd Documents"
      bind:counter
    />
    <Result
      show={counter >= 4}
      result="Desktop    Downloads  Music Videos
    Documents  Pictures  Public"
    />
    <Prompt
      show={counter >= 3}
      path="~/Documents/"
      folder="CV"
      command="ls"
      bind:counter
    />
    <Clone show={counter >= 2} bind:counter />
    <Prompt
      show={counter >= 1}
      path="~"
      folder="/Documents"
      command="git clone https://github.com/pidanou/cv.git"
      bind:counter
    />
    <Prompt
      show={counter >= 0}
      path="~"
      folder=""
      command="cd Documents"
      bind:counter
    />
  </Terminal>
</div>

<style>
  div {
    height: 100%;
    width: 100%;
  }
</style>
