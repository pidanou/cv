<script>

    import Terminal from "./terminal.svelte";


</script>

<div class="background"></div>

<Terminal>some text</Terminal>

<style>
    .background {
        background-color: black;
        position: absolute;
        top: 0;
        height: 100vh;
        width: 100%;
    }
</style>
