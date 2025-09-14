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

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_CONTROL_ENABLED:Z

    .line 19
    invoke-static {}, Landroid/sysprop/InputProperties;->enable_keyboard_backlight_animation()Ljava/util/Optional;

    .line 22
    move-result-object v0

    .line 23
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result v0

    .line 35
    sput-boolean v0, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_ANIMATION_ENABLED:Z

    .line 37
    invoke-static {}, Landroid/sysprop/InputProperties;->enable_keyboard_backlight_custom_levels()Ljava/util/Optional;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    move-result v0

    .line 51
    sput-boolean v0, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_CUSTOM_LEVELS_ENABLED:Z

    .line 53
    invoke-static {}, Landroid/sysprop/InputProperties;->enable_ambient_keyboard_backlight_control()Ljava/util/Optional;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Boolean;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    move-result v0

    .line 67
    sput-boolean v0, Lcom/android/server/input/InputFeatureFlagProvider;->AMBIENT_KEYBOARD_BACKLIGHT_CONTROL_ENABLED:Z

    .line 69
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightControlOverride:Ljava/util/Optional;

    .line 75
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightAnimationOverride:Ljava/util/Optional;

    .line 81
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightCustomLevelsOverride:Ljava/util/Optional;

    .line 87
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sAmbientKeyboardBacklightControlOverride:Ljava/util/Optional;

    .line 93
    return-void
.end method

.method public static isAmbientKeyboardBacklightControlEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/input/InputFeatureFlagProvider;->sAmbientKeyboardBacklightControlOverride:Ljava/util/Optional;

    .line 3
    sget-boolean v1, Lcom/android/server/input/InputFeatureFlagProvider;->AMBIENT_KEYBOARD_BACKLIGHT_CONTROL_ENABLED:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method
