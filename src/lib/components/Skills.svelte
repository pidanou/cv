<script>
  export let show;
</script>

{#if show}
  <div>
    <pre>
       /$$$$$$  /$$   /$$ /$$$$$$ /$$       /$$        /$$$$$$ 
      /$$__  $$| $$  /$$/|_  $$_/| $$      | $$       /$$__  $$
     | $$  \__/| $$ /$$/   | $$  | $$      | $$      | $$  \__/
     |  $$$$$$ | $$$$$/    | $$  | $$      | $$      |  $$$$$$ 
      \____  $$| $$  $$    | $$  | $$      | $$       \____  $$
      /$$  \ $$| $$\  $$   | $$  | $$      | $$       /$$  \ $$
     |  $$$$$$/| $$ \  $$ /$$$$$$| $$$$$$$$| $$$$$$$$|  $$$$$$/
      \______/ |__/  \__/|______/|________/|________/ \______/ 
  <pre class="text">  o-> <strong>Cloud</strong>     
  |      |_ AWS       <p class="good">★ ★ ★ ★ ★</p><p class="bad" />
  |      |_ GCP       <p class="good">★ ★ ★ ★</p><p class="bad"> ★ </p>
  |      |_ Scaleway  <p class="good">★ ★ ★ ★</p><p class="bad"> ★ </p>
  |      |_ Azure     <p class="good">★ ★ ★</p><p class="bad"> ★ ★</p>
  |
  o-> <strong>Development and tools </strong>       
  |      |_ IaC: Terraform, Terragrunt, CloudFormation
  |      |_ Development: Python, Javascript, Golang, Shell, SQL, NoSQL, Git
  |      |_ Containers and VM: Docker, Kubernetes, Linux
  |      |_ CICD: CircleCI, Jenkins
  |      |_ Monitoring: Prometheus, Loki, Thanos, Grafana
  |      |_ Blockchain: Ethereum, Tezos, Cardano
  |      |_ Others: Hashicorp Vault, SonarQube, ArgoCD, Teleport
  |
  o-> <strong>Languages</strong>     
         |_ French:   <p class="good">★ ★ ★ ★ ★</p>
         |_ English:  <p class="good">★ ★ ★ ★ </p><p class="bad">★</p>
         |_ Khmer:    <p class="good">★ ★ ★ ★ </p><p class="bad">★</p>
         |_ Spanish:  <p class="good">★ ★ </p><p class="bad">★ ★ ★</p>      
    </pre>
</pre>
  </div>
{/if}

<style>
  strong {
    color: rgb(241, 168, 58);
  }
  p {
    display: inline;
    flex-direction: row;
  }

  .good {
    color: gold;
  }

  .bad {
    color: grey;
  }

  .text {
    line-height: 1.6em;
    font-size: 0.875rem;
  }
</style>
