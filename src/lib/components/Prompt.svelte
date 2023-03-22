<script>
  export let command;
  export let folder;
  export let path;
</script>

<div class="container">
    <p class="cli-input path" id="first">{path}</p><p class="cli-input path" id="last">{folder}</p><p class="cli-input">{command}</p>

</div>

<style>

  p {
    margin: 0;
  }

  .container {
    display: flex;
    flex-wrap: wrap;
  }
  .cli-input {
    font-weight: 500;
    padding: 2px;

  }

  .path {
    background-color: rgb(74, 77, 80);
  }

  #first {
    color: aliceblue;
    padding-right: 0;
  }

  #last {
    margin-right: 0.5em;
    color: rgb(43, 146, 187);
    font-weight: 700;
    padding-right: 4px;
    padding-left: 0;
  }
</style>
