<script>
  import Typewriter from "svelte-typewriter/Typewriter.svelte";
  export let show;
  export let counter;

  function changeState() {
    counter++;
  }
</script>

{#if show}
  <Typewriter mode={"cascade"} interval={0} on:done={changeState}>
    <div class="container">
      <p>Cloning into 'cv'...</p>
      <p>remote: Enumerating objects: 68, done.</p>
      <p>remote: Counting objects: 100% (68/68), done.</p>
      <p>remote: Compressing objects: 100% (48/48), done.</p>
      <p>remote: Total 68 (delta 14), reused 66 (delta 12), pack-reused 0</p>
      <p>Receiving objects: 100% (68/68), 4.51 MiB | 8.49 MiB/s, done.</p>
      <p>Resolving deltas: 100% (14/14), done.</p>
    </div>
  </Typewriter>
{/if}

<style>
  div {
    margin-bottom: 2px;
  }

  p {
    margin: 0;
    margin-left: 10px;
  }
</style>
