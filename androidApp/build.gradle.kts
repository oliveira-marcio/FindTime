plugins {
    id("com.android.application")
    kotlin("android")
}

android {
    namespace = "com.raywenderlich.findtime.android"
    compileSdk = Versions.compile_sdk
    defaultConfig {
        applicationId = "com.raywenderlich.findtime.android"
        minSdk = Versions.min_sdk
        targetSdk = Versions.target_sdk
        versionCode = 1
        versionName = "1.0"
    }
    buildFeatures {
        compose = true
    }
    composeOptions {
        kotlinCompilerExtensionVersion = Versions.compose_compiler_version
    }
    packagingOptions {
        resources {
            excludes += "/META-INF/{AL2.0,LGPL2.1}"
        }
    }
    buildTypes {
        getByName("release") {
            isMinifyEnabled = false
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
    kotlinOptions {
        jvmTarget = "1.8"
    }
}

dependencies {
    implementation(project(":shared"))

    with(Deps) {
        implementation(napier)
        implementation(material)
    }

    //Compose
    with(Deps.Compose) {
        implementation(compiler)
        implementation(runtime)
        implementation(runtime_livedata)
        implementation(ui)
        implementation(tooling)
        implementation(tooling_preview)
        implementation(foundation)
        implementation(foundationLayout)
        implementation(material)
        implementation(material_icons)
        implementation(activity)
    }
}