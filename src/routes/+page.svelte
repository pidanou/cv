<script>
  import Terminal from "./terminal.svelte";
  import "../app.css";
  import Pida from "$lib/components/Asciiart-pida.svelte";
  import Prompt from "$lib/components/Prompt.svelte";
  import Result from "$lib/components/Result.svelte";
  import Clone from "$lib/components/Asciiart-clone.svelte";
  import Blank from "$lib/components/Blank.svelte";
  import Loading from "$lib/components/Asciiart-loading.svelte"

  let folderList = ["~","~/Documents", "~/Documents"];

  let counter = 0; 

  let overflow = 0;

  let terminalTitle = "pidanoueang@computer:~"

  let focus = 0;

  function handleEnterKeydown(e) {
    if (e.key != "Enter") {
      return
    }
    if (counter >= folderList.length){
      overflow ++
      focus++
      return
    }
    focus++
  }

  $:dynCounter = Array(overflow);

</script>

<svelte:window on:keydown={handleEnterKeydown}/>

<div>
  <Terminal tabName={terminalTitle}>
    {#each dynCounter as _, i}
    {#if counter>folderList.length}
    <Prompt path="~/Documents/" folder="CV" command=""  bind:counter={counter} />
    {/if}
    {/each}
    <Pida />
    <Prompt show={focus>=5} path="~/Documents/" folder="CV" command="cat name" bind:counter={counter} />
    <Result result="name education"/>
    <Prompt show={focus>=4} path="~/Documents/" folder="CV" command="ls" bind:counter={counter} />
    <Prompt show={focus>=3} path="~/Documents/" folder="CV" command="cd Documents" bind:counter={counter} />
    <Result result="Desktop    Downloads  Music Videos
    Documents  Pictures  Public"/>
    <Prompt show={focus>=2} path="~/Documents/" folder="CV" command="ls" bind:counter={counter} />
    <Clone/>
    <Prompt show={focus>=1} path="~" folder="/Documents" command="git clone https://github.com/pidanou/cv.git" bind:counter={counter} />
    <Prompt show={focus>=0} path="~" folder="" command="cd Documents" bind:counter={counter} />
    <Loading/>
    <Prompt typewritingAuto={true} focus={true} path="~" folder="" command="cat README.md"/>
  </Terminal>
</div>

<style>
  div {
    height: 100%;
    width: 100%;
  }
</style>
