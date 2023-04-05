plugins {
    //trick: for the same plugin versions in all sub-modules
    id(androidApp).version(Versions.android_gradle_plugin).apply(false)
    id(androidLib).version(Versions.android_gradle_plugin).apply(false)
    kotlin(androidPlugin).version(Versions.kotlin_gradle_plugin).apply(false)
    kotlin(multiplatform).version(Versions.kotlin_gradle_plugin).apply(false)
}

tasks.register("clean", Delete::class) {
    delete(rootProject.buildDir)
}
