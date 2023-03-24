<script>
  export let show;
</script>

{#if show}
  <div>
    <pre>
      ███████  ██████   ██████ ██  █████  ██      ███████ 
      ██      ██    ██ ██      ██ ██   ██ ██      ██      
      ███████ ██    ██ ██      ██ ███████ ██      ███████ 
           ██ ██    ██ ██      ██ ██   ██ ██           ██ 
   __ ███████  ██████   ██████ ██ ██   ██ ███████ ███████
  |    
  o-> <a href="https://www.linkedin.com/in/frederic-eang/">Linkedin</a
      >  <p>(Oh yeah, my full name is Frederic Pidanou Eang, but just call me Pida :) )  </p> 
  |
  o-> <a href="https://www.strava.com/athletes/5059983">Strava</a>          
 
</pre>
  </div>
{/if}

<style>
  a {
    color: white;
  }

  p {
    display: inline;

    font-size: 0.7em;
  }
</style>
