<script>
  import Window from "$lib/components/Window.svelte";

  export let tabName;
</script>

<Window tabName={tabName}>
  <slot />
</Window>

<style>
</style>
