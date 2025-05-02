<template>
    <main class="flex flex-col items-center justify-between h-screen bg-gray-100">
        <div id="introduction">
            <h4 class="font-bold text-2xl">Welcome to</h4>
            <h2 class="font-bold text-6xl" style="color: var(--large-text-button);">LuSeeIA</h2>
            <p>The LuSeeIA is a Decision Support System (DSS) developed for the Guidance Counseling Unit of  the Santa Lucia High School (SLHS). 
            <br> It is designed to help the Guidance Adviser to manage student violation reports more effectively</p>
        </div>
        <div id="loginPart">
            <div>
                <div id="slideShowShi">
                    <NuxtImg id="slideImage" 
                    :src="images[currentIndex]" 
                    alt="slideshow"
                    v-if="images.length > 0"
                    class="slide-img"
                    draggable="false"/>
                </div>
            </div>
            <div>
                Hello
            </div>
        </div>
    </main>
</template>

<script setup lang="ts">

    import { ref, onMounted } from 'vue';

    const images = [
        '../public/indexSlideshow/1.png',
        '../public/indexSlideshow/2.png',
    ]

    const currentIndex = ref(0);

    onMounted(() => {
        setInterval(() => {
            currentIndex.value = (currentIndex.value + 1) % images.length;
        }, 3000);
    })

</script>

<style>

#introduction {
    @apply flex flex-col items-start justify-center h-1/3 w-screen px-5;
}

#loginPart {
    @apply flex flex-auto h-1/2 w-screen justify-between items-center;
    background-color: red;
    padding: 2rem;
}

#slideShowShi {
  width: 90%;
  height: 90%;
  overflow: hidden;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

.slide-img {
  width: 100%;
  height: 100%;
  object-fit: contain;
  user-select: none;
  pointer-events: none;
  -webkit-user-drag: none;
  transition: opacity 0.5s ease-in-out;
}
    

</style>