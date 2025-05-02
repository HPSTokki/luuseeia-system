<template>
    <div id="signupContainer" class="form-style">
        <form action="" id="signUpForm" class="grid grid-cols-1 content-center gap-2 w-full p-4 overflow-hidden">
            <h2 class="text-center font-bold text-2xl" style="color: var(--large-text-button);">Sign Up</h2>
            <p>Please fill out all blank fields. </p>
            <div class="form-fields">
                <label for="name">Name: </label>
                <input type="text" placeholder="Enter Name" id="name" required>
            </div>
            <div class="form-fields">
                <label for="email">Email: </label>
                <input type="email" placeholder="Enter Email" id="email" required>
            </div>
            <div class="form-fields">
                <label for="password">Password <span title="Password must be 8+ characters with symbols">&#8505;</span>:</label>
                <input type="password" placeholder="Enter Password" id="password" required>
            </div>
            <div class="form-fields">
                <label for="confPassword">Confirm Password:</label>
                <input type="password" placeholder="Confirm Password" id="confPassword" required>
            </div>
            <div class="button-fields">
                <button type="submit" class="buttonStyle">Sign Up</button>
                <p>Already have an account? <span class="cursor-pointer underline underline-offset-1 hover:text-blue-500" type="button" @click="$emit('switch-view', 'LogIn')">Log In</span></p>
            </div>
        </form>
    </div>
</template>

<script setup lang="ts">

</script>

<style>

</style>