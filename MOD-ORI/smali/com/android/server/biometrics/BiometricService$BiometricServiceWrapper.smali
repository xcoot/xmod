.class public final Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;
.super Landroid/hardware/biometrics/IBiometricService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v10, p7

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->authenticate_enforcePermission()V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    if-eqz p5, :cond_4

    .line 10
    .line 11
    if-eqz p6, :cond_4

    .line 12
    .line 13
    if-nez v10, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 23
    .line 24
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(Landroid/content/Context;I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v10, v2}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-eqz v0, :cond_2

    .line 54
    .line 55
    const v0, 0x80ff

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/16 v0, 0xff

    .line 60
    .line 61
    :goto_0
    invoke-virtual {v10, v0}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Long;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v11

    .line 78
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 79
    .line 80
    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    new-instance v14, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;

    .line 83
    .line 84
    move-object v0, v14

    .line 85
    move-object v1, p0

    .line 86
    move-object/from16 v2, p1

    .line 87
    .line 88
    move-wide v3, v11

    .line 89
    move-wide/from16 v5, p2

    .line 90
    .line 91
    move/from16 v7, p4

    .line 92
    .line 93
    move-object/from16 v8, p5

    .line 94
    .line 95
    move-object/from16 v9, p6

    .line 96
    .line 97
    move-object/from16 v10, p7

    .line 98
    .line 99
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    return-wide v11

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 107
    .line 108
    const-string v1, "Invalid authenticator configuration"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_4
    :goto_1
    const-string v0, "BiometricService"

    .line 115
    .line 116
    const-string v1, "Unable to authenticate, one or more null arguments"

    .line 117
    .line 118
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    const-wide/16 v0, -0x1

    .line 122
    .line 123
    return-wide v0
.end method

