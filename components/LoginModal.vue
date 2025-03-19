<script lang="ts">
    export default {
        data() {
            return {
                isModalOpen: false,
                isSignUpOpen: false
            }
        },
        methods: {
            openSignIn() {
                this.isModalOpen = true;
            },
            closeModal() {
                this.isModalOpen = false;
            },
            openSignUp() {
                this.isSignUpOpen = true;
                this.isModalOpen = false;
            },
            closeSignUp() {
                this.isSignUpOpen = false;
            }
        }
    }
</script>

<template>
    <div class="flex justify-center items-center flex-col">
        <h1 class="text-3xl shadow-sm w-full text-center py-4">Login</h1>
        <div class="modal">
            <div class="modal-content flex flex-col items-center flex-auto gap-3 justify-start">
                <span class="close">&times;</span>
                <h2>LuuSeeIA</h2>
                <form action="" class="flex flex-col items-center flex-auto gap-3">
                    <label for="username">Email</label>
                    <input type="email" id="email" name="email" placeholder="Email">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Password">
                    <div class="buttonField flex gap-52">
                        <button type="submit">Login</button>
                        <button type="button" @click="openSignUp">Sign Up</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <SignUpModal v-if="isSignUpOpen" @close="closeSignUp"/>
</template>

<style lang="scss" scoped>

</style>