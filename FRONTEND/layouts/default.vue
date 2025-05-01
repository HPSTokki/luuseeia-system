<template>
    <header id="header" class="px-5 py-2 text-black bg-white shadow-md">
        <nav class="flex justify-between items-center">
            <div id="logoContainer" class="flex items-center">
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
        <div id="footerTextContainer">
            <h3>CONTACTS</h3>
            <p>Address: JP Rizal Street Sta, Lucia Novaliches, Quezon City, Metro Manila<br>
                Tel No.:9300309<br>Email: hsstalucia@depedqc.ph</p>
            <p>LuSeeIA &copy; 2023</p>
            <p>All rights reserved</p>
        </div>
    </footer>

</template>

<script setup lang="ts">

</script>

<style>
    #footer {
        @apply p-2 flex items-center justify-between bg-gray-100 text-gray-900 gap-24;
    }

    #footer hr{
        width: 1px;
    }

    #footer #footerLogoContainer {
        @apply w-24 h-24 flex items-center justify-center flex-1;
    }

    #footer #footerLogoContainer img {
        @apply w-full h-full object-contain;
    }

    #footer #footerTextContainer {
        @apply flex-1;
    }

    #logoContainer {
        height: 10%;
        width: 5%;
    }
</style>