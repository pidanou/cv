<script>
  export let result;
  export let show;
  export let folders;
</script>

<div class="container cli-input">
  {#if show}
    {#if folders}
      <div class="cli-input folders" folders>{folders}</div>
    {/if}
    {#if result}
      <div class="cli-input result">
        {result}
      </div>
    {/if}
  {/if}
</div>

<style>
  .container {
    display: flex;
    flex-wrap: nowrap;
  }
  .cli-input {
    font-weight: 500;
    padding: 2px;
  }

  .result {
    margin-left: 0.8em;
    white-space: nowrap;
  }

  .folders {
    margin-left: 0.8em;
    color: rgb(10, 92, 21);
    font-weight: bold;
    white-space: nowrap;
  }
</style>
