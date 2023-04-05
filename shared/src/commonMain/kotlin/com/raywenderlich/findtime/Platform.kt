package com.raywenderlich.findtime

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform