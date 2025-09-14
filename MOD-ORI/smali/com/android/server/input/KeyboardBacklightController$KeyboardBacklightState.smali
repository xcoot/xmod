.class public final Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mBrightnessLevel:I

.field public final mBrightnessValueForLevel:[I

.field public final mDeviceId:I

.field public final mLight:Landroid/hardware/lights/Light;

.field public mUseAmbientController:Z

.field public final synthetic this$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/lights/Light;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/input/InputFeatureFlagProvider;->isAmbientKeyboardBacklightControlEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 11
    .line 12
    iput p2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 15
    .line 16
    sget-object p1, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightCustomLevelsOverride:Ljava/util/Optional;

    .line 17
    .line 18
    sget-boolean p2, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_CUSTOM_LEVELS_ENABLED:Z

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    sget-object p1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_0
    invoke-virtual {p3}, Landroid/hardware/lights/Light;->getPreferredBrightnessLevels()[I

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    array-length p2, p1

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance p2, Ljava/util/TreeSet;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 p3, 0x0

    .line 55
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    array-length v0, p1

    .line 63
    move v1, p3

    .line 64
    :goto_0
    const/16 v2, 0xff

    .line 65
    .line 66
    if-ge v1, v0, :cond_3

    .line 67
    .line 68
    aget v3, p1, v1

    .line 69
    .line 70
    if-lez v3, :cond_2

    .line 71
    .line 72
    if-ge v3, v2, :cond_2

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p2, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    add-int/lit8 p1, p1, -0x1

    .line 96
    .line 97
    const/16 v0, 0xa

    .line 98
    .line 99
    if-le p1, v0, :cond_4

    .line 100
    .line 101
    sget-object p1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    new-array p1, p1, [I

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/lit8 v1, p3, 0x1

    .line 131
    .line 132
    aput v0, p1, p3

    .line 133
    .line 134
    move p3, v1

    .line 135
    goto :goto_1

    .line 136
    :cond_5
    :goto_2
    sget-object p1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    .line 137
    .line 138
    :cond_6
    :goto_3
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 139
    .line 140
    return-void
.end method


# virtual methods
.method public final setBacklightValue(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    .line 12
    .line 13
    invoke-interface {v1, v3, v2}, Lcom/android/server/input/NativeInputManagerService;->getLightColor(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ne v1, p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v2, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightAnimationOverride:Ljava/util/Optional;

    .line 25
    .line 26
    sget-boolean v4, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_ANIMATION_ENABLED:Z

    .line 27
    .line 28
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

    .line 60
    .line 61
    invoke-interface {v0, v1, p1}, Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;->makeIntAnimator(II)Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    sget-wide v0, Lcom/android/server/input/KeyboardBacklightController;->TRANSITION_ANIMATION_DURATION_MILLIS:J

    .line 78
    .line 79
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/hardware/lights/Light;->getId()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-interface {v0, v3, p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "KeyboardBacklightState{Light="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", BrightnessLevel="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    .line 23
    .line 24
    const-string/jumbo v1, "}"

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
