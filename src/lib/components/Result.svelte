<script>
  export let counter;
  export let result;
  export let show;
</script>

{#if show}
  <div class="cli-input result">
    {result}
  </div>
{/if}

<style>
  .cli-input {
    font-weight: 500;
    padding: 2px;
  }

  .result {
    margin-left: 0.8em;
  }
</style>