.method public final canAuthenticate(Ljava/lang/String;III)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->canAuthenticate_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "canAuthenticate: User="

    .line 5
    .line 6
    .line 7
    const-string v1, ", Caller="

    .line 8
    .line 9
    const-string v2, ", Authenticators="

    .line 10
    .line 11
    invoke-static {p2, p3, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    const-string v0, "BiometricService"

    .line 16
    .line 17
    invoke-static {p3, p4, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-static {p3, p4}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(Landroid/content/Context;I)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_4

    .line 31
    .line 32
    const/4 p3, 0x1

    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 34
    .line 35
    invoke-static {p0, p1, p2, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    const/4 p1, 0x0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    if-eq p0, p3, :cond_3

    .line 59
    .line 60
    const/4 p2, 0x7

    .line 61
    if-eq p0, p2, :cond_2

    .line 62
    .line 63
    const/16 p4, 0x9

    .line 64
    .line 65
    if-eq p0, p4, :cond_2

    .line 66
    .line 67
    const/16 p1, 0x12

    .line 68
    .line 69
    if-eq p0, p1, :cond_3

    .line 70
    .line 71
    const/16 p1, 0xb

    .line 72
    .line 73
    if-eq p0, p1, :cond_0

    .line 74
    .line 75
    const/16 p2, 0xc

    .line 76
    .line 77
    if-eq p0, p2, :cond_1

    .line 78
    .line 79
    const/16 p2, 0xe

    .line 80
    .line 81
    if-eq p0, p2, :cond_0

    .line 82
    .line 83
    const/16 p1, 0xf

    .line 84
    .line 85
    if-eq p0, p1, :cond_0

    .line 86
    .line 87
    const/16 p1, 0x14

    .line 88
    .line 89
    if-eq p0, p1, :cond_0

    .line 90
    .line 91
    const/16 p1, 0x15

    .line 92
    .line 93
    if-eq p0, p1, :cond_0

    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string p2, "Unhandled result code: "

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_0
    move p3, p1

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    move p3, p2

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->mandatoryBiometrics()Z

    .line 118
    .line 119
    .line 120
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    if-eqz p0, :cond_0

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    :goto_1
    return p3

    .line 125
    :catch_0
    move-exception p0

    .line 126
    const-string p1, "Remote exception"

    .line 127
    .line 128
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    return p3

    .line 132
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 133
    .line 134
    const-string p1, "Invalid authenticator configuration"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public final cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->cancelAuthentication_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance p2, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p2, v0, p3, p4, p0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;-><init>(IJLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->createTestSession_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 23
    .line 24
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 25
    .line 26
    if-ne v1, p1, :cond_0

    .line 27
    .line 28
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 29
    .line 30
    invoke-interface {p0, p2, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string p0, "Unknown sensor for createTestSession: "

    .line 36
    .line 37
    const-string p2, "BiometricService"

    .line 38
    .line 39
    invoke-static {p1, p0, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "ClearSchedulerBuffer: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "BiometricService"

    .line 10
    .line 11
    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    :try_start_0
    array-length v1, p3

    .line 23
    if-lez v1, :cond_4

    .line 24
    .line 25
    const-string v1, "--proto"

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aget-object v6, p3, v5

    .line 29
    .line 30
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    array-length p2, p3

    .line 37
    const/4 v1, 0x1

    .line 38
    if-le p2, v1, :cond_1

    .line 39
    .line 40
    const-string p2, "--clear-scheduler-buffer"

    .line 41
    .line 42
    aget-object p3, p3, v1

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_5

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    move v1, v5

    .line 56
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget v5, p1, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 83
    .line 84
    :cond_2
    const-wide v6, 0x10e00000002L

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 113
    .line 114
    invoke-interface {p1, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->dumpSensorServiceStateProto(Z)[B

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-wide v5, 0x20b00000001L

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 132
    .line 133
    invoke-static {p0, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mdumpInternal(Lcom/android/server/biometrics/BiometricService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :goto_3
    :try_start_1
    const-string p1, "Remote exception"

    .line 141
    .line 142
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :goto_4
    return-void

    .line 147
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    .line 149
    .line 150
    throw p0
.end method

.method public final getAuthenticatorIds(I)[J
    .locals 9

    .line 1
    const-string v0, "BiometricService"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getAuthenticatorIds_enforcePermission()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 30
    .line 31
    :try_start_0
    iget-object v4, v3, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 32
    .line 33
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-interface {v4, p1, v5}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v5, v3, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 48
    .line 49
    invoke-interface {v5, p1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getAuthenticatorId(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/16 v8, 0xf

    .line 60
    .line 61
    invoke-static {v7, v8}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_0

    .line 66
    .line 67
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v3

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v6, "Sensor "

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v6, ", sensorId "

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v3, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 96
    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, ", hasEnrollments: "

    .line 101
    .line 102
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, " cannot participate in Keystore operations"

    .line 109
    .line 110
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :goto_1
    const-string v4, "RemoteException"

    .line 122
    .line 123
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    new-array p0, p0, [J

    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-ge p1, v0, :cond_2

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/lang/Long;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 147
    .line 148
    .line 149
    move-result-wide v2

    .line 150
    aput-wide v2, p0, p1

    .line 151
    .line 152
    add-int/lit8 p1, p1, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    return-object p0
.end method

.method public final getCurrentModality(Ljava/lang/String;III)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCurrentModality_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "getCurrentModality: User="

    .line 5
    .line 6
    .line 7
    const-string v1, ", Caller="

    .line 8
    .line 9
    const-string v2, ", Authenticators="

    .line 10
    .line 11
    invoke-static {p2, p3, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    const-string v0, "BiometricService"

    .line 16
    .line 17
    invoke-static {p3, p4, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-static {p3, p4}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(Landroid/content/Context;I)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 33
    .line 34
    invoke-static {p0, p1, p2, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getPreAuthenticateStatus()Landroid/util/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, "Remote exception"

    .line 53
    .line 54
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 60
    .line 61
    const-string p1, "Invalid authenticator configuration"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final getCurrentStrength(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getCurrentStrength_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 23
    .line 24
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 25
    .line 26
    if-ne v1, p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    const-string p0, "Unknown sensorId: "

    .line 34
    .line 35
    const-string v0, "BiometricService"

    .line 36
    .line 37
    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final getLastAuthenticationTime(II)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getLastAuthenticationTime_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->lastAuthenticationTime()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "BiometricService"

    .line 23
    .line 24
    const-string/jumbo v2, "getLastAuthenticationTime(userId=%d, authenticators=0x%x)"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v2, -0x1

    .line 31
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mGateKeeper:Landroid/service/gatekeeper/IGateKeeperService;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    cmp-long v0, v4, v6

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p2, "No secure user id for "

    .line 49
    .line 50
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-wide v2

    .line 64
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const v1, 0x8000

    .line 71
    .line 72
    .line 73
    and-int/2addr v1, p2

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    and-int/lit8 p2, p2, 0xf

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-nez p2, :cond_3

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance p2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 106
    .line 107
    const/4 v0, 0x2

    .line 108
    invoke-direct {p2, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 122
    .line 123
    invoke-virtual {p0, v4, v5, p1}, Landroid/security/KeyStoreAuthorization;->getLastAuthTime(J[I)J

    .line 124
    .line 125
    .line 126
    move-result-wide p0

    .line 127
    return-wide p0

    .line 128
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string p1, "authenticators must not be empty"

    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :catch_0
    move-exception p0

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v0, "Failed to get secure user id for "

    .line 140
    .line 141
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    return-wide v2

    .line 155
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 156
    .line 157
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method public final getSensorProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getSensorProperties_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 30
    .line 31
    invoke-interface {v1, p1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/hardware/biometrics/SensorPropertiesInternal;->from(Landroid/hardware/biometrics/SensorPropertiesInternal;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method

.method public final getSupportedModalities(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->getSupportedModalities_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "getSupportedModalities: Authenticators="

    .line 5
    .line 6
    .line 7
    const-string v1, "BiometricService"

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(Landroid/content/Context;I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    and-int/lit16 p1, p1, 0xff

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v2, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 63
    .line 64
    or-int/2addr v0, v1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return v0

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 68
    .line 69
    const-string p1, "Invalid authenticator configuration"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public final hasEnrolledBiometrics(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->hasEnrolledBiometrics_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string p1, "BiometricService"

    .line 36
    .line 37
    const-string p2, "Remote exception"

    .line 38
    .line 39
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->invalidateAuthenticatorIds_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

    .line 15
    .line 16
    move v4, p1

    .line 17
    move v5, p2

    .line 18
    move-object v6, p3

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onReadyForAuthentication(JI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->onReadyForAuthentication_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;JI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final declared-synchronized registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 9

    .line 1
    const-string v0, "Registering ID: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->registerAuthenticator_enforcePermission()V

    .line 5
    .line 6
    .line 7
    const-string v1, "BiometricService"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " Modality: "

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " Strength: "

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    if-eqz p4, :cond_4

    .line 41
    .line 42
    const/16 v0, 0xf

    .line 43
    .line 44
    if-eq p3, v0, :cond_1

    .line 45
    .line 46
    const/16 v0, 0xff

    .line 47
    .line 48
    if-eq p3, v0, :cond_1

    .line 49
    .line 50
    const/16 v0, 0xfff

    .line 51
    .line 52
    if-ne p3, v0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "Unsupported strength"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 84
    .line 85
    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 86
    .line 87
    if-eq v1, p1, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string p2, "Cannot register duplicate authenticator"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 101
    .line 102
    new-instance v8, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-object v2, v8

    .line 108
    move-object v3, p0

    .line 109
    move v4, p1

    .line 110
    move v5, p2

    .line 111
    move v6, p3

    .line 112
    move-object v7, p4

    .line 113
    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricStrengthController;->updateStrengths()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 128
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string p2, "Authenticator must not be null. Did you forget to modify the core/res/res/values/xml overlay for config_biometric_sensors?"

    .line 131
    .line 132
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_2
    monitor-exit p0

    .line 137
    throw p1
.end method

.method public final registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->registerEnabledOnKeyguardCallback_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 7
    .line 8
    new-instance v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    .line 9
    .line 10
    invoke-direct {v2, v0, p1}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    .line 11
    .line 12
    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 41
    .line 42
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledOnKeyguard(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-interface {p1, v2, v1}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    const-string p1, "BiometricService"

    .line 58
    .line 59
    const-string v0, "Remote exception"

    .line 60
    .line 61
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public final resetLockout(I[B)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->resetLockout_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "resetLockout(userId="

    .line 5
    .line 6
    .line 7
    const-string v1, ", hat="

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const-string/jumbo p2, "null "

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p2, "present"

    .line 20
    .line 21
    .line 22
    :goto_0
    const-string v1, ")"

    .line 23
    .line 24
    const-string v2, "BiometricService"

    .line 25
    .line 26
    invoke-static {v0, p2, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 30
    .line 31
    iget-object p2, p2, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->resetLockoutTimeBound_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "resetLockoutTimeBound: "

    .line 5
    .line 6
    .line 7
    const-string v1, ", "

    .line 8
    .line 9
    invoke-static {p3, v0, p2, v1, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "BiometricService"

    .line 14
    .line 15
    invoke-static {v0, p4, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 38
    .line 39
    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 40
    .line 41
    if-ne v4, p3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v2, v3

    .line 45
    :goto_0
    const-string v0, "Sensor: "

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string p0, " is invalid id"

    .line 50
    .line 51
    invoke-static {p3, v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    .line 74
    .line 75
    iget v5, v4, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 76
    .line 77
    if-ne v5, p3, :cond_3

    .line 78
    .line 79
    move-object v3, v4

    .line 80
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/16 v3, 0xf

    .line 85
    .line 86
    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_5

    .line 91
    .line 92
    const-string p0, " is does not meet the required strength to request resetLockout"

    .line 93
    .line 94
    invoke-static {p3, v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_a

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 117
    .line 118
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 119
    .line 120
    if-ne v3, p3, :cond_7

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    :try_start_0
    iget-object v3, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 124
    .line 125
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-interface {v3, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-boolean v4, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    .line 140
    .line 141
    if-eqz v4, :cond_8

    .line 142
    .line 143
    iget-boolean v3, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    .line 144
    .line 145
    if-nez v3, :cond_8

    .line 146
    .line 147
    const/4 v3, 0x1

    .line 148
    goto :goto_2

    .line 149
    :catch_0
    move-exception v2

    .line 150
    goto :goto_3

    .line 151
    :cond_8
    const/4 v3, 0x0

    .line 152
    :goto_2
    xor-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    if-nez v3, :cond_9

    .line 155
    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string/jumbo v4, "resetLockout from: "

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v4, ", for: "

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v4, ", userId: "

    .line 183
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    iget-object v2, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 198
    .line 199
    invoke-interface {v2, p1, p2, p4, p5}, Landroid/hardware/biometrics/IBiometricAuthenticator;->resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :goto_3
    const-string v3, "Remote exception"

    .line 204
    .line 205
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_a
    return-void
.end method

.method public final semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->semGetPromptInfo_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 29
    .line 30
    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 31
    .line 32
    if-ne v1, p1, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method
