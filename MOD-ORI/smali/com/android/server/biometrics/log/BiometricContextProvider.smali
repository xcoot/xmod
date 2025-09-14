.class public final Lcom/android/server/biometrics/log/BiometricContextProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/log/BiometricContext;


# static fields
.field public static sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;


# instance fields
.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public mDisplayState:I

.field public mDockState:I

.field final mDockStateReceiver:Landroid/content/BroadcastReceiver;

.field public mFoldState:I

.field public final mHandler:Landroid/os/Handler;

.field public final mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

.field public final mISessionListener:Lcom/android/server/biometrics/log/BiometricContextProvider$3;

.field public mIsHardwareIgnoringTouches:Z

.field public final mSession:Ljava/util/Map;

.field public final mSubscribers:Ljava/util/Map;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockStateReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    .line 35
    .line 36
    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    :try_start_0
    new-instance p2, Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$2;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    .line 46
    .line 47
    invoke-interface {p3, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Lcom/android/server/biometrics/log/BiometricContextProvider$3;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$3;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mISessionListener:Lcom/android/server/biometrics/log/BiometricContextProvider$3;

    .line 56
    .line 57
    const/4 p4, 0x3

    .line 58
    invoke-interface {p3, p4, p2}, Lcom/android/internal/statusbar/IStatusBarService;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p2

    .line 63
    const-string p3, "BiometricContextProvider"

    .line 64
    .line 65
    const-string p4, "Unable to register biometric context listener"

    .line 66
    .line 67
    invoke-static {p3, p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    const-string p2, "android.intent.action.DOCK_EVENT"

    .line 71
    .line 72
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :try_start_1
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockStateReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    .line 78
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void
.end method


# virtual methods
.method public final isAwake()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq p0, v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    return v0
.end method

.method public final subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 4
    .line 5
    iget-boolean v1, v1, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 6
    .line 7
    invoke-virtual {p1, p0, v1}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    if-eqz p4, :cond_8

    .line 16
    .line 17
    instance-of p0, p4, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    if-eqz p0, :cond_5

    .line 21
    .line 22
    check-cast p4, Landroid/hardware/face/FaceAuthenticateOptions;

    .line 23
    .line 24
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 25
    .line 26
    invoke-virtual {p4}, Landroid/hardware/face/FaceAuthenticateOptions;->getAuthenticateReason()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x3

    .line 33
    const/4 v4, 0x4

    .line 34
    const/4 v5, 0x6

    .line 35
    const/4 v6, 0x7

    .line 36
    const/16 v7, 0x8

    .line 37
    .line 38
    const/16 v8, 0x9

    .line 39
    .line 40
    const/16 v9, 0xa

    .line 41
    .line 42
    packed-switch v0, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    move v0, p3

    .line 46
    goto :goto_0

    .line 47
    :pswitch_0
    move v0, v9

    .line 48
    goto :goto_0

    .line 49
    :pswitch_1
    move v0, v8

    .line 50
    goto :goto_0

    .line 51
    :pswitch_2
    move v0, v7

    .line 52
    goto :goto_0

    .line 53
    :pswitch_3
    move v0, v6

    .line 54
    goto :goto_0

    .line 55
    :pswitch_4
    move v0, v5

    .line 56
    goto :goto_0

    .line 57
    :pswitch_5
    const/4 v0, 0x5

    .line 58
    goto :goto_0

    .line 59
    :pswitch_6
    move v0, v4

    .line 60
    goto :goto_0

    .line 61
    :pswitch_7
    move v0, v3

    .line 62
    goto :goto_0

    .line 63
    :pswitch_8
    move v0, v2

    .line 64
    goto :goto_0

    .line 65
    :pswitch_9
    move v0, v1

    .line 66
    :goto_0
    invoke-static {v0}, Landroid/hardware/biometrics/common/AuthenticateReason;->faceAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 71
    .line 72
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 73
    .line 74
    invoke-virtual {p4}, Landroid/hardware/face/FaceAuthenticateOptions;->getWakeReason()I

    .line 75
    .line 76
    .line 77
    move-result p4

    .line 78
    if-eq p4, v1, :cond_4

    .line 79
    .line 80
    if-eq p4, v4, :cond_3

    .line 81
    .line 82
    if-eq p4, v9, :cond_2

    .line 83
    .line 84
    if-eq p4, v5, :cond_1

    .line 85
    .line 86
    if-eq p4, v6, :cond_0

    .line 87
    .line 88
    packed-switch p4, :pswitch_data_1

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_a
    move p3, v8

    .line 93
    goto :goto_1

    .line 94
    :pswitch_b
    move p3, v7

    .line 95
    goto :goto_1

    .line 96
    :pswitch_c
    move p3, v6

    .line 97
    goto :goto_1

    .line 98
    :cond_0
    move p3, v4

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    move p3, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move p3, v5

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    move p3, v2

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    move p3, v1

    .line 107
    :goto_1
    iput p3, p0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    .line 108
    .line 109
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    instance-of p0, p4, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 113
    .line 114
    if-eqz p0, :cond_7

    .line 115
    .line 116
    check-cast p4, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 117
    .line 118
    invoke-virtual {p4}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-eqz p0, :cond_6

    .line 123
    .line 124
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 125
    .line 126
    invoke-virtual {p4}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 127
    .line 128
    .line 129
    move-result-object p4

    .line 130
    invoke-static {p4}, Landroid/hardware/biometrics/common/AuthenticateReason;->vendorAuthenticateReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    iput-object p4, p0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 138
    .line 139
    invoke-static {p3}, Landroid/hardware/biometrics/common/AuthenticateReason;->fingerprintAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    iput-object p4, p0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 144
    .line 145
    :goto_2
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 146
    .line 147
    iput p3, p0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    .line 148
    .line 149
    :goto_3
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    const-string p1, "Authenticate options are invalid."

    .line 156
    .line 157
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0

    .line 161
    :cond_8
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 162
    .line 163
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :goto_4
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[keyguard session: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", bp session: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", displayState: "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ", isAwake: "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAwake()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", isHardwareIgnoring: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", isDisplayOn: "

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    .line 87
    .line 88
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-ne v1, v3, :cond_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const/4 v2, 0x0

    .line 100
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", dock: "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", rotation: "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    .line 119
    .line 120
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, ", foldState: "

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    .line 137
    .line 138
    const-string v1, "]"

    .line 139
    .line 140
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0
.end method
