<template>
    <main class="flex flex-col items-center justify-between h-screen bg-gray-100">
        <div id="introduction">
            <h4 class="font-bold text-3xl">Welcome to</h4>
            <h2 class="font-bold text-6xl" style="color: var(--large-text-button);">LuSeeIA</h2>
            <p>The LuSeeIA is a Decision Support System (DSS) developed for the Guidance Counseling Unit of  the Santa Lucia High School (SLHS). 
            <br> It is designed to help the Guidance Adviser to manage student violation reports more effectively</p>
        </div>
        <div id="loginPart">
            <div class="w-full h-full flex flex-col items-center justify-center">
                <div id="slideShowShi">
                    <NuxtImg id="slideImage" 
                    :src="images[currentIndex]" 
                    alt="slideshow"
                    v-if="images.length > 0"
                    class="slide-img"
                    draggable="false"/>
                </div>
            </div>
            <div class="w-full h-full flex flex-col items-center justify-center">
                <component :is="currentComponent" @switch-view="switchTo"></component>
            </div>
        </div>
    </main>
</template>

<script setup lang="ts">

    import { ref, onMounted, defineAsyncComponent, shallowRef } from 'vue';
    import LogIn from '~/components/auth/LogIn.vue';

    const images = [
        '/indexSlideshow/1.png',
        '/indexSlideshow/2.png',
    ]

    const currentIndex = ref(0);

    onMounted(() => {
        setInterval(() => {
            currentIndex.value = (currentIndex.value + 1) % images.length;
        }, 3000);
    })

    
    const SignUp = defineAsyncComponent({
        loader: () => import('~/components/auth/SignUp.vue'),
        delay: 5000,
    });

    const currentComponent = shallowRef(LogIn);

    function switchTo(viewName: any) {
        currentComponent.value = viewName === 'LogIn' ? LogIn : SignUp;
    }

</script>

<style scoped>

main {
    background-image: url('/public/indexBG.png');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}

#introduction {
    @apply flex flex-col items-start justify-center h-1/4 w-screen px-5;
}

#loginPart {
    @apply flex flex-auto h-1/2 w-screen items-center bg-slate-200 px-2 py-2;
}

#slideShowShi {
  width: 40rem;
  height: 90%;
  overflow: hidden;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

.slide-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  user-select: none;
  pointer-events: none;
  -webkit-user-drag: none;
  transition: opacity 0.5s ease-in-out;
}
    

</style>