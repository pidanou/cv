<div class="terminal">
    <div class="header">
        <div>
            
        </div>
        <p>TERMINAL</p>
    </div>
    <slot />
</div>

<style>
    .terminal {
        background-color: rgba(0, 0, 0, 0.5);
        border-radius: 13px;
        height: 80%;
        width: auto;
        color: #fff;
        margin: auto;
    }

    .header {
        background-color: rgb(20, 22, 31);
        border-radius: 15px 15px 0px 0px;
        height: 1.7em;
        text-align: center;
    }
</style>