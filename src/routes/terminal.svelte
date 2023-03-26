<script>
  import WindowBody from "$lib/components/WindowBody.svelte";
  import Pida from "$lib/components/About.svelte";
  import Prompt from "$lib/components/Prompt.svelte";
  import Result from "$lib/components/Result.svelte";
  import Clone from "$lib/components/Clone.svelte";
  import Blank from "$lib/components/Blank.svelte";
  import Jobs from "$lib/components/Jobs.svelte";
  import Education from "$lib/components/Education.svelte";
  import Skills from "$lib/components/Skills.svelte";
  import Socials from "$lib/components/Socials.svelte";
  import Tutorial from "$lib/components/Tutorial.svelte";

  import { tap } from "svelte-gestures";

  let counter = 0;

  let component;

  function passTap(e) {
    component.handleKeyDown({ key: "Enter" });
  }

  function fastForwardKey(e) {
    if (e.key == "s") {
      counter = 100;
    }
  }

  export let tabName;
</script>

<svelte:window on:keydown={fastForwardKey} />

<div class="container" use:tap={{ timeframe: 300 }} on:tap={passTap}>
  <WindowBody {tabName} bind:counter>
    <Blank />
    {#if counter >= 18}
      <Prompt
        show={counter >= 18}
        path="~/Documents/cv/socials"
        command="exit"
        bind:counter
        bind:this={component}
      />
      <Socials show={counter >= 18} />
    {/if}
    {#if counter >= 17}
      <Prompt
        show={counter >= 17}
        path="~/Documents/cv/socials"
        command="ls"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 16}
      <Prompt
        show={counter >= 16}
        path="~/Documents/cv"
        command="cd socials"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 16}
      <Skills show={counter >= 16} />
    {/if}
    {#if counter >= 15}
      <Prompt
        show={counter >= 15}
        path="~/Documents/cv/skills"
        command="cat README.md && cd .."
        bind:counter
        bind:this={component}
      />
    {/if}
    <Result
      show={counter >= 15}
      folders={"DEVOPS CLOUD INFRASTRUCTURE"}
      result={"README.md"}
    />
    {#if counter >= 14}
      <Prompt
        show={counter >= 14}
        path="~/Documents/cv/skills"
        command="ls"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 13}
      <Prompt
        show={counter >= 13}
        path="~/Documents/cv"
        command="cd skills"
        bind:counter
        bind:this={component}
      />
      <Jobs show={counter >= 13} />
    {/if}
    {#if counter >= 12}
      <Prompt
        show={counter >= 12}
        path="~/Documents/cv/employment_history"
        command="cat README.md && cd .."
        bind:counter
        bind:this={component}
      />
      <Result
        show={counter >= 12}
        folders={"KEOLIS WAVESTONE SMART-CHAIN"}
        result={"README.md"}
      />
    {/if}
    {#if counter >= 11}
      <Prompt
        show={counter >= 11}
        path="~/Documents/cv/employment_history"
        command="ls"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 10}
      <Prompt
        show={counter >= 10}
        path="~/Documents/cv"
        command="cd employment_history"
        bind:counter
        bind:this={component}
      />

      <Education show={counter >= 10} />
    {/if}
    {#if counter >= 9}
      <Prompt
        show={counter >= 9}
        path="~/Documents/cv/education"
        command="cat README.md && cd .."
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 9}
      <Result
        show={counter >= 9}
        folders={"Lycee_Lavoisier ISEP INHA "}
        result={"README.md"}
      />
    {/if}
    {#if counter >= 8}
      <Prompt
        show={counter >= 8}
        path="~/Documents/cv/education"
        command="ls"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 7}
      <Prompt
        show={counter >= 7}
        path="~/Documents/cv"
        command="cd education"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 7}
      <Pida show={counter >= 7} />
    {/if}
    {#if counter >= 6}
      <Prompt
        show={counter >= 6}
        path="~/Documents/cv"
        command="cat about"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 6}
      <Result
        show={counter >= 6}
        folders={"education employment_history skills socials"}
        result={"about"}
      />
    {/if}
    {#if counter >= 5}
      <Prompt
        show={counter >= 5}
        path="~/Documents/cv"
        command="ls"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 4}
      <Prompt
        show={counter >= 4}
        path="~/Documents"
        command="cd cv"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 3}
      <Clone show={counter >= 3} bind:counter />
    {/if}
    {#if counter >= 2}
      <Prompt
        show={counter >= 2}
        path="~/Documents"
        command="git clone https://github.com/pidanou/cv.git"
        bind:counter
        bind:this={component}
      />
    {/if}
    {#if counter >= 1}
      <Prompt
        show={counter >= 1}
        path="~"
        command="cd Documents"
        bind:counter
        bind:this={component}
      />
    {/if}
    <Result
      show={counter >= 1}
      folders="Desktop    Downloads  Music Videos
    Documents  Pictures  Public"
      result=""
    />
    {#if counter >= 0}
      <Prompt
        show={counter >= 0}
        path="~"
        command="ls"
        bind:counter
        bind:this={component}
      />
      <Tutorial bind:counter />{/if}
  </WindowBody>
</div>

<style>
  .container {
    height: 80%;
  }
</style>
