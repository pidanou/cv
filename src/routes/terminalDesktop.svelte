<script>
  import Window from "$lib/components/Window.svelte";
  import Pida from "$lib/components/About.svelte";
  import Prompt from "$lib/components/Prompt.svelte";
  import Result from "$lib/components/Result.svelte";
  import Clone from "$lib/components/Asciiart-clone.svelte";
  import Blank from "$lib/components/Blank.svelte";
  import Jobs from "$lib/components/Jobs.svelte";
  import Education from "$lib/components/Education.svelte";
  import Skills from "$lib/components/Skills.svelte";
  import Socials from "$lib/components/Socials.svelte";

  let counter = 0;

  function fast() {
    counter = 100;
  }

  export let tabName;
</script>

<Window {tabName}>
  <Blank />
  <Socials show={counter >= 18} />
  <Prompt
    show={counter >= 17}
    path="~/Documents/cv"
    folder="/socials"
    command="ls"
    bind:counter
  />
  <Prompt
    show={counter >= 16}
    path="~/Documents"
    folder="/cv"
    command="cd socials"
    bind:counter
  />
  <Skills show={counter >= 16} />
  <Prompt
    show={counter >= 15}
    path="~/Documents/cv"
    folder="/skills"
    command="cat README.md && cd .."
    bind:counter
  />
  <Result show={counter >= 15} folders={"DEVOPS WIP"} result={"README.md"} />
  <Prompt
    show={counter >= 14}
    path="~/Documents/cv"
    folder="/skills"
    command="ls"
    bind:counter
  />
  <Prompt
    show={counter >= 13}
    path="~/Documents"
    folder="/cv"
    command="cd skills"
    bind:counter
  />
  <Jobs show={counter >= 13} />
  <Prompt
    show={counter >= 12}
    path="~/Documents/cv"
    folder="/employment_history"
    command="cat README.md && cd .."
    bind:counter
  />
  <Result
    show={counter >= 12}
    folders={"KEOLIS WAVESTONE SMART-CHAIN"}
    result={"README.md"}
  />
  <Prompt
    show={counter >= 11}
    path="~/Documents/cv"
    folder="/employment_history"
    command="ls"
    bind:counter
  />
  <Prompt
    show={counter >= 10}
    path="~/Documents"
    folder="/cv"
    command="cd employment_history"
    bind:counter
  />
  <Education show={counter >= 10} />
  <Prompt
    show={counter >= 9}
    path="~/Documents/cv"
    folder="/education"
    command="cat README.md && cd .."
    bind:counter
  />
  <Result
    show={counter >= 9}
    folders={"Lycee_Lavoisier ISEP INHA "}
    result={"README.md"}
  />
  <Prompt
    show={counter >= 8}
    path="~/Documents/cv"
    folder="/education"
    command="ls"
    bind:counter
  />
  <Prompt
    show={counter >= 7}
    path="~/Documents"
    folder="/cv"
    command="cd education"
    bind:counter
  />
  <Pida show={counter >= 7} />
  <Prompt
    show={counter >= 6}
    path="~/Documents"
    folder="/cv"
    command="cat about"
    bind:counter
  />
  <Result
    show={counter >= 6}
    folders={"education employment_history skills socials"}
    result={"about"}
  />
  <Prompt
    show={counter >= 5}
    path="~/Documents"
    folder="/cv"
    command="ls"
    bind:counter
  />
  <Prompt
    show={counter >= 4}
    path="~"
    folder="/Documents"
    command="cd cv"
    bind:counter
  />
  <Clone show={counter >= 3} bind:counter />
  <Prompt
    show={counter >= 2}
    path="~"
    folder="/Documents"
    command="git clone https://github.com/pidanou/cv.git"
    bind:counter
  />
  <Prompt
    show={counter >= 1}
    path="~"
    folder=""
    command="cd Documents"
    bind:counter
  />
  <Result
    show={counter >= 1}
    folders="Desktop    Downloads  Music Videos
    Documents  Pictures  Public"
  />
  <Prompt show={counter >= 0} path="~" folder="" command="ls" bind:counter />
</Window>

<style>
</style>
