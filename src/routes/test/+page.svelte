<script>
  // import ScrollMagic from "scrollmagic";
  // import gsap from "gsap";

  // let myText = "Avec le temps, on apprend que rien n’est éternel…";
  // let myTextLength = myText.length;

  // function typing(displayedLength) {
  //   if (displayedLength <= myTextLength) {
  //     document
  //       .querySelector("#text")
  //       .text(myText.substring(0, displayedLength));
  //   }
  // }
  // let controller = new ScrollMagic.Controller();
  // let typewritingOnScroll = gsap.timeline();

  // let typewritingScene = new ScrollMagic.Scene({
  //   triggerElement: "#text",
  //   duration: 300,
  // })
  //   .addEventListener("progress", function () {
  //     let scrollProgress = Math.ceil(
  //       typewritingScene.progress() * myTextLength
  //     );
  //     typing(scrollProgress);
  //   })

  //   .setPin("#text")
  //   .addIndicators({ name: "typewriting" })
  //   .setTween(typewritingOnScroll)
  //   .addTo(controller);
</script>

<div class="wrapper">
  {test}
  https://codepen.io/cyrilvernier/pen/wvwZBaq
  <div class="section spacer">
    <h1>typewriting on scroll</h1>
    <p>please scroll down</p>
  </div>
  <div class="section">
    <p id="text" />
  </div>
  <div class="section spacer" />
</div>

<style>
  h1 {
    font-size: 3rem;
    margin: 30vh;
  }

  .section,
  .spacer {
    height: 100vh;
    font-family: "Special Elite", cursive;
  }

  .spacer:nth-child(1) {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding-bottom: 50vh;
  }

  #text {
    font-size: 3rem;
    text-align: center;
    font-weight: 700;
  }
</style>
