<template>
    <div>
        <header>
            Home Page
            <nav>
                <ul class="flex gap-4">
                    <li><nuxt-link to="/">Home</nuxt-link></li>
                    <li><nuxt-link to="/about">about</nuxt-link></li>
                    <li><nuxt-link to="/violationrecord">Violation Record</nuxt-link></li>
                </ul>
            </nav>
        </header>
    </div>
    <h3>Home Haha</h3>
    <div>
        <slot>

        </slot>
    </div>
</template>

<style lang="scss" scoped>

</style>