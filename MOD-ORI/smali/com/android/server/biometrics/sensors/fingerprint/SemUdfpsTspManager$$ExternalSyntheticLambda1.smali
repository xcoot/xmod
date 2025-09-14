.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->getInputDeviceManager()Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "FingerprintService"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "sendCommand fail : InputDeviceManager is null"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iput p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mLastCmd:I

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    packed-switch p0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :pswitch_0
    :try_start_0
    iget v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    .line 29
    .line 30
    invoke-interface {v1, v3, v4, v4, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :pswitch_1
    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setTemperature(I)I

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :pswitch_2
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 41
    .line 42
    invoke-interface {v1, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodLpMode(I)I

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_3
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mFodRect:Landroid/graphics/Rect;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mFodRect:Landroid/graphics/Rect;

    .line 57
    .line 58
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    invoke-interface {v1, v3, v4, v5, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodRect(IIII)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :pswitch_4
    invoke-interface {v1, v4, v4, v4, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :pswitch_5
    invoke-interface {v1, v3, v4, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_6
    invoke-interface {v1, v3, v3, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_7
    invoke-interface {v1, v3, v4, v4, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_8
    invoke-interface {v1, v3, v3, v4, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string/jumbo v3, "sendCommand fail with e : "

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_1
    const-string/jumbo v0, "setTspMode: ["

    .line 113
    .line 114
    .line 115
    const-string v1, "] done"

    .line 116
    .line 117
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
