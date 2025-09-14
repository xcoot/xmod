.class public final Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
.super Lcom/android/internal/app/ISoundTriggerService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/ISoundTriggerService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final attachAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;
    .locals 8

    .line 1
    const-string v0, "SoundTriggerSessionLogs for package: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 14
    .line 15
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 16
    .line 17
    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;->ATTACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v6, p1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v6, "#"

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-direct {v3, v4, v5, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-string v3, "android.permission.SOUNDTRIGGER_DELEGATE_IDENTITY"

    .line 53
    .line 54
    invoke-static {v2, v3, p2, p1}, Landroid/media/permission/PermissionUtil;->establishIdentityIndirect(Landroid/content/Context;Ljava/lang/String;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    :try_start_0
    new-instance v2, Lcom/android/server/utils/EventLogger;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " - "

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v0, p1, Landroid/media/permission/Identity;->uid:I

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string/jumbo v0, "|"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget p1, p1, Landroid/media/permission/Identity;->pid:I

    .line 96
    .line 97
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const/16 v0, 0x80

    .line 105
    .line 106
    invoke-direct {v2, v0, p1}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p3, v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->newSoundTriggerHelper(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;Z)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-direct {p1, p0, p4, p3, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;Lcom/android/server/soundtrigger/SoundTriggerHelper;Lcom/android/server/utils/EventLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    if-eqz p2, :cond_0

    .line 122
    .line 123
    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V

    .line 124
    .line 125
    .line 126
    :cond_0
    return-object p1

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    if-eqz p2, :cond_1

    .line 129
    .line 130
    :try_start_1
    invoke-interface {p2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_1
    move-exception p1

    .line 135
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :cond_1
    :goto_0
    throw p0
.end method

.method public final attachAsOriginator(Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;
    .locals 8

    .line 1
    const-string v0, "SoundTriggerSessionLogs for package: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 14
    .line 15
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 16
    .line 17
    sget-object v4, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;->ATTACH:Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v6, p1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v6, "#"

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-direct {v3, v4, v5, v7}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :try_start_0
    new-instance v3, Lcom/android/server/utils/EventLogger;

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, " - "

    .line 74
    .line 75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v0, p1, Landroid/media/permission/Identity;->uid:I

    .line 79
    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string/jumbo v0, "|"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget p1, p1, Landroid/media/permission/Identity;->pid:I

    .line 90
    .line 91
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const/16 v0, 0x80

    .line 99
    .line 100
    invoke-direct {v3, v0, p1}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p2, v3, v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->newSoundTriggerHelper(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;Z)Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-direct {p1, p0, p3, p2, v3}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/IBinder;Lcom/android/server/soundtrigger/SoundTriggerHelper;Lcom/android/server/utils/EventLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    if-eqz v2, :cond_0

    .line 116
    .line 117
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V

    .line 118
    .line 119
    .line 120
    :cond_0
    return-object p1

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    if-eqz v2, :cond_1

    .line 123
    .line 124
    :try_start_1
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catchall_1
    move-exception p1

    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    :goto_0
    throw p0
.end method

.method public final attachInjection(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.MANAGE_SOUND_TRIGGER"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/content/PermissionChecker;->checkCallingPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-string/jumbo p0, "soundtrigger_middleware"

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->attachFakeHalInjection(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    throw p0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string p3, "SoundTriggerService"

    .line 6
    .line 7
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p1, "##Service-Wide logs:"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 22
    .line 23
    const-string p3, "  "

    .line 24
    .line 25
    invoke-virtual {p1, p2, p3}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "\n##Device state logs:"

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 36
    .line 37
    const-string p3, "PowerSaveMode: "

    .line 38
    .line 39
    const-string v0, "PhoneState: "

    .line 40
    .line 41
    const-string v1, "DeviceState: "

    .line 42
    .line 43
    iget-object v2, p1, Lcom/android/server/soundtrigger/DeviceStateHandler;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v2

    .line 46
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerDeviceState:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v0, p1, Lcom/android/server/soundtrigger/DeviceStateHandler;->mIsPhoneCallOngoing:Z

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget p1, p1, Lcom/android/server/soundtrigger/DeviceStateHandler;->mSoundTriggerPowerSaveMode:I

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 102
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 105
    .line 106
    const-string p3, "  "

    .line 107
    .line 108
    invoke-virtual {p1, p2, p3}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p1, "\n##Active Session dumps:\n"

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    if-eqz p3, :cond_1

    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    check-cast p3, Lcom/android/server/utils/EventLogger;

    .line 135
    .line 136
    const-string v0, "  "

    .line 137
    .line 138
    invoke-virtual {p3, p2, v0}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string p3, ""

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    const-string p1, "##Detached Session dumps:\n"

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 155
    .line 156
    check-cast p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result p3

    .line 166
    if-eqz p3, :cond_2

    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    check-cast p3, Lcom/android/server/utils/EventLogger;

    .line 173
    .line 174
    const-string v0, "  "

    .line 175
    .line 176
    invoke-virtual {p3, p2, v0}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string p3, ""

    .line 180
    .line 181
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_2
    const-string p1, "##Enrolled db dump:\n"

    .line 186
    .line 187
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 191
    .line 192
    iget-object p1, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    .line 193
    .line 194
    monitor-enter p1

    .line 195
    :try_start_1
    const-string p3, "SELECT  * FROM st_sound_model"

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 203
    .line 204
    .line 205
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 206
    :try_start_2
    const-string v1, "  Enrolled GenericSoundModels:"

    .line 207
    .line 208
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_a

    .line 216
    .line 217
    invoke-interface {p3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    :cond_3
    array-length v2, v1

    .line 222
    const/4 v3, 0x0

    .line 223
    :goto_2
    if-ge v3, v2, :cond_9

    .line 224
    .line 225
    aget-object v4, v1, v3

    .line 226
    .line 227
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getType(I)I

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_8

    .line 236
    .line 237
    const/4 v7, 0x1

    .line 238
    if-eq v6, v7, :cond_7

    .line 239
    .line 240
    const/4 v7, 0x2

    .line 241
    if-eq v6, v7, :cond_6

    .line 242
    .line 243
    const/4 v7, 0x3

    .line 244
    if-eq v6, v7, :cond_5

    .line 245
    .line 246
    const/4 v5, 0x4

    .line 247
    if-eq v6, v5, :cond_4

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_4
    const-string v5, "    %s: data blob\n"

    .line 251
    .line 252
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {p2, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :catchall_0
    move-exception p0

    .line 261
    goto/16 :goto_7

    .line 262
    .line 263
    :cond_5
    const-string v6, "    %s: %s\n"

    .line 264
    .line 265
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {p2, v6, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_6
    const-string v6, "    %s: %f\n"

    .line 278
    .line 279
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getFloat(I)F

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {p2, v6, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_7
    const-string v6, "    %s: %d\n"

    .line 296
    .line 297
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {p2, v6, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_8
    const-string v5, "    %s: null\n"

    .line 314
    .line 315
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-virtual {p2, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 320
    .line 321
    .line 322
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 326
    .line 327
    .line 328
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 329
    .line 330
    .line 331
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    if-nez v2, :cond_3

    .line 333
    .line 334
    :cond_a
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 338
    .line 339
    .line 340
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 341
    const-string p1, "\n##Sound Model Stats dump:\n"

    .line 342
    .line 343
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 347
    .line 348
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 349
    .line 350
    monitor-enter p0

    .line 351
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 352
    .line 353
    .line 354
    move-result-wide v0

    .line 355
    const-string p1, "Model Stats:"

    .line 356
    .line 357
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result p3

    .line 374
    if-eqz p3, :cond_c

    .line 375
    .line 376
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object p3

    .line 380
    check-cast p3, Ljava/util/Map$Entry;

    .line 381
    .line 382
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    check-cast v2, Ljava/util/UUID;

    .line 387
    .line 388
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object p3

    .line 392
    check-cast p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 393
    .line 394
    iget-wide v3, p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 395
    .line 396
    iget-boolean v5, p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    .line 397
    .line 398
    if-eqz v5, :cond_b

    .line 399
    .line 400
    iget-wide v5, p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    .line 401
    .line 402
    sub-long v5, v0, v5

    .line 403
    .line 404
    add-long/2addr v3, v5

    .line 405
    goto :goto_5

    .line 406
    :catchall_1
    move-exception p1

    .line 407
    goto :goto_6

    .line 408
    :cond_b
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v2, ", total_time(msec)="

    .line 417
    .line 418
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v2, ", total_count="

    .line 425
    .line 426
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    iget-wide v2, p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    .line 430
    .line 431
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    const-string v2, ", last_start="

    .line 435
    .line 436
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    iget-wide v2, p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    .line 440
    .line 441
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v2, ", last_stop="

    .line 445
    .line 446
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    iget-wide v2, p3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    .line 450
    .line 451
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p3

    .line 458
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 459
    .line 460
    .line 461
    goto :goto_4

    .line 462
    :cond_c
    monitor-exit p0

    .line 463
    return-void

    .line 464
    :goto_6
    monitor-exit p0

    .line 465
    throw p1

    .line 466
    :catchall_2
    move-exception p0

    .line 467
    goto :goto_8

    .line 468
    :goto_7
    :try_start_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 472
    .line 473
    .line 474
    throw p0

    .line 475
    :goto_8
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 476
    throw p0

    .line 477
    :catchall_3
    move-exception p0

    .line 478
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 479
    throw p0
.end method

.method public final listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;

    .line 6
    .line 7
    sget-object v2, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;->LIST_MODULE:Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    .line 8
    .line 9
    iget-object v3, p1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->listUnderlyingModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    :try_start_1
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    throw p0
.end method

.method public final setInPhoneCallState(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Overriding phone call state: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SoundTriggerService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->onPhoneCallStateChanged(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
