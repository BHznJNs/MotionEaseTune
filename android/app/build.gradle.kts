import java.util.Properties
import java.io.FileInputStream

val signingPropertiesFile = file("./signing.properties")
val signingProperties = Properties()

if (signingPropertiesFile.exists()) {
    signingProperties.load(FileInputStream(signingPropertiesFile))
    println(">>> Loaded signing.properties") // Optional: for debugging during build
} else {
    println(">>> signing.properties not found. Release build might not be signed correctly.") // Optional: warning
}

val storeFileProp = signingProperties.getProperty("storeFile")
val storePasswordProp = signingProperties.getProperty("storePassword")
val keyAliasProp = signingProperties.getProperty("keyAlias")
val keyPasswordProp = signingProperties.getProperty("keyPassword")


plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.bhznjns.motion_ease_tune"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.bhznjns.motion_ease_tune"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    dependenciesInfo {
        // Disables dependency metadata when building APKs (for IzzyOnDroid/F-Droid)
        includeInApk = false
        // Disables dependency metadata when building Android App Bundles (for Google Play)
        includeInBundle = false
    }

    signingConfigs {
        create("release") {
            if (storeFileProp != null && storePasswordProp != null && keyAliasProp != null && keyPasswordProp != null) {
                storeFile = file(storeFileProp)
                storePassword = storePasswordProp
                keyAlias = keyAliasProp
                keyPassword = keyPasswordProp
            } else {
                println(">>> Incomplete signing properties. Release build may not be signed correctly.") // Optional: warning
            }
        }
    }

    buildTypes {
        release {
            // Signing with the debug keys for now, so `flutter run --release` works.
            // signingConfig = signingConfigs.getByName("debug")
            if (storeFileProp != null) {
                 signingConfig = signingConfigs.getByName("release")
            } else {
                 println(">>> Release build signing config not applied.") // Optional: warning
            }
        }
    }
}

flutter {
    source = "../.."
}
