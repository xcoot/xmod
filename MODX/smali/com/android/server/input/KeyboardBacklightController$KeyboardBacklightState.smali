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

    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 6
    invoke-static {}, Lcom/android/server/input/InputFeatureFlagProvider;->isAmbientKeyboardBacklightControlEnabled()Z

    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 12
    iput p2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    .line 14
    iput-object p3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 16
    sget-object p1, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightCustomLevelsOverride:Ljava/util/Optional;

    .line 18
    sget-boolean p2, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_CUSTOM_LEVELS_ENABLED:Z

    .line 20
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 36
    sget-object p1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    .line 38
    goto :goto_3

    .line 39
    :cond_0
    invoke-virtual {p3}, Landroid/hardware/lights/Light;->getPreferredBrightnessLevels()[I

    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_5

    .line 45
    array-length p2, p1

    .line 46
    if-nez p2, :cond_1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance p2, Ljava/util/TreeSet;

    .line 51
    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    .line 54
    const/4 p3, 0x0

    .line 55
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 62
    array-length v0, p1

    .line 63
    move v1, p3

    .line 64
    :goto_0
    const/16 v2, 0xff

    .line 66
    if-ge v1, v0, :cond_3

    .line 68
    aget v3, p1, v1

    .line 70
    if-lez v3, :cond_2

    .line 72
    if-ge v3, v2, :cond_2

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p2, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    .line 94
    move-result p1

    .line 95
    add-int/lit8 p1, p1, -0x1

    .line 97
    const/16 v0, 0xa

    .line 99
    if-le p1, v0, :cond_4

    .line 101
    sget-object p1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    .line 107
    move-result p1

    .line 108
    new-array p1, p1, [I

    .line 110
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object p2

    .line 114
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 120
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/Integer;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 129
    move-result v0

    .line 130
    add-int/lit8 v1, p3, 0x1

    .line 132
    aput v0, p1, p3

    .line 134
    move p3, v1

    .line 135
    goto :goto_1

    .line 136
    :cond_5
    :goto_2
    sget-object p1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    .line 138
    :cond_6
    :goto_3
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 140
    return-void
.end method


# virtual methods
.method public final setBacklightValue(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 3
    iget-object v1, v0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 5
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 7
    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    .line 10
    move-result v2

    .line 11
    iget v3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    .line 13
    invoke-interface {v1, v3, v2}, Lcom/android/server/input/NativeInputManagerService;->getLightColor(II)I

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 20
    move-result v1

    .line 21
    if-ne v1, p1, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v2, Lcom/android/server/input/InputFeatureFlagProvider;->sKeyboardBacklightAnimationOverride:Ljava/util/Optional;

    .line 26
    sget-boolean v4, Lcom/android/server/input/InputFeatureFlagProvider;->KEYBOARD_BACKLIGHT_ANIMATION_ENABLED:Z

    .line 28
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Boolean;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 46
    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 56
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 59
    :cond_1
    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

    .line 61
    invoke-interface {v0, v1, p1}, Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;->makeIntAnimator(II)Landroid/animation/ValueAnimator;

    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 67
    new-instance v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;

    .line 69
    invoke-direct {v0, p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 77
    sget-wide v0, Lcom/android/server/input/KeyboardBacklightController;->TRANSITION_ANIMATION_DURATION_MILLIS:J

    .line 79
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 89
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 91
    invoke-virtual {p0}, Landroid/hardware/lights/Light;->getId()I

    .line 94
    move-result p0

    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 99
    move-result p1

    .line 100
    invoke-interface {v0, v3, p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    .line 103
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "KeyboardBacklightState{Light="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 10
    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", BrightnessLevel="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    .line 24
    const-string/jumbo v1, "}"

    .line 27
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
