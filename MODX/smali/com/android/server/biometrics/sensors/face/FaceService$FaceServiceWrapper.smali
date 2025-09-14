.class final Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;
.super Landroid/hardware/face/IFaceService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/face/IFaceService$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->addAllRegisteredCallback(Landroid/os/IInterface;)V

    .line 19
    return-void
.end method

.method public final addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->addLockoutResetCallback_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "addLockoutResetCallback called from pid="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const-string v1, ", "

    .line 24
    invoke-static {v1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v1, ""

    .line 31
    :goto_0
    const-string v2, "FaceService"

    .line 33
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 38
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final authenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p5

    .line 5
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 7
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v2

    .line 11
    const-string/jumbo v3, "com.samsung.android.bio.face.permission.USE_FACE"

    .line 14
    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->authenticate_enforcePermission()V

    .line 23
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    const-string v3, "authenticate called from pid="

    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, " ["

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v3, "] "

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v3, ", "

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 68
    if-eqz v4, :cond_1

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    move-object/from16 v9, p1

    .line 77
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-wide/from16 v13, p2

    .line 85
    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move-object/from16 v9, p1

    .line 95
    move-wide/from16 v13, p2

    .line 97
    const-string v3, ""

    .line 99
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    const-string v3, "FaceService"

    .line 108
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 117
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v4

    .line 121
    invoke-static {v4, v2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 124
    move-result v17

    .line 125
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 127
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 130
    move-result-object v4

    .line 131
    invoke-static {v4, v2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 134
    move-result v8

    .line 135
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 137
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 139
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 142
    move-result-object v2

    .line 143
    if-nez v2, :cond_2

    .line 145
    const-string v0, "Null provider for authenticate"

    .line 147
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-wide/16 v0, -0x1

    .line 152
    return-wide v0

    .line 153
    :cond_2
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 155
    check-cast v3, Ljava/lang/Integer;

    .line 157
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 160
    move-result v3

    .line 161
    invoke-virtual {v1, v3}, Landroid/hardware/face/FaceAuthenticateOptions;->setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 164
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 166
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 169
    move-result-object v0

    .line 170
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 173
    move-result v3

    .line 174
    invoke-static {v0, v3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 177
    move-result v0

    .line 178
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 181
    move-result v3

    .line 182
    if-eq v0, v3, :cond_3

    .line 184
    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->copyOptions(ILandroid/hardware/face/FaceAuthenticateOptions;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 187
    move-result-object v0

    .line 188
    move-object v7, v0

    .line 189
    goto :goto_1

    .line 190
    :cond_3
    move-object v7, v1

    .line 191
    :goto_1
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 193
    move-object v6, v0

    .line 194
    check-cast v6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 196
    new-instance v12, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 198
    move-object/from16 v0, p4

    .line 200
    invoke-direct {v12, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 203
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 205
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 208
    move-result-wide v0

    .line 209
    iget-object v2, v6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;

    .line 213
    const/4 v15, 0x0

    .line 214
    const/16 v16, 0x0

    .line 216
    move-object v5, v3

    .line 217
    move-object/from16 v9, p1

    .line 219
    move-wide v10, v0

    .line 220
    move-wide/from16 v13, p2

    .line 222
    invoke-direct/range {v5 .. v17}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/hardware/face/FaceAuthenticateOptions;ZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZII)V

    .line 225
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-wide v0
.end method

.method public final cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "com.samsung.android.bio.face.permission.USE_FACE"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthentication_enforcePermission()V

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v1, "cancelAuthentication called from pid="

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 36
    if-eqz v1, :cond_1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string v2, ", "

    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string p2, ""

    .line 61
    :goto_0
    const-string v1, "FaceService"

    .line 63
    invoke-static {v0, p2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 68
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 70
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 73
    move-result-object p0

    .line 74
    if-nez p0, :cond_2

    .line 76
    const-string p0, "Null provider for cancelAuthentication"

    .line 78
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 82
    :cond_2
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 84
    move-object v1, p2

    .line 85
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 87
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 89
    check-cast p0, Ljava/lang/Integer;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 94
    move-result v2

    .line 95
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;

    .line 99
    const/4 v6, 0x2

    .line 100
    move-object v0, p2

    .line 101
    move-object v3, p1

    .line 102
    move-wide v4, p3

    .line 103
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;JI)V

    .line 106
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public final cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthenticationFromService_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "cancelAuthenticationFromService called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "["

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "] "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 34
    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    const-string v2, ", "

    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p3

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string p3, ""

    .line 65
    :goto_0
    const-string v1, "FaceService"

    .line 67
    invoke-static {v0, p3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 72
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 77
    move-result-object p0

    .line 78
    move-object v3, p0

    .line 79
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 81
    if-nez v3, :cond_1

    .line 83
    const-string p0, "Null provider for cancelAuthenticationFromService"

    .line 85
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 89
    :cond_1
    iget-object p0, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance p3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;

    .line 93
    const/4 v8, 0x2

    .line 94
    move-object v2, p3

    .line 95
    move v4, p1

    .line 96
    move-object v5, p2

    .line 97
    move-wide v6, p4

    .line 98
    invoke-direct/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;JI)V

    .line 101
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public final cancelEnrollment(Landroid/os/IBinder;J)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->cancelEnrollment_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "cancelEnrollment called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 21
    if-eqz v1, :cond_0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ", "

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v1, ""

    .line 40
    :goto_0
    const-string v2, "FaceService"

    .line 42
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 47
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 49
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_1

    .line 55
    const-string p0, "Null provider for cancelEnrollment"

    .line 57
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 63
    move-object v2, v0

    .line 64
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 66
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    check-cast p0, Ljava/lang/Integer;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v3

    .line 74
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;

    .line 78
    const/4 v7, 0x1

    .line 79
    move-object v1, v0

    .line 80
    move-object v4, p1

    .line 81
    move-wide v5, p2

    .line 82
    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;JI)V

    .line 85
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public final cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->cancelFaceDetect_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "cancelFaceDetectcalled from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 21
    if-eqz v1, :cond_0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ", "

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v1, ""

    .line 46
    :goto_0
    const-string v2, "FaceService"

    .line 48
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 53
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_1

    .line 63
    const-string/jumbo p0, "cancelFaceDetect called from non-sysui package: "

    .line 66
    invoke-static {p0, p2, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 70
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 72
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 74
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 77
    move-result-object p0

    .line 78
    if-nez p0, :cond_2

    .line 80
    const-string p0, "Null provider for cancelFaceDetect"

    .line 82
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 86
    :cond_2
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    move-object v1, p2

    .line 89
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 91
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 93
    check-cast p0, Ljava/lang/Integer;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 98
    move-result v2

    .line 99
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;

    .line 103
    const/4 v6, 0x0

    .line 104
    move-object v0, p2

    .line 105
    move-object v3, p1

    .line 106
    move-wide v4, p3

    .line 107
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;JI)V

    .line 110
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method public final createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->createTestSession_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "createTestSession from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "["

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "] "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 34
    if-eqz v1, :cond_0

    .line 36
    const-string v1, ", "

    .line 38
    invoke-static {v1, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p3, ""

    .line 45
    :goto_0
    const-string v1, "FaceService"

    .line 47
    invoke-static {v0, p3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 60
    if-nez p0, :cond_1

    .line 62
    const-string p0, "Null provider for createTestSession, sensorId: "

    .line 64
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 p0, 0x0

    .line 68
    return-object p0

    .line 69
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public final detectFace(Landroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->detectFace_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "detectFace called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " ["

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p3}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "] "

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 38
    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    const-string v2, ", "

    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p3}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v1, ""

    .line 61
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    const-string v1, "FaceService"

    .line 70
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p3}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 79
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2, v0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 86
    move-result v2

    .line 87
    const-wide/16 v3, -0x1

    .line 89
    if-nez v2, :cond_1

    .line 91
    const-string/jumbo p0, "detectFace called from non-sysui package: "

    .line 94
    invoke-static {p0, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-wide v3

    .line 98
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 100
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 102
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 105
    move-result-object p0

    .line 106
    if-nez p0, :cond_2

    .line 108
    const-string p0, "Null provider for detectFace"

    .line 110
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-wide v3

    .line 114
    :cond_2
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 116
    check-cast v0, Ljava/lang/Integer;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 121
    move-result v0

    .line 122
    invoke-virtual {p3, v0}, Landroid/hardware/face/FaceAuthenticateOptions;->setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 125
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 127
    move-object v1, p0

    .line 128
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 130
    new-instance v6, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 132
    invoke-direct {v6, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 135
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 137
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 140
    move-result-wide v8

    .line 141
    invoke-virtual {p3}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    .line 144
    move-result v2

    .line 145
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;

    .line 149
    move-object v0, p2

    .line 150
    move-object v3, p1

    .line 151
    move-wide v4, v8

    .line 152
    move-object v7, p3

    .line 153
    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;)V

    .line 156
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-wide v8
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "tpa mode: "

    .line 4
    const-string/jumbo v1, "dump: "

    .line 7
    const-string v2, "FaceService"

    .line 9
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 14
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v1

    .line 29
    :try_start_0
    sget-boolean v3, Landroid/os/Build;->IS_ENG:Z

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-nez v3, :cond_1

    .line 35
    sget-boolean v3, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 37
    if-eqz v3, :cond_4

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto/16 :goto_7

    .line 43
    :cond_1
    :goto_0
    array-length v3, p3

    .line 44
    const/4 v6, 0x2

    .line 45
    if-lt v3, v6, :cond_4

    .line 47
    const-string v3, "--tpa"

    .line 49
    aget-object v7, p3, v4

    .line 51
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 57
    const-string/jumbo p1, "mode"

    .line 60
    aget-object v3, p3, v5

    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    sget-object v3, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 68
    if-eqz p1, :cond_2

    .line 70
    :try_start_1
    const-string p1, "1"

    .line 72
    aget-object p3, p3, v6

    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 78
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    .line 81
    move-result-object p3

    .line 82
    new-instance v3, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;

    .line 84
    invoke-direct {v3, p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Z)V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const-string/jumbo p1, "update"

    .line 109
    aget-object p3, p3, v5

    .line 111
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    .line 120
    move-result-object p1

    .line 121
    new-instance p3, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda1;

    .line 123
    invoke-direct {p3, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;)V

    .line 126
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    const-string/jumbo p0, "tpa mode: update action"

    .line 132
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    return-void

    .line 139
    :cond_4
    :try_start_2
    array-length v0, p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    const-string v3, "--proto"

    .line 142
    if-le v0, v5, :cond_7

    .line 144
    :try_start_3
    aget-object v0, p3, v4

    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_7

    .line 152
    const-string v0, "--state"

    .line 154
    aget-object v6, p3, v5

    .line 156
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_7

    .line 162
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 164
    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 167
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 169
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 174
    move-result-object p0

    .line 175
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    move-result-object p0

    .line 179
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_6

    .line 185
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 191
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getSensorProperties()Ljava/util/List;

    .line 194
    move-result-object p3

    .line 195
    check-cast p3, Ljava/util/ArrayList;

    .line 197
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object p3

    .line 201
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_5

    .line 207
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 213
    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 215
    invoke-virtual {p1, v0, p2, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 218
    goto :goto_2

    .line 219
    :cond_6
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 222
    goto/16 :goto_6

    .line 224
    :cond_7
    array-length p1, p3

    .line 225
    if-lez p1, :cond_9

    .line 227
    aget-object p1, p3, v4

    .line 229
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_9

    .line 235
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 237
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 239
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 242
    move-result-object p0

    .line 243
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 246
    move-result-object p0

    .line 247
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    move-result p1

    .line 251
    if-eqz p1, :cond_d

    .line 253
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 259
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getSensorProperties()Ljava/util/List;

    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Ljava/util/ArrayList;

    .line 265
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 268
    move-result-object p1

    .line 269
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    move-result p2

    .line 273
    if-eqz p2, :cond_8

    .line 275
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    move-result-object p2

    .line 279
    check-cast p2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 281
    iget p2, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 283
    goto :goto_3

    .line 284
    :cond_9
    array-length p1, p3

    .line 285
    if-le p1, v5, :cond_b

    .line 287
    const-string p1, "--hal"

    .line 289
    aget-object v0, p3, v4

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_b

    .line 297
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 299
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 301
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 304
    move-result-object p0

    .line 305
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 308
    move-result-object p0

    .line 309
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    move-result p1

    .line 313
    if-eqz p1, :cond_d

    .line 315
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 321
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getSensorProperties()Ljava/util/List;

    .line 324
    move-result-object p1

    .line 325
    check-cast p1, Ljava/util/ArrayList;

    .line 327
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 330
    move-result-object p1

    .line 331
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    move-result p2

    .line 335
    if-eqz p2, :cond_a

    .line 337
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    move-result-object p2

    .line 341
    check-cast p2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 343
    iget p2, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 345
    array-length p2, p3

    .line 346
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    move-result-object v0

    .line 350
    invoke-static {p3, v5, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 353
    move-result-object p2

    .line 354
    check-cast p2, [Ljava/lang/String;

    .line 356
    goto :goto_4

    .line 357
    :cond_b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 359
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 361
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 364
    move-result-object p0

    .line 365
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 368
    move-result-object p0

    .line 369
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    move-result p1

    .line 373
    if-eqz p1, :cond_d

    .line 375
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    move-result-object p1

    .line 379
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 381
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getSensorProperties()Ljava/util/List;

    .line 384
    move-result-object p3

    .line 385
    check-cast p3, Ljava/util/ArrayList;

    .line 387
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 390
    move-result-object p3

    .line 391
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 394
    move-result v0

    .line 395
    if-eqz v0, :cond_c

    .line 397
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    .line 405
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    const-string v4, "Dumping for sensorId: "

    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget v4, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    const-string v4, ", provider: "

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-class v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 425
    const-string v4, "FaceProvider"

    .line 427
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 439
    invoke-virtual {p1, v0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->dumpInternal(ILjava/io/PrintWriter;)V

    .line 442
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    goto :goto_5

    .line 446
    :cond_d
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 449
    return-void

    .line 450
    :goto_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 453
    throw p0
.end method

.method public final dumpSensorServiceStateProto(IZ)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->dumpSensorServiceStateProto_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "dumpSensorServiceStateProto called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "["

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "] , "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "FaceService"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 46
    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 49
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 51
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 59
    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 67
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public final enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->enroll_enforcePermission()V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v3, "enroll called from pid="

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    move-result v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v3, " ["

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v3, "] "

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 38
    if-eqz v3, :cond_0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    const-string v4, ", "

    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    move-object/from16 v9, p2

    .line 49
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-object/from16 v4, p5

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move-object/from16 v9, p2

    .line 67
    move-object/from16 v4, p5

    .line 69
    const-string v3, ""

    .line 71
    :goto_0
    const-string v5, "FaceService"

    .line 73
    invoke-static {v2, v3, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 78
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 80
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 83
    move-result-object v2

    .line 84
    if-nez v2, :cond_1

    .line 86
    const-string v0, "Null provider for enroll"

    .line 88
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-wide/16 v0, -0x1

    .line 93
    return-wide v0

    .line 94
    :cond_1
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 96
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 103
    move-result v8

    .line 104
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 106
    move-object v6, v0

    .line 107
    check-cast v6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 109
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 111
    check-cast v0, Ljava/lang/Integer;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 116
    move-result v7

    .line 117
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 122
    move-result-wide v0

    .line 123
    iget-object v2, v6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;

    .line 127
    move-object v5, v3

    .line 128
    move-object/from16 v9, p2

    .line 130
    move-object/from16 v10, p4

    .line 132
    move-object/from16 v11, p3

    .line 134
    move-object/from16 v12, p5

    .line 136
    move-wide v13, v0

    .line 137
    move-object/from16 v15, p6

    .line 139
    move-object/from16 v16, p7

    .line 141
    move/from16 v17, p8

    .line 143
    move-object/from16 v18, p9

    .line 145
    invoke-direct/range {v5 .. v18}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)V

    .line 148
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-wide v0
.end method

.method public final enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->enrollRemotely_enforcePermission()V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo p2, "enrollRemotelycalled from pid="

    .line 9
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result p2

    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string p2, " ["

    .line 21
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, "] "

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 34
    if-eqz p1, :cond_0

    .line 36
    const-string p1, ", "

    .line 38
    invoke-static {p1, p5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p1, ""

    .line 45
    :goto_0
    const-string p2, "FaceService"

    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-wide/16 p0, -0x1

    .line 52
    return-wide p0
.end method

.method public final generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->generateChallenge_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "generateChallenge called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " ["

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "]["

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "] "

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 42
    if-eqz v1, :cond_0

    .line 44
    const-string v1, ", "

    .line 46
    invoke-static {v1, p5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v1, ""

    .line 53
    :goto_0
    const-string v2, "FaceService"

    .line 55
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 60
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 62
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 65
    move-result-object v0

    .line 66
    move-object v4, v0

    .line 67
    check-cast v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 69
    if-nez v4, :cond_1

    .line 71
    const-string p0, "No matching sensor for generateChallenge, sensorId: "

    .line 73
    invoke-static {p2, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 79
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, p3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 86
    move-result v6

    .line 87
    iget-object p3, v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;

    .line 91
    move-object v3, v0

    .line 92
    move v5, p2

    .line 93
    move-object v7, p1

    .line 94
    move-object v8, p4

    .line 95
    move-object v9, p5

    .line 96
    invoke-direct/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 104
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    const/4 p1, 0x1

    .line 107
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    return-void
.end method

.method public final getAuthenticatorId(II)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->getAuthenticatorId_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string p0, "FaceService"

    .line 18
    const-string p1, "Null provider for getAuthenticatorId"

    .line 20
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-wide/16 p0, 0x0

    .line 25
    return-wide p0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 28
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 35
    move-result p0

    .line 36
    invoke-virtual {v0, p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getAuthenticatorId(II)J

    .line 39
    move-result-wide p0

    .line 40
    return-wide p0
.end method

.method public final getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "com.samsung.android.bio.face.permission.USE_FACE"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->getEnrolledFaces_enforcePermission()V

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 22
    move-result v0

    .line 23
    if-eq p2, v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 27
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 33
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 45
    move-result p2

    .line 46
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 48
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 56
    const-string v0, "FaceService"

    .line 58
    if-nez p0, :cond_2

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    const-string p1, "Null provider for getEnrolledFaces, caller: "

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_2
    const/4 v1, 0x0

    .line 83
    invoke-static {p1, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 86
    move-result-object v1

    .line 87
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v1, p0, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 92
    move-result-object p0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v2, "getEnrolledFaces called from pid="

    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 104
    move-result v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, "["

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string p2, "]["

    .line 118
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string p1, "] "

    .line 126
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 131
    if-eqz p1, :cond_3

    .line 133
    const-string p1, ", "

    .line 135
    invoke-static {p1, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    const-string p1, ""

    .line 142
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string p1, ", size = "

    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 153
    move-result p1

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-object p0
.end method

.method public final getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->getFeature_enforcePermission()V

    .line 4
    iget-object p5, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6
    iget-object p5, p5, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 8
    invoke-virtual {p5}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 11
    move-result-object p5

    .line 12
    if-nez p5, :cond_0

    .line 14
    const-string p0, "FaceService"

    .line 16
    const-string p1, "Null provider for getFeature"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 24
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 31
    move-result v3

    .line 32
    iget-object p0, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    move-object v1, p0

    .line 35
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 37
    iget-object p0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 39
    check-cast p0, Ljava/lang/Integer;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v2

    .line 45
    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 47
    invoke-direct {v5, p4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 50
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;

    .line 54
    move-object v0, p2

    .line 55
    move-object v4, p1

    .line 56
    move v6, p3

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V

    .line 60
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public final getLockoutModeForUser(II)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->getLockoutModeForUser_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "getLockoutModeForUser called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "["

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "]["

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "] "

    .line 37
    const-string v2, "FaceService"

    .line 39
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 44
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 46
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 52
    if-nez v0, :cond_0

    .line 54
    const-string p0, "Null provider for getLockoutModeForUser"

    .line 56
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 p0, 0x0

    .line 60
    return p0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 63
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 70
    move-result p0

    .line 71
    invoke-virtual {v0, p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getLockoutModeForUser(II)I

    .line 74
    move-result p0

    .line 75
    return p0
.end method

.method public final getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->getSensorProperties_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "getSensorProperties called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "["

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "] "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 34
    if-eqz v1, :cond_0

    .line 36
    const-string v1, ", "

    .line 38
    invoke-static {v1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v1, ""

    .line 45
    :goto_0
    const-string v2, "FaceService"

    .line 47
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 60
    if-nez p0, :cond_1

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "No matching sensor for getSensorProperties, sensorId: "

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string p1, ", caller: "

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 p0, 0x0

    .line 88
    return-object p0

    .line 89
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 95
    return-object p0
.end method

.method public final getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "com.samsung.android.bio.face.permission.USE_FACE"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->getSensorPropertiesInternal_enforcePermission()V

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v1, "getSensorPropertiesInternal called from pid="

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 36
    if-eqz v1, :cond_1

    .line 38
    const-string v1, ", "

    .line 40
    invoke-static {v1, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p1, ""

    .line 47
    :goto_0
    const-string v1, "FaceService"

    .line 49
    invoke-static {v0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 54
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public final hasEnrolledFaces(IILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "com.samsung.android.bio.face.permission.USE_FACE"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->hasEnrolledFaces_enforcePermission()V

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 22
    move-result v0

    .line 23
    if-eq p2, v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 27
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 33
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 45
    move-result p2

    .line 46
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 48
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 56
    const/4 v0, 0x0

    .line 57
    const-string v1, "FaceService"

    .line 59
    if-nez p0, :cond_2

    .line 61
    const-string p0, "Null provider for hasEnrolledFaces, caller: "

    .line 63
    invoke-static {p0, p3, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return v0

    .line 67
    :cond_2
    const/4 v2, 0x0

    .line 68
    invoke-static {p1, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 71
    move-result-object v2

    .line 72
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {v2, p0, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 77
    move-result-object p0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v3, "hasEnrolledFaces called from pid="

    .line 83
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 89
    move-result v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v3, "["

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string p2, "]["

    .line 103
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string p1, "] "

    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 116
    if-eqz p1, :cond_3

    .line 118
    const-string p1, ", "

    .line 120
    invoke-static {p1, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    goto :goto_0

    .line 125
    :cond_3
    const-string p1, ""

    .line 127
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string p1, ", size = "

    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 138
    move-result p1

    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 152
    move-result p0

    .line 153
    if-lez p0, :cond_4

    .line 155
    const/4 v0, 0x1

    .line 156
    :cond_4
    return v0
.end method

.method public final invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->invalidateAuthenticatorId_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object v0

    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 15
    if-nez v2, :cond_0

    .line 17
    const-string p0, "FaceService"

    .line 19
    const-string p1, "Null provider for invalidateAuthenticatorId"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 34
    move-result v4

    .line 35
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda6;

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v1, p2

    .line 41
    move v3, p1

    .line 42
    move-object v5, p3

    .line 43
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILjava/lang/Object;I)V

    .line 46
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public final isHardwareDetected(ILjava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "Null provider for isHardwareDetected, caller: "

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "com.samsung.android.bio.face.permission.USE_FACE"

    .line 12
    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->isHardwareDetected_enforcePermission()V

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v2, "isHardwareDetected called from pid="

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "["

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "] "

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 51
    if-eqz v2, :cond_1

    .line 53
    const-string v2, ", "

    .line 55
    invoke-static {v2, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string v2, ""

    .line 62
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    const-string v2, "FaceService"

    .line 71
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    move-result-wide v3

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 80
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 88
    if-nez p0, :cond_2

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    const/4 p0, 0x0

    .line 109
    return p0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->isHardwareDetected(I)Z

    .line 115
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    return p0

    .line 120
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 18
    return-void
.end method

.method public final prepareForAuthentication(ZLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/face/FaceAuthenticateOptions;JIZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->prepareForAuthentication_enforcePermission()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "prepareForAuthentication called from pid="

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, " ["

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual/range {p6 .. p6}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "]["

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual/range {p6 .. p6}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "] "

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 52
    if-eqz v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    const-string v3, ", "

    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p6 .. p6}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move/from16 v3, p9

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move/from16 v3, p9

    .line 83
    const-string v2, ""

    .line 85
    :goto_0
    const-string v4, "FaceService"

    .line 87
    invoke-static {v1, v2, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 92
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 94
    invoke-virtual/range {p6 .. p6}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    .line 97
    move-result v2

    .line 98
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 101
    move-result-object v1

    .line 102
    move-object v6, v1

    .line 103
    check-cast v6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 105
    if-nez v6, :cond_1

    .line 107
    const-string v0, "Null provider for prepareForAuthentication"

    .line 109
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 113
    :cond_1
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 115
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual/range {p6 .. p6}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 122
    move-result v1

    .line 123
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 126
    move-result v0

    .line 127
    invoke-virtual/range {p6 .. p6}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 130
    move-result v1

    .line 131
    if-eq v0, v1, :cond_2

    .line 133
    move-object/from16 v1, p6

    .line 135
    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->copyOptions(ILandroid/hardware/face/FaceAuthenticateOptions;)Landroid/hardware/face/FaceAuthenticateOptions;

    .line 138
    move-result-object v0

    .line 139
    move-object v7, v0

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    move-object/from16 v1, p6

    .line 143
    move-object v7, v1

    .line 144
    :goto_1
    new-instance v12, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 146
    move-object/from16 v0, p5

    .line 148
    invoke-direct {v12, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    .line 151
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;

    .line 155
    const/4 v15, 0x1

    .line 156
    const/16 v17, 0x2

    .line 158
    move-object v5, v1

    .line 159
    move/from16 v8, p10

    .line 161
    move-object/from16 v9, p2

    .line 163
    move-wide/from16 v10, p7

    .line 165
    move-wide/from16 v13, p3

    .line 167
    move/from16 v16, p9

    .line 169
    invoke-direct/range {v5 .. v17}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/hardware/face/FaceAuthenticateOptions;ZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZII)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public final registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticationStateListener_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/biometrics/AuthenticationStateListener;->asBinder()Landroid/os/IBinder;

    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "AuthenticationStateListeners"

    .line 25
    const-string v0, "Failed to link to death"

    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :goto_0
    return-void
.end method

.method public final registerAuthenticators(Landroid/hardware/face/FaceSensorConfigurations;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticators_enforcePermission()V

    .line 4
    invoke-virtual {p1}, Landroid/hardware/face/FaceSensorConfigurations;->hasSensorConfigurations()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "FaceService"

    .line 12
    const-string p1, "No face sensors to register."

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 20
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 22
    new-instance v1, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;

    .line 24
    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/FaceSensorConfigurations;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-string p0, "BiometricServiceRegistry"

    .line 32
    const/16 p1, 0xa

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {p1, p0, v2}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 38
    move-result-object p0

    .line 39
    new-instance p1, Landroid/os/Handler;

    .line 41
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 44
    move-result-object v2

    .line 45
    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry$$ExternalSyntheticLambda0;

    .line 50
    invoke-direct {v2, v0, v1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;)V

    .line 53
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 59
    return-void
.end method

.method public final registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 8
    return-void
.end method

.method public final remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->remove_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "remove called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " ["

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "] "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 37
    if-eqz v1, :cond_0

    .line 39
    const-string v1, ", "

    .line 41
    invoke-static {v1, p5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v1, ""

    .line 48
    :goto_0
    const-string v2, "FaceService"

    .line 50
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 55
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 60
    move-result-object p0

    .line 61
    if-nez p0, :cond_1

    .line 63
    const-string p0, "Null provider for remove"

    .line 65
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 71
    move-object v2, v0

    .line 72
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 74
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 76
    check-cast p0, Ljava/lang/Integer;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 81
    move-result v3

    .line 82
    filled-new-array {p2}, [I

    .line 85
    move-result-object v7

    .line 86
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;

    .line 90
    move-object v1, p2

    .line 91
    move v4, p3

    .line 92
    move-object v5, p1

    .line 93
    move-object v6, p4

    .line 94
    move-object v8, p5

    .line 95
    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[ILjava/lang/String;)V

    .line 98
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public final removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v8, p2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->removeAll_enforcePermission()V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v2, "removeAll called from pid="

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " ["

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "] "

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 38
    if-eqz v2, :cond_0

    .line 40
    const-string v2, ", "

    .line 42
    move-object/from16 v9, p4

    .line 44
    invoke-static {v2, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object/from16 v9, p4

    .line 51
    const-string v2, ""

    .line 53
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    const-string v2, "FaceService"

    .line 62
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v10, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;

    .line 67
    move-object/from16 v1, p3

    .line 69
    invoke-direct {v10, v0, v1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 72
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 74
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 76
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object v11

    .line 84
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 90
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    move-object v12, v0

    .line 95
    check-cast v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 97
    invoke-virtual {v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getSensorProperties()Ljava/util/List;

    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object v13

    .line 107
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_1

    .line 113
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 119
    iget v2, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-static {v2, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 125
    move-result-object v0

    .line 126
    iget-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {v0, v1, v8}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 137
    move-result v1

    .line 138
    new-array v6, v1, [I

    .line 140
    const/4 v1, 0x0

    .line 141
    move v3, v1

    .line 142
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 145
    move-result v4

    .line 146
    if-ge v3, v4, :cond_2

    .line 148
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Landroid/hardware/face/Face;

    .line 154
    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 157
    move-result v4

    .line 158
    aput v4, v6, v3

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_2
    invoke-virtual {v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 166
    move-result-object v0

    .line 167
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 169
    if-eqz v0, :cond_3

    .line 171
    iget-boolean v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    .line 173
    if-nez v0, :cond_3

    .line 175
    filled-new-array {v1}, [I

    .line 178
    move-result-object v6

    .line 179
    iget-object v14, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v15, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;

    .line 183
    move-object v0, v15

    .line 184
    move-object v1, v12

    .line 185
    move/from16 v3, p2

    .line 187
    move-object/from16 v4, p1

    .line 189
    move-object v5, v10

    .line 190
    move-object/from16 v7, p4

    .line 192
    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[ILjava/lang/String;)V

    .line 195
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    goto :goto_1

    .line 199
    :cond_3
    iget-object v14, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 201
    new-instance v15, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;

    .line 203
    move-object v0, v15

    .line 204
    move-object v1, v12

    .line 205
    move/from16 v3, p2

    .line 207
    move-object/from16 v4, p1

    .line 209
    move-object v5, v10

    .line 210
    move-object/from16 v7, p4

    .line 212
    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[ILjava/lang/String;)V

    .line 215
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    goto :goto_1

    .line 219
    :cond_4
    return-void
.end method

.method public final resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->resetLockout_enforcePermission()V

    .line 4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 11
    move-result-object p1

    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 15
    if-nez v1, :cond_0

    .line 17
    const-string p0, "Null provider for resetLockout, caller: "

    .line 19
    const-string p1, "FaceService"

    .line 21
    invoke-static {p0, p5, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0, p3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 34
    move-result v3

    .line 35
    iget-object p0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda6;

    .line 39
    const/4 v5, 0x1

    .line 40
    move-object v0, p1

    .line 41
    move v2, p2

    .line 42
    move-object v4, p4

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILjava/lang/Object;I)V

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public final revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v3, p2

    .line 3
    move v1, p3

    .line 4
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->revokeChallenge_enforcePermission()V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v4, "revokeChallenge called from pid="

    .line 12
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    move-result v4

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v4, " ["

    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v4, "]["

    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v4, "] "

    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 45
    if-eqz v4, :cond_0

    .line 47
    const-string v4, ", "

    .line 49
    move-object v6, p4

    .line 50
    invoke-static {v4, p4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v6, p4

    .line 56
    const-string v4, ""

    .line 58
    :goto_0
    const-string v5, "FaceService"

    .line 60
    invoke-static {v2, v4, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 65
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 67
    invoke-virtual {v2, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 73
    if-nez v2, :cond_1

    .line 75
    const-string v0, "No matching sensor for revokeChallenge, sensorId: "

    .line 77
    invoke-static {p2, v0, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 81
    :cond_1
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 83
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v4

    .line 87
    invoke-static {v4, p3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 90
    move-result v5

    .line 91
    iget-object v9, v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda17;

    .line 95
    move-object v1, v10

    .line 96
    move v3, p2

    .line 97
    move-object v4, p1

    .line 98
    move-object v6, p4

    .line 99
    move-wide/from16 v7, p5

    .line 101
    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;ILjava/lang/String;J)V

    .line 104
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 109
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    return-void
.end method

.method public final scheduleWatchdog()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->scheduleWatchdog_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 14
    const-string p0, "FaceService"

    .line 16
    const-string v0, "Null provider for scheduling watchdog"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 24
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 26
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    check-cast p0, Ljava/lang/Integer;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result p0

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleWatchdog(I)V

    .line 37
    return-void
.end method

.method public final semAuthenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;Landroid/os/Bundle;[B)J
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "semAuthenticate called from pid="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " ["

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p5}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "] "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 35
    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    const-string v2, ", "

    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p5}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const-string v1, ""

    .line 80
    :goto_0
    const-string v2, "FaceService"

    .line 82
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 87
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 90
    move-result-object v0

    .line 91
    const-string/jumbo v1, "com.samsung.android.bio.face.permission.USE_FACE"

    .line 94
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->authenticate_enforcePermission()V

    .line 103
    :cond_1
    invoke-static {p7}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->setFidoRequestData([B)V

    .line 106
    sput-object p6, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mBundle:Landroid/os/Bundle;

    .line 108
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->authenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    .line 111
    move-result-wide p0

    .line 112
    return-wide p0
.end method

.method public final semAuthenticateExt(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;Landroid/view/Surface;[B)J
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "semAuthenticate (s) called from pid="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " ["

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p5}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "] "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 35
    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    const-string v2, ", "

    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p5}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v1, ""

    .line 70
    :goto_0
    const-string v2, "FaceService"

    .line 72
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 77
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v0

    .line 81
    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    .line 83
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-static {p7}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->setFidoRequestData([B)V

    .line 89
    sput-object p6, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mSurface:Landroid/view/Surface;

    .line 91
    const/4 p6, 0x1

    .line 92
    sput-boolean p6, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mNeedtoAuthenticateExt:Z

    .line 94
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->authenticate(Landroid/os/IBinder;JLandroid/hardware/face/IFaceServiceReceiver;Landroid/hardware/face/FaceAuthenticateOptions;)J

    .line 97
    move-result-wide p0

    .line 98
    return-wide p0
.end method

.method public final semGetInfo(I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semGetInfo_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semGetInfo called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 39
    return-object v0

    .line 40
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    const-string v1, "SemFace"

    .line 53
    const-string/jumbo v2, "getEngineVersion FINISH ("

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    move-result-wide v3

    .line 60
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 62
    if-eqz v5, :cond_1

    .line 64
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 66
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 68
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 74
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :try_start_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 85
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 91
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetTaInfo()Ljava/lang/String;

    .line 94
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    :try_start_2
    const-string p1, "HidlToAidlSessionAdapter"

    .line 99
    const-string/jumbo v5, "semGetTaInfo HIDL : "

    .line 102
    invoke-static {p1, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    goto :goto_0

    .line 106
    :catch_1
    move-exception p0

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 110
    if-nez p0, :cond_2

    .line 112
    const-string/jumbo p0, "daemonGetInfo(): no face seh HAL!"

    .line 115
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/4 v5, 0x1

    .line 120
    if-ne p1, v5, :cond_3

    .line 122
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 124
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->getTaInfo()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    move-result-wide v5

    .line 137
    sub-long/2addr v5, v3

    .line 138
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo p1, "ms) RESULT: "

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    goto :goto_2

    .line 158
    :goto_1
    const-string/jumbo p1, "daemonGetInfo: "

    .line 161
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :goto_2
    return-object v0
.end method

.method public final semGetRemainingLockoutTime(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semGetRemainingLockoutTime_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semGetRemainingLockoutTime called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 42
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 49
    move-result p0

    .line 50
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 52
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 54
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->semGetRemainingLockoutTime(I)I

    .line 57
    move-result p0

    .line 58
    return p0
.end method

.method public final semGetSecurityLevel(Z)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semGetSecurityLevel_enforcePermission()V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v0, "semGetSecurityLevel called from pid="

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string v0, "FaceService"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 47
    move-result-object p0

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v0, "getSL : "

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 58
    const-string v1, "SemFace"

    .line 60
    invoke-static {p1, v0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 63
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 65
    return p0
.end method

.method public final semIsEnrollSession()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semIsEnrollSession_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semIsEnrollSession called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final semIsFrameworkHandleLockout()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semIsFrameworkHandleLockout_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semIsFrameworkHandleLockout called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method public final semIsSessionClose()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semIsSessionClose_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semIsSessionClose called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 39
    return v0

    .line 40
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getHalInstance()Landroid/hardware/biometrics/face/IFace;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    const-string v1, "SemFace"

    .line 56
    const-string/jumbo v2, "sehIsTaSessionClosed FINISH ("

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    move-result-wide v3

    .line 63
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 65
    if-eqz v5, :cond_1

    .line 67
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 69
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 71
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 88
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 94
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehIsTaSessionClosed()Z

    .line 97
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    :try_start_2
    const-string v5, "HidlToAidlSessionAdapter"

    .line 102
    const-string/jumbo v6, "semIsSessionClose HIDL : "

    .line 105
    invoke-static {v5, v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    move p0, v0

    .line 109
    goto :goto_0

    .line 110
    :catch_1
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 114
    if-nez p0, :cond_2

    .line 116
    const-string/jumbo p0, "daemonIsSessionClose(): no face seh HAL!"

    .line 119
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    check-cast p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 125
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->isTAUnloaded()Z

    .line 128
    move-result p0

    .line 129
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    move-result-wide v6

    .line 138
    sub-long/2addr v6, v3

    .line 139
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v2, "ms) RESULT: "

    .line 145
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v2

    .line 155
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    move v0, p0

    .line 159
    goto :goto_2

    .line 160
    :goto_1
    const-string/jumbo v2, "daemonIsSessionClose: "

    .line 163
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_2
    return v0
.end method

.method public final semPauseAuth()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semPauseAuth_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semPauseAuth called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 43
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;

    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public final semPauseEnroll()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semPauseEnroll_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semPauseEnroll called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 43
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;

    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public final semResetAuthenticationTimeout()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semResetAuthenticationTimeout_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semResetAuthenticationTimeout called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 39
    return v0

    .line 40
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 44
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 49
    move-result-object v1

    .line 50
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    .line 52
    invoke-virtual {v2, v0}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    .line 55
    move-result v2

    .line 56
    iget v1, v1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    .line 58
    int-to-float v1, v1

    .line 59
    cmpg-float v1, v2, v1

    .line 61
    if-gez v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 66
    const/16 v1, 0x1388

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 72
    const/16 v1, 0xfa0

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    const-string v2, "SemFace"

    .line 83
    const-string/jumbo v3, "resetAuthenticationTimeout"

    .line 86
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-gtz v1, :cond_2

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startInactivityTimer(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseDVFS()V

    .line 98
    const/4 v0, 0x2

    .line 99
    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->acquireDVFS(II)V

    .line 102
    const/4 v0, 0x1

    .line 103
    :goto_1
    return v0
.end method

.method public final semResumeAuth()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semResumeAuth_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semResumeAuth called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 43
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;

    .line 47
    const/4 v2, 0x3

    .line 48
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public final semResumeEnroll()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semResumeEnroll_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semResumeEnroll called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 43
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;

    .line 47
    const/4 v2, 0x5

    .line 48
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public final semSessionClose()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semSessionClose_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semSessionClose called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 43
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;

    .line 47
    const/4 v2, 0x6

    .line 48
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public final semSessionOpen()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semSessionOpen_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semSessionOpen called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 43
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;

    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public final semShouldRemoveTemplate()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->semGetRemainingLockoutTime_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "semShouldRemoveTemplate called from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FaceService"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 35
    move-result-object p0

    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 39
    return v0

    .line 40
    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    return v0
.end method

.method public final setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->setFeature_enforcePermission()V

    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 7
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 9
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    const-string v0, "FaceService"

    .line 17
    const-string v1, "Null provider for setFeature"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 25
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    move v2, p2

    .line 30
    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    .line 33
    move-result v5

    .line 34
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 36
    move-object v3, v0

    .line 37
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 39
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 41
    check-cast v0, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v4

    .line 47
    iget-object v0, v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;

    .line 51
    move-object v2, v1

    .line 52
    move-object v6, p1

    .line 53
    move-object/from16 v7, p6

    .line 55
    move v8, p3

    .line 56
    move v9, p4

    .line 57
    move-object/from16 v10, p5

    .line 59
    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IZ[B)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public final startPreparedClient(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->startPreparedClient_enforcePermission()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "startPreparedClientcalled from pid="

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "["

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "] "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 34
    if-eqz v1, :cond_0

    .line 36
    const-string v1, ", "

    .line 38
    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v1, ""

    .line 45
    :goto_0
    const-string v2, "FaceService"

    .line 47
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 60
    if-nez p0, :cond_1

    .line 62
    const-string p0, "Null provider for startPreparedClient"

    .line 64
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;III)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method public final unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/face/IFaceService$Stub;->unregisterAuthenticationStateListener_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->mAuthenticationStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method
