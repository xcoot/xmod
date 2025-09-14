.class public final synthetic Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyboardLedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardLedController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyboardLedController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyboardLedController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mAudioManager:Landroid/media/AudioManager;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/hardware/SensorPrivacyManager;->areAnySensorPrivacyTogglesEnabled(I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move p1, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 37
    :goto_1
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ge v2, v0, :cond_5

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/view/InputDevice;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-static {v0}, Lcom/android/server/input/KeyboardLedController;->getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/server/input/KeyboardLedController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/hardware/lights/Light;->getId()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-interface {v4, v3, v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    .line 72
    .line 73
    .line 74
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, [I

    .line 80
    .line 81
    array-length v0, p1

    .line 82
    :goto_2
    if-ge v2, v0, :cond_5

    .line 83
    .line 84
    aget v3, p1, v2

    .line 85
    .line 86
    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardLedController;->onInputDeviceChanged(I)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    :goto_3
    return v1
.end method
