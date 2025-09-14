.class public abstract Lcom/android/server/biometrics/Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static mDBCorrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 9
    if-nez v0, :cond_1

    .line 11
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    sput-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 21
    return-void
.end method

.method public static authenticatorStatusToBiometricConstant(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    :pswitch_0
    goto :goto_0

    .line 5
    :pswitch_1
    const/16 p0, 0x14

    .line 7
    return p0

    .line 8
    :pswitch_2
    const/16 p0, 0x12

    .line 10
    return p0

    .line 11
    :pswitch_3
    const/16 p0, 0x9

    .line 13
    return p0

    .line 14
    :pswitch_4
    const/4 p0, 0x7

    .line 15
    return p0

    .line 16
    :pswitch_5
    const/16 p0, 0xe

    .line 18
    return p0

    .line 19
    :pswitch_6
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->mandatoryBiometrics()Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    const/16 p0, 0x15

    .line 27
    return p0

    .line 28
    :cond_0
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :pswitch_7
    const/16 p0, 0xb

    .line 32
    return p0

    .line 33
    :pswitch_8
    const/16 p0, 0xf

    .line 35
    return p0

    .line 36
    :pswitch_9
    const/16 p0, 0xc

    .line 38
    return p0

    .line 39
    :pswitch_a
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Must have "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " permission."

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static getAuthenticationTypeForResult(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 4
    const/4 v1, 0x4

    .line 5
    if-eq p0, v1, :cond_1

    .line 7
    const/4 v1, 0x7

    .line 8
    if-ne p0, v1, :cond_0

    .line 10
    return v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v1, "Unsupported dismissal reason: "

    .line 15
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0

    .line 23
    :cond_1
    const/4 p0, 0x2

    .line 24
    return p0
.end method

.method public static getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string/jumbo p0, "null"

    .line 15
    :goto_0
    return-object p0
.end method

.method public static getCurrentStrength(I)I
    .locals 2

    .line 1
    const-string/jumbo v0, "biometric"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    .line 15
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v0, "BiometricUtils"

    .line 20
    const-string v1, "RemoteException"

    .line 22
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p4, :cond_0

    .line 7
    :try_start_0
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 10
    move-result p0

    .line 11
    :goto_0
    move p1, p0

    .line 12
    goto :goto_2

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo p3, "getIntDb: "

    .line 25
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    const-string p3, "BiometricUtils"

    .line 30
    invoke-static {p0, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 33
    :goto_2
    return p1
.end method

.method public static getUserOrWorkProfileId(Landroid/content/Context;I)I
    .locals 10

    .line 1
    const-string/jumbo v0, "getUserOrWorkProfileId: change userId,  "

    .line 4
    const-string v1, "DualAppId, "

    .line 6
    const-string v2, "AppSeparation, "

    .line 8
    const-string v3, "SecureFolder, "

    .line 10
    const-string v4, "Unable to acquire UserInfo: "

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v5

    .line 16
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->isWorkProfile(Landroid/content/Context;I)Z

    .line 19
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v7, :cond_0

    .line 22
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    return p1

    .line 26
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 29
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    const-string v7, "BiometricUtils"

    .line 32
    if-nez p0, :cond_1

    .line 34
    :try_start_2
    const-string p0, "Unable to acquire UserManager"

    .line 36
    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    return p1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_1

    .line 46
    :cond_1
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 49
    move-result-object v8

    .line 50
    if-nez v8, :cond_2

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return p1

    .line 71
    :cond_2
    :try_start_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 77
    iget v4, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    move v4, p1

    .line 96
    :goto_0
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_4

    .line 102
    iget v4, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v2

    .line 116
    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_4
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_5

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 137
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_5

    .line 146
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 148
    :cond_5
    invoke-virtual {p0, v4}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    .line 151
    move-result p0

    .line 152
    if-eq p1, p0, :cond_6

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string p1, " > "

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-static {v7, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    :cond_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    return p0

    .line 181
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw p0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static isAtLeastStrength(II)Z
    .locals 3

    .line 1
    and-int/lit16 p0, p0, 0x7fff

    .line 3
    not-int v0, p1

    .line 4
    and-int/2addr v0, p0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    move v2, v0

    .line 11
    :goto_0
    if-gt v2, p1, :cond_2

    .line 13
    if-ne v2, p0, :cond_1

    .line 15
    return v0

    .line 16
    :cond_1
    shl-int/lit8 v2, v2, 0x1

    .line 18
    or-int/2addr v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "Unknown sensorStrength: "

    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string p0, ", requestedStrength: "

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    const-string p1, "BiometricService"

    .line 44
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return v1
.end method

.method public static isBackground(Ljava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Checking if the authenticating is in background, clientPackage:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BiometricUtils"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 23
    move-result-object v0

    .line 24
    const v2, 0x7fffffff

    .line 27
    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v0, :cond_4

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v0

    .line 45
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 59
    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 71
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 77
    const/4 p0, 0x0

    .line 78
    return p0

    .line 79
    :cond_2
    const-string v5, "Running task, top: "

    .line 81
    const-string v6, ", isVisible: "

    .line 83
    invoke-static {v5, v4, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 90
    move-result v3

    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return v2

    .line 103
    :cond_4
    :goto_1
    const-string p0, "No running tasks reported"

    .line 105
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v2
.end method

.method public static isCredentialRequested(I)Z
    .locals 1

    .line 1
    const v0, 0x8000

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 8
    const-string p0, "BiometricUtils"

    .line 10
    const-string p1, "Unable to get UserManager"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0, v3}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_4

    .line 30
    array-length v3, p0

    .line 31
    if-nez v3, :cond_1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    array-length v3, p0

    .line 35
    move v4, v0

    .line 36
    :goto_0
    if-ge v4, v3, :cond_3

    .line 38
    aget v5, p0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-ne v5, p1, :cond_2

    .line 42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    return v0

    .line 56
    :cond_4
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    return v0

    .line 60
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0
.end method

.method public static isDebugEnabled(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    const/16 v0, -0x2710

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 9
    if-nez v0, :cond_1

    .line 11
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 13
    if-nez v0, :cond_1

    .line 15
    return v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object p0

    .line 20
    const-string/jumbo v0, "biometric_debug_enabled"

    .line 23
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_2

    .line 29
    return v1

    .line 30
    :cond_2
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public static isFingerprintVirtualEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v2, "biometric_fingerprint_virtual_enabled"

    .line 15
    const/4 v3, -0x2

    .line 16
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v0, v2, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v0, "biometric_virtual_enabled"

    .line 30
    invoke-static {p0, v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 33
    move-result p0

    .line 34
    if-ne p0, v2, :cond_1

    .line 36
    :cond_0
    move v1, v2

    .line 37
    :cond_1
    return v1
.end method

.method public static isFlipFolded(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const-string/jumbo v0, "input"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 16
    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    .line 21
    move-result p0

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p0, v0, :cond_1

    .line 25
    move v1, v0

    .line 26
    :cond_1
    return v1
.end method

.method public static isFlipOpened(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const-string/jumbo v0, "input"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 16
    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    .line 21
    move-result p0

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eq p0, v0, :cond_1

    .line 25
    move v1, v0

    .line 26
    :cond_1
    return v1
.end method

.method public static isFolderFolded(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const-string/jumbo v0, "input"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 16
    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    .line 21
    move-result p0

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p0, v0, :cond_1

    .line 25
    move v1, v0

    .line 26
    :cond_1
    return v1
.end method

.method public static isFolderOpened(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const-string/jumbo v0, "input"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 16
    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semGetLidState()I

    .line 21
    move-result p0

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eq p0, v0, :cond_1

    .line 25
    move v1, v0

    .line 26
    :cond_1
    return v1
.end method

.method public static isForeground(II)Z
    .locals 7

    .line 1
    const-string v0, "BiometricUtils"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 7
    move-result-object v2

    .line 8
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v2, :cond_0

    .line 15
    const-string p0, "No running app processes found, defaulting to true"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v3

    .line 21
    :cond_0
    move v4, v1

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_2

    .line 28
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 34
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 36
    if-ne v6, p1, :cond_1

    .line 38
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 40
    if-ne v6, p0, :cond_1

    .line 42
    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/16 v6, 0x7d

    .line 46
    if-gt v5, v6, :cond_1

    .line 48
    return v3

    .line 49
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    const-string p0, "am.getRunningAppProcesses() failed"

    .line 54
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    return v1
.end method

.method public static isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p0

    .line 18
    const v3, 0x104036e

    .line 21
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    :goto_1
    if-eqz v0, :cond_2

    .line 39
    if-eqz p0, :cond_2

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 47
    move v1, v2

    .line 48
    :cond_2
    return v1
.end method

.method public static isStrongBiometric(I)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "biometric"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/IBiometricService;->getCurrentStrength(I)I

    .line 15
    move-result p0

    .line 16
    const/16 v0, 0xf

    .line 18
    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string v0, "BiometricUtils"

    .line 26
    const-string v1, "RemoteException"

    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static isSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    const-string p0, "android"

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "accessibility"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static isValidAuthenticatorConfig(Landroid/content/Context;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->mandatoryBiometrics()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 11
    const/high16 v1, -0x20000

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/high16 v1, -0x10000

    .line 16
    :goto_0
    and-int/2addr v1, p1

    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, "BiometricService"

    .line 20
    if-eqz v1, :cond_2

    .line 22
    const-string p0, "Non-biometric, non-credential bits found. Authenticators: "

    .line 24
    invoke-static {p1, p0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    return v2

    .line 28
    :cond_2
    and-int/lit16 v1, p1, 0x7fff

    .line 30
    if-nez v1, :cond_3

    .line 32
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_3

    .line 38
    return v0

    .line 39
    :cond_3
    const/16 v4, 0xf

    .line 41
    if-ne v1, v4, :cond_4

    .line 43
    return v0

    .line 44
    :cond_4
    const/16 v4, 0xff

    .line 46
    if-ne v1, v4, :cond_5

    .line 48
    return v0

    .line 49
    :cond_5
    const/high16 v1, 0x10000

    .line 51
    and-int/2addr v1, p1

    .line 52
    if-eqz v1, :cond_6

    .line 54
    const-string p1, "android.permission.SET_BIOMETRIC_DIALOG_ADVANCED"

    .line 56
    const-string v1, "Must have SET_BIOMETRIC_DIALOG_ADVANCED permission"

    .line 58
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v0

    .line 62
    :cond_6
    const-string p0, "Unsupported biometric flags. Authenticators: "

    .line 64
    invoke-static {p1, p0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    return v2
.end method

.method public static isWorkProfile(Landroid/content/Context;I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "BiometricUtils"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo p0, "useOwnerBiometrics: SecureFolder profile!"

    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    const-string/jumbo p0, "useOwnerBiometrics: AppSeparation profile!"

    .line 26
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 36
    const-string/jumbo p0, "useOwnerBiometrics: DualApp profile!"

    .line 39
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return v2

    .line 43
    :cond_2
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_4

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_3

    .line 55
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_3

    .line 61
    const/4 v2, 0x1

    .line 62
    :cond_3
    return v2

    .line 63
    :cond_4
    const-string/jumbo p0, "isWorkProfile: Unable to acquire UserManager"

    .line 66
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v2
.end method

.method public static listContains(I[I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_1

    .line 6
    aget v2, p1, v1

    .line 8
    if-ne v2, p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v0
.end method

.method public static propertyStrengthToAuthenticatorStrength(I)I
    .locals 3

    .line 1
    const/16 v0, 0xfff

    .line 3
    if-eqz p0, :cond_2

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p0, v1, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p0, v1, :cond_0

    .line 11
    const-string/jumbo v1, "propertyStrengthToAuthenticatorStrength: Unknown strength "

    .line 14
    const-string v2, "BiometricUtils"

    .line 16
    invoke-static {p0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    return v0

    .line 20
    :cond_0
    const/16 p0, 0xf

    .line 22
    return p0

    .line 23
    :cond_1
    const/16 p0, 0xff

    .line 25
    return p0

    .line 26
    :cond_2
    return v0
.end method

.method public static putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, -0x2

    .line 6
    if-eqz p2, :cond_0

    .line 8
    :try_start_0
    invoke-static {p0, p1, p3, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1, p3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo p2, "putIntDb: "

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    const-string p2, "BiometricUtils"

    .line 28
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    :goto_1
    return-void
.end method

.method public static putLongDb(Landroid/content/Context;JI)V
    .locals 1

    .line 1
    const-string/jumbo v0, "biometrics_strong_enroll_timestamp"

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object p0

    .line 8
    :try_start_0
    invoke-static {p0, v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo p2, "putIntDb: "

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    const-string p2, "BiometricUtils"

    .line 23
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 26
    :goto_0
    return-void
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "BiometricUtils"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v3, "Invalid file info, "

    .line 14
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-object v2

    .line 28
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 30
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 36
    move-result-wide v3

    .line 37
    long-to-int p0, v3

    .line 38
    new-array v2, p0, [B

    .line 40
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 43
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-lez p0, :cond_1

    .line 46
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 49
    return-object v2

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    goto :goto_2

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception v0

    .line 62
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 66
    :goto_1
    const-string/jumbo v0, "failed to read file"

    .line 69
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :goto_2
    return-object v2
.end method

.method public static registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p3

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    move v6, p6

    .line 8
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string p1, "BiometricUtils"

    .line 15
    const-string/jumbo p2, "registerBroadcast: failed to set receiver"

    .line 18
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_0
    return-void
.end method

.method public static semVibrate(Landroid/content/Context;I)V
    .locals 3

    .line 1
    const-class v0, Landroid/os/Vibrator;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Vibrator;

    .line 9
    const-string v0, "BiometricUtils"

    .line 11
    if-nez p0, :cond_0

    .line 13
    const-string/jumbo p0, "semVibrate: No vibrator service"

    .line 16
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_0
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 28
    move-result v1

    .line 29
    if-ne v1, v2, :cond_1

    .line 31
    const/16 v1, 0x71

    .line 33
    if-ne p1, v1, :cond_1

    .line 35
    const/16 p1, 0x64

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_2

    .line 43
    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 46
    move-result p1

    .line 47
    const/4 v0, -0x1

    .line 48
    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 50
    invoke-static {p1, v0, v1}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 60
    if-eqz p1, :cond_3

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "semVibrate: supported type="

    .line 67
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 73
    move-result p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_3
    :goto_0
    return-void
.end method

.method public static unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v0, "unregisterBroadcast: failed to set receiver"

    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const-string p1, "BiometricUtils"

    .line 27
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return-void
.end method

.method public static writeFile(Ljava/io/File;[B)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 6
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    goto :goto_0

    .line 23
    :catchall_1
    move-exception p1

    .line 24
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 27
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 28
    :goto_1
    const-string p1, "BiometricUtils"

    .line 30
    const-string/jumbo v0, "failed to write file"

    .line 33
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :goto_2
    return-void
.end method
