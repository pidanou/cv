<script>
  export let show;
</script>

{#if show}
  <div>
    <pre>
      ███████ ██   ██ ██ ██      ██      ███████ 
      ██      ██  ██  ██ ██      ██      ██      
      ███████ █████   ██ ██      ██      ███████ 
           ██ ██  ██  ██ ██      ██           ██ 
   __ ███████ ██   ██ ██ ███████ ███████ ███████ 
  |    
  o-> Cloud     
  |      |_ AWS       <p class="good">★ ★ ★ ★ ★</p><p class="bad" />
  |      |_ GCP       <p class="good">★ ★ ★ ★</p><p class="bad"> ★ </p>
  |      |_ Scaleway  <p class="good">★ ★ ★ ★</p><p class="bad"> ★ </p>
  |      |_ Azure     <p class="good">★ ★ ★</p><p class="bad"> ★ ★</p>
  |
  o-> Development and tools        
  |      |_ IaC: Terraform, Terragrunt, CloudFormation
  |      |_ Development: Python, Javascript, Golang, Shell, SQL, NoSQL, Git
  |      |_ Containers and VM: Docker, Kubernetes, Linux
  |      |_ CICD: CircleCI, Jenkins
  |      |_ Monitoring: Prometheus, Loki, Thanos, Grafana
  |      |_ Blockchain: Ethereum, Tezos, Cardano
  |      |_ Others: Hashicorp Vault, SonarQube, ArgoCD, Teleport
  |
  o-> Languages     
         |_ French:   <p class="good">★ ★ ★ ★ ★</p>
         |_ English:  <p class="good">★ ★ ★ ★ </p><p class="bad">★</p>
         |_ Khmer:    <p class="good">★ ★ ★ ★ </p><p class="bad">★</p>
         |_ Spanish:  <p class="good">★ ★ </p><p class="bad">★ ★ ★</p>      
 
</pre>
  </div>
{/if}

<style>
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
</style>
