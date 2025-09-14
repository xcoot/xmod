.class public abstract Lcom/android/server/input/InputFeatureFlagProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AMBIENT_KEYBOARD_BACKLIGHT_CONTROL_ENABLED:Z

.field public static final KEYBOARD_BACKLIGHT_ANIMATION_ENABLED:Z

.field public static final KEYBOARD_BACKLIGHT_CONTROL_ENABLED:Z

.field public static final KEYBOARD_BACKLIGHT_CUSTOM_LEVELS_ENABLED:Z

.field public static final sAmbientKeyboardBacklightControlOverride:Ljava/util/Optional;

.field public static final sKeyboardBacklightAnimationOverride:Ljava/util/Optional;

.field public static final sKeyboardBacklightControlOverride:Ljava/util/Optional;

.field public static final sKeyboardBacklightCustomLevelsOverride:Ljava/util/Optional;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/sysprop/InputProperties;->enable_keyboard_backlight_control()Ljava/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_CONTROL_ENABLED:Z

    .line 18
    .line 19
    invoke-static {}, Landroid/sysprop/InputProperties;->enable_keyboard_backlight_animation()Ljava/util/Optional;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sput-boolean v0, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_ANIMATION_ENABLED:Z

    .line 36
    .line 37
    invoke-static {}, Landroid/sysprop/InputProperties;->enable_keyboard_backlight_custom_levels()Ljava/util/Optional;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sput-boolean v0, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_CUSTOM_LEVELS_ENABLED:Z

    .line 52
    .line 53
    invoke-static {}, Landroid/sysprop/InputProperties;->enable_ambient_keyboard_backlight_control()Ljava/util/Optional;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sput-boolean v0, Lcom/android/server/input/InputFeatureFlagProvider;->AMBIENT_KEYBOARD_BACKLIGHT_CONTROL_ENABLED:Z

    .line 68
    .line 69
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightControlOverride:Ljava/util/Optional;

    .line 74
    .line 75
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightAnimationOverride:Ljava/util/Optional;

    .line 80
    .line 81
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightCustomLevelsOverride:Ljava/util/Optional;

    .line 86
    .line 87
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sAmbientKeyboardBacklightControlOverride:Ljava/util/Optional;

    .line 92
    .line 93
    return-void
.end method

.method public static isAmbientKeyboardBacklightControlEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sAmbientKeyboardBacklightControlOverride:Ljava/util/Optional;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/input/InputFeatureFlagProvider;->AMBIENT_KEYBOARD_BACKLIGHT_CONTROL_ENABLED:Z

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method
