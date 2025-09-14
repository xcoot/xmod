.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;
.super Landroid/media/musicrecognition/IMusicRecognitionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final beginRecognition(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.MANAGE_MUSIC_RECOGNITION"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->getDefaultServiceName(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_0
    if-nez v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->isCalledByServiceAppLocked()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_3

    .line 69
    :cond_1
    :goto_1
    invoke-virtual {v2, p1, p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->beginRecognitionLocked(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :try_start_1
    invoke-static {p2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/4 p1, 0x3

    .line 78
    invoke-interface {p0, p1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :catch_0
    :goto_2
    :try_start_2
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string p1, "Permission Denial: beginRecognition from pid="

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ", uid="

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " doesn\'t hold android.permission.MANAGE_MUSIC_RECOGNITION"

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    new-instance p1, Ljava/lang/SecurityException;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method

.method public final isCalledByServiceAppLocked()Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "beginRecognition: called by UID "

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const-string v5, "MusicRecognitionManagerService"

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", but there\'s no service set for user "

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v4

    .line 48
    :cond_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    const-string p0, "beginRecognition: invalid service name: "

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return v4

    .line 64
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {p0, v0, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    if-eq v1, p0, :cond_2

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", but service UID is "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return v4

    .line 112
    :cond_2
    const/4 p0, 0x1

    .line 113
    return p0

    .line 114
    :catch_0
    const-string p0, "beginRecognition: could not verify UID for "

    .line 115
    .line 116
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return v4
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerServiceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerServiceShellCommand;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)V

    .line 6
    .line 7
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

    .line 16
    .line 17
    .line 18
    return-void
.end method
