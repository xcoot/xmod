.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doNotify()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x7d0

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;->sendFpEnrollNotification(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    const-string p0, "FingerprintService"

    .line 59
    .line 60
    const-string v2, "Null provider for notification"

    .line 61
    .line 62
    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_2
    :goto_3
    return-void
.end method

.method public final doSimulateVhalFingerDown()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFingerprintVirtualEnabled(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "FingerprintService"

    .line 14
    .line 15
    const-string v1, "Simulate virtual HAL finger down event"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 45
    .line 46
    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->simulateVhalFingerDown(II)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final doSync()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->mService:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x7d0

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFingerprintVirtualEnabled(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    const-string v0, "Sync virtual enrollments"

    .line 34
    .line 35
    const-string v1, "FingerprintService"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 78
    .line 79
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_1

    .line 96
    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 102
    .line 103
    iget v5, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 104
    .line 105
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;

    .line 106
    .line 107
    invoke-direct {v6, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v5, v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 115
    .line 116
    const-wide/16 v3, 0x3

    .line 117
    .line 118
    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_0
    move-exception p0

    .line 123
    const-string v0, "Failed to wait for sync finishing"

    .line 124
    .line 125
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_2
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    .line 1
    const-string v0, "Unrecognized command: "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->onHelp()V

    .line 7
    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v2, -0x1

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    sparse-switch v3, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string/jumbo v3, "notification"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move v3, v5

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :sswitch_1
    const-string/jumbo v3, "sync"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    move v3, v1

    .line 45
    goto :goto_1

    .line 46
    :sswitch_2
    const-string/jumbo v3, "help"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    move v3, v6

    .line 56
    goto :goto_1

    .line 57
    :sswitch_3
    const-string/jumbo v3, "fingerdown"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    move v3, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    move v3, v2

    .line 69
    :goto_1
    if-eqz v3, :cond_5

    .line 70
    .line 71
    if-eq v3, v1, :cond_4

    .line 72
    .line 73
    if-eq v3, v4, :cond_3

    .line 74
    .line 75
    if-eq v3, v5, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doNotify()V

    .line 90
    .line 91
    .line 92
    return v6

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doSimulateVhalFingerDown()V

    .line 94
    .line 95
    .line 96
    return v6

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->doSync()V

    .line 98
    .line 99
    .line 100
    return v6

    .line 101
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintShellCommand;->onHelp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    return v6

    .line 105
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "Exception: "

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    return v2

    .line 127
    :sswitch_data_0
    .sparse-switch
        -0x3c793475 -> :sswitch_3
        0x30cf41 -> :sswitch_2
        0x361a9b -> :sswitch_1
        0x237a88eb -> :sswitch_0
    .end sparse-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Fingerprint Service commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "      Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  sync"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "      Sync enrollments now (virtualized sensors only)."

    .line 26
    .line 27
    const-string v1, "  fingerdown"

    .line 28
    .line 29
    const-string v2, "      Simulate finger down event (virtualized sensors only)."

    .line 30
    .line 31
    const-string v3, "  notification"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "     Sends a Fingerprint re-enrollment notification"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
