.class public final Lcom/android/server/biometrics/sensors/face/FaceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/biometrics/sensors/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->mService:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 6
    return-void
.end method


# virtual methods
.method public final doNotify()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->mService:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x7d0

    .line 15
    if-ne v1, v2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo v1, "com.samsung.android.bio.face.permission.MANAGE_FACE"

    .line 21
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    :goto_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 26
    if-eqz v0, :cond_2

    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v0

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 40
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 44
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 46
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

    .line 48
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;->sendFaceEnrollNotification(Landroid/content/Context;)V

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    const-string p0, "FaceService"

    .line 61
    const-string v2, "Null provider for notification"

    .line 63
    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    goto :goto_3

    .line 70
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    throw p0

    .line 74
    :cond_2
    :goto_3
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    .line 1
    const-string v0, "Unrecognized command: "

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->onHelp()V

    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v2, -0x1

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v3

    .line 15
    const v4, 0x30cf41

    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eq v3, v4, :cond_3

    .line 22
    const v4, 0x361a9b

    .line 25
    if-eq v3, v4, :cond_2

    .line 27
    const v4, 0x237a88eb

    .line 30
    if-eq v3, v4, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string/jumbo v3, "notification"

    .line 36
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_4

    .line 42
    move v3, v5

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    const-string/jumbo v3, "sync"

    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_4

    .line 55
    move v3, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const-string/jumbo v3, "help"

    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_4

    .line 66
    move v3, v6

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_0
    move v3, v2

    .line 69
    :goto_1
    if-eqz v3, :cond_8

    .line 71
    if-eq v3, v1, :cond_6

    .line 73
    if-eq v3, v5, :cond_5

    .line 75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->doNotify()V

    .line 90
    return v6

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->mService:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 93
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 96
    move-result-object p1

    .line 97
    const-string/jumbo v0, "com.samsung.android.bio.face.permission.MANAGE_FACE"

    .line 100
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 105
    move-result v1

    .line 106
    const/16 v3, 0x7d0

    .line 108
    if-ne v1, v3, :cond_7

    .line 110
    goto :goto_2

    .line 111
    :cond_7
    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    :goto_2
    invoke-static {}, Lcom/android/server/biometrics/Flags;->faceVhalFeature()Z

    .line 117
    return v6

    .line 118
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceShellCommand;->onHelp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return v6

    .line 122
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 125
    move-result-object p0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "Exception: "

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    :goto_4
    return v2
.end method

.method public final onHelp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Face Service commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "      Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  sync"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "      Sync enrollments now (virtualized sensors only)."

    .line 27
    const-string v1, "  notification"

    .line 29
    const-string v2, "     Sends a Face re-enrollment notification"

    .line 31
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
