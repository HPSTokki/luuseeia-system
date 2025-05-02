<template>
    <header id="header" class="px-5 py-1 text-black bg-white shadow-md">
        <nav class="flex justify-between items-center">
            <div id="logoContainer" class="flex items-center select-none ">
                <NuxtImg src="/LuSeeIA-Logo.png" alt="LuSeeIA"/>
            </div>
            <ul class="flex gap-4">
                <li><nuxt-link to="#">Contacts</nuxt-link></li>
                <li><nuxt-link to="#">Login</nuxt-link></li>
            </ul>
        </nav>
    </header>

    <slot>
        
    </slot>

    <footer id="footer">
        <div id="footerLogoContainer">
            <NuxtImg src="/LuSeeIA-Logo.png" alt="LuSeeIA Logo" />
        </div>
        <div id="copyRight">
            <p>LuSeeIA &copy; 2023</p>
            <p>All rights reserved</p>
        </div>
        <div id="footerTextContainer">
            <h3 class="">CONTACTS</h3>
            <p>Address: JP Rizal Street Sta, Lucia Novaliches, Quezon City, Metro Manila<br>
                Tel No.:9300309<br>Email: <a href="mailto:hsstalucia@depedqc.ph">hsstalucia@depedqc.ph</a></p>
        </div>
    </footer>

</template>

<script setup lang="ts">

</script>

<style scoped>
    #footer {
        @apply p-2 flex items-center justify-between text-gray-900 gap-24;
        background-color: var(--color-1);
        height: 12%;
        font-size: 0.7rem
    }

    #footer #footerLogoContainer {
        @apply w-10 h-10 flex items-center justify-center flex-1;
    }

    #footer #footerLogoContainer img {
        @apply w-full h-full object-contain;
        user-select: none;
        pointer-events: none;
    }

    #footer #footerTextContainer {
        @apply flex-1;
        
    }

    #footer #footerTextContainer h3 {
        @apply text-2xl font-bold;
        color: var(--large-text-button);
    }

    #footer #footerTextContainer p a {
        @apply font-bold underline-offset-2 underline;
    }

    #logoContainer {
        height: 15%;
        width: 5%;
    }
</style>