<script lang="ts">
import LoginModal from '~/components/LoginModal.vue';
import SignUpModal from '~/components/SignUpModal.vue';

export default {
    components: {
        LoginModal,
        SignUpModal
    },
    data() {
        return {
            isModalOpen: false,
            isSignUpOpen: false
        }
    },
    methods: {
        openModal() {
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
    <div>
        <header class="headerStyles">
            <h2 class="h2Header">Home</h2>
            <nav>
                <ul class="flex gap-6 justify-center items-center">
                    <li><nuxt-link to="/">Home</nuxt-link></li>
                    <li><nuxt-link to="/about">About</nuxt-link></li>
                    <li><button @click="openSignUp">Sign Up</button></li>
                    <li><button class="logInBtn" @click="openModal">Login</button></li>
                </ul>
            </nav>
        </header>
    </div>
    <h3>Home Haha</h3>
    <div>
        <slot>

        </slot>
        <LoginModal class="logInModal" v-if="isModalOpen" @close="closeModal"/>
        <SignUpModal v-if="isSignUpOpen" @close="closeSignUp"/>
    </div>
</template>

<style lang="scss" scoped>

</style>