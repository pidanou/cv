<script>
  import { draggable } from "@neodrag/svelte";
  import MediaQuery from "svelte-media-queries";

  $: outerWidth = 0;
  $: innerWidth = 0;
  $: outerHeight = 0;
  $: innerHeight = 0;

  export let tabName;
</script>

<svelte:window
  bind:innerWidth
  bind:outerWidth
  bind:innerHeight
  bind:outerHeight
/>

<MediaQuery query="(max-width: 1023px)" let:matches>
  {#if matches}
    <div class="window mobile" style="height: {innerHeight}px;">
      <div class="header">
        <div class="tab"><div id="tabName">{tabName}</div></div>
        <div class="tributton">
          <button class="red" />
          <button class="yellow" />
          <button class="green" />
        </div>
      </div>
      <div class="page">
        <slot />
      </div>
    </div>
  {/if}
</MediaQuery>

<MediaQuery query="(min-width: 1024px)" let:matches>
  {#if matches}
    <div use:draggable={{ cancel: ".page" }} class="window desktop">
      <div class="header">
        <div class="tab"><div id="tabName">{tabName}</div></div>
        <div class="tributton">
          <button class="red" />
          <button class="yellow" />
          <button class="green" />
        </div>
      </div>
      <div class="page">
        <slot />
      </div>
    </div>
  {/if}
</MediaQuery>

<style>
  @import url("https://fonts.cdnfonts.com/css/sf-mono");
  :global(button) {
    padding: 0;
  }

  .window {
    background-color: rgba(0, 0, 0, 0.9);
    color: #fff;
    font-family: "SF Mono", sans-serif;
  }
  .window.mobile {
    margin: 0;
  }

  .mobile .page {
    height: 90%;
    width: 100%;
    margin: 0;
  }

  .desktop .header {
    border-radius: 15px 15px 0px 0px;
  }

  .header {
    background-color: rgba(59, 54, 62);
    height: 30px;
    text-align: center;
    display: flex;
  }

  .tributton {
    order: 0;
    width: 3em;
    height: 100%;
    padding-left: 1em;
    display: flex;
    gap: 0.3em;
    align-items: center;
  }

  .red {
    background-color: rgb(190, 60, 42);
    height: 0.8em;
    border-radius: 50%;
    border: none;
    width: 0.8em;
    cursor: pointer;
  }

  .yellow {
    background-color: rgb(231, 149, 56);
    width: 0.8em;
    height: 0.8em;
    border: none;
    border-radius: 50%;
    cursor: pointer;
  }

  .green {
    background-color: rgb(72, 194, 88);
    width: 0.8em;
    height: 0.8em;
    border: none;
    border-radius: 50%;
    cursor: pointer;
  }

  .window.desktop {
    background-color: rgba(0, 0, 0, 0.9);
    border-radius: 15px;
    height: 80%;
    width: 1024px;
    border-radius: 15px;
    padding-bottom: 2em;
  }

  .page {
    height: 100%;
    display: flex;
    flex-direction: column-reverse;
    overflow-y: auto;
    overflow-x: hidden;
    -ms-overflow-style: none; /* IE and Edge */
  }

  .page::-webkit-scrollbar {
    display: none;
  }

  .page > :first-child {
    margin-top: auto;
  }

  .tab {
    order: 1;
    width: 100%;
    margin-right: 4em;
    text-align: center;
    vertical-align: middle;
  }

  #tabName {
    margin: 0;
    padding-top: 0.33em;
  }
</style>
