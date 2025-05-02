<template>
    <div id="loginContainer" class="form-style h-5/6">
        <form action="" id="loginForm" class="grid grid-cols-1 content-center gap-10 w-full p-4 overflow-hidden">
            <h2 class="text-center font-bold text-2xl" style="color: var(--large-text-button);">Log In</h2>
            <div class="form-fields">
                <label for="email">Email: </label>
                <input type="email" placeholder="Enter Email" id="email" required>
            </div>
            <div class="form-fields">
                <label for="password">Password &#8505:</label>
                <input type="password" placeholder="Enter Password" id="password" required>
            </div>
            <div class="button-fields">
                <button type="submit" class="buttonStyle">Log In</button>
                <p>Already have an account? <span class="cursor-pointer underline underline-offset-1 hover:text-blue-500" type="button" @click="$emit('switch-view', 'SignUp')">Sign Up</span></p>
            </div>
        </form>
    </div>
</template>

<script setup lang="ts">

</script>

<style>

</style>