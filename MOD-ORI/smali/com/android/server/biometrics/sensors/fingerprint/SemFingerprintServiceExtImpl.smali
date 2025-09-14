.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

.field public mCaptureStartedTime:J

.field public final mContext:Landroid/content/Context;

.field public final mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

.field public final mEnrollSessionMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

.field public mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

.field public final mHandler:Landroid/os/Handler;

.field public mHasOpticalUdfps:Z

.field public mHasUdfps:Z

.field public mHasUltrasonicUdfps:Z

.field public mIFAAFlag:Landroid/util/Pair;

.field public mIconDrawnTime:J

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

.field public final mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsScreenOn:Z

.field public mLatestSensorStatus:I

.field public final mLocalHbmController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

.field public final mLockForAodCtrl:Ljava/lang/Object;

.field mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field public final mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

.field public mSysUiDisplayBrightnessCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback;

.field public mSysUiDisplayStateCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    .line 18
    .line 19
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUltrasonicUdfps:Z

    .line 22
    .line 23
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasOpticalUdfps:Z

    .line 26
    .line 27
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    new-instance p1, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 41
    .line 42
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 43
    .line 44
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-object p1, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 50
    .line 51
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 55
    .line 56
    invoke-direct {p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;-><init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mEnrollSessionMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 60
    .line 61
    sget-boolean p2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_LOCAL_HBM:Z

    .line 62
    .line 63
    if-eqz p2, :cond_0

    .line 64
    .line 65
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

    .line 69
    .line 70
    sget-object p3, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    new-instance p4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$1;

    .line 77
    .line 78
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_LOCAL_HBM_IN_HOUSE:Z

    .line 82
    .line 83
    invoke-direct {p2, p3, p1, p4, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;-><init>(Landroid/os/Handler;Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;Z)V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLocalHbmController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

    .line 87
    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public final canUseFingerprint(ZZ)Landroid/util/Pair;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    check-cast v3, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semHasPromptPrivilegedAttr()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    new-instance p0, Landroid/util/Pair;

    .line 49
    .line 50
    const/4 p1, 0x5

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_0
    :try_start_1
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 70
    .line 71
    if-eqz v3, :cond_5

    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    const-string v4, "any_screen_running"

    .line 76
    .line 77
    const/4 v5, -0x2

    .line 78
    invoke-static {v3, v2, v5, v4, v2}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 79
    .line 80
    .line 81
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    const/4 v4, 0x1

    .line 83
    if-ne v3, v4, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move v4, v2

    .line 87
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 88
    .line 89
    const/16 v5, 0x8

    .line 90
    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    if-nez p2, :cond_2

    .line 96
    .line 97
    :try_start_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const v3, 0x1040df7

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p1, p2, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 121
    .line 122
    .line 123
    :cond_2
    new-instance p0, Landroid/util/Pair;

    .line 124
    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/16 p2, 0x1389

    .line 130
    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    const-class v6, Landroid/hardware/display/DisplayManager;

    .line 145
    .line 146
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 151
    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_5

    .line 159
    .line 160
    if-eqz p1, :cond_4

    .line 161
    .line 162
    if-nez p2, :cond_4

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    const p2, 0x1040df3

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    const v4, 0x1040df8

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 185
    .line 186
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-static {p0, p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 195
    .line 196
    .line 197
    :cond_4
    new-instance p0, Landroid/util/Pair;

    .line 198
    .line 199
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const/16 p2, 0x138b

    .line 204
    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    .line 218
    .line 219
    new-instance p0, Landroid/util/Pair;

    .line 220
    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    return-object p0

    .line 233
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    .line 235
    .line 236
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 2
    .line 3
    const-string v1, " latest sensor status : "

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLatestSensorStatus:I

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, " Max Template : "

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 77
    .line 78
    sget-object p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->dump(Ljava/io/PrintWriter;Landroid/util/Pair;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpDump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v0, "dump: "

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "FingerprintService.Ext"

    .line 104
    .line 105
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    return-void
.end method

.method public getBiometricHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final handleBioSysOpticalControl(IJ)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 14
    .line 15
    sget-object p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsSupportHwLightSource:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mRunnableDisableFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mRunnableRestoreFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 49
    .line 50
    sget-object p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 53
    .line 54
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsSupportHwLightSource:Z

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mRunnableRestoreFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mRunnableDisableFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    return-void
.end method

.method public final handleBioSysTspControl(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "BSS"

    .line 9
    .line 10
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfModeBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit p1

    .line 32
    throw p0

    .line 33
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p2, 0x2

    .line 48
    if-ne p1, p2, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    return-void
.end method

.method public final handleQcomForceQDB()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUltrasonicUdfps:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 16
    .line 17
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/16 v1, 0x22

    .line 26
    .line 27
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 28
    .line 29
    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(II)I

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final handleTouchEvent(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_LOCAL_HBM:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLocalHbmController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->handleTouchEventInLhbm(Landroid/util/Pair;IJ)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 25
    .line 26
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_2

    .line 33
    .line 34
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 38
    .line 39
    :goto_0
    const/4 v3, 0x2

    .line 40
    if-ne p1, v3, :cond_3

    .line 41
    .line 42
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 45
    .line 46
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    new-instance v3, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 55
    .line 56
    invoke-direct {v3}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 57
    .line 58
    .line 59
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 60
    .line 61
    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 62
    .line 63
    .line 64
    instance-of p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 65
    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    long-to-int p1, v1

    .line 73
    const/16 v0, 0x10

    .line 74
    .line 75
    shr-long v0, p2, v0

    .line 76
    .line 77
    long-to-int v0, v0

    .line 78
    const-wide/32 v1, 0xffff

    .line 79
    .line 80
    .line 81
    and-long/2addr p2, v1

    .line 82
    long-to-int p2, p2

    .line 83
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;

    .line 88
    .line 89
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;III)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const/4 p0, 0x1

    .line 97
    if-ne p1, p0, :cond_4

    .line 98
    .line 99
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 102
    .line 103
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    new-instance p2, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 112
    .line 113
    invoke-direct {p2}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 114
    .line 115
    .line 116
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 117
    .line 118
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_1
    return-void
.end method

.method public final handleTpaCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    aget-object v1, p2, v0

    .line 3
    .line 4
    const-string/jumbo v2, "mode"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    aget-object p2, p2, v0

    .line 15
    .line 16
    const-string v0, "1"

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getHandler()Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;ZI)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v0, "tpa mode: "

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string/jumbo v1, "update"

    .line 55
    .line 56
    .line 57
    aget-object v2, p2, v0

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getHandler()Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-direct {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    const-string/jumbo p0, "tpa mode: update action"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string/jumbo v1, "command"

    .line 86
    .line 87
    .line 88
    aget-object v0, p2, v0

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getHandler()Landroid/os/Handler;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-direct {v1, v2, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    const-string/jumbo p0, "tpa mode: setTpaRequestCommands"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_0
    return-void
.end method

.method public final onAuthenticationAcquire(III)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    const/16 p1, 0x2712

    .line 5
    .line 6
    if-ne p3, p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mCaptureStartedTime:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final requestDozeHLPM(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->createAodController()Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-direct {p1, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-direct {p1, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :goto_1
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final requestDozeMode(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;->createAodController()Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    invoke-direct {p1, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;C)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v1, 0x3

    .line 55
    invoke-direct {p1, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;

    .line 61
    .line 62
    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    :goto_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final unregisterAodController()V
    .locals 6

    .line 1
    const-string v0, "FingerprintService.Ext"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "unregisterAodController: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-direct {v4, v1, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mAodController:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method
