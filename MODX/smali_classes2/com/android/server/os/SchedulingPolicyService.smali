.class public final Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MEDIA_PROCESS_NAMES:[Ljava/lang/String;


# instance fields
.field public mBoostedPid:I

.field public mClient:Landroid/os/IBinder;

.field public final mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "media.swcodec"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$1;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "SchedulingPolicyService.<init>"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final disableCpusetBoost(I)V
    .locals 9

    .line 1
    const-string v0, " back to group default"

    .line 2
    .line 3
    const-string v1, "SchedulingPolicyService"

    .line 4
    .line 5
    const-string v2, "Moving "

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    iput v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 11
    .line 12
    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_0
    iget-object v7, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catch_0
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 28
    .line 29
    throw p1

    .line 30
    :cond_0
    :goto_0
    if-ne v3, p1, :cond_1

    .line 31
    .line 32
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v4}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Couldn\'t move pid "

    .line 57
    .line 58
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_1
    return-void
.end method

.method public final enableCpusetBoost(ILandroid/os/IBinder;)I
    .locals 8

    .line 1
    const-string v0, "SchedulingPolicyService"

    .line 2
    .line 3
    const-string v1, " to group 5"

    .line 4
    .line 5
    const-string v2, "Moving "

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-ne v3, p1, :cond_0

    .line 11
    .line 12
    return v4

    .line 13
    :cond_0
    const/4 v3, -0x1

    .line 14
    iput v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 17
    .line 18
    if-eqz v5, :cond_1

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    :try_start_0
    iget-object v7, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    .line 22
    .line 23
    invoke-interface {v5, v7, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :catch_0
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    .line 34
    .line 35
    invoke-interface {p2, v5, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-static {p1, v1}, Landroid/os/Process;->setProcessGroup(II)V

    .line 58
    .line 59
    .line 60
    iput p1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 61
    .line 62
    iput-object p2, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .line 64
    return v4

    .line 65
    :catch_1
    move-exception p1

    .line 66
    const-string v1, "Failed enableCpusetBoost: "

    .line 67
    .line 68
    invoke-static {p1, v1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :try_start_2
    iget-object p0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    .line 72
    .line 73
    invoke-interface {p2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    .line 75
    .line 76
    :catch_2
    return v3
.end method

.method public final requestCpusetBoost(ZLandroid/os/IBinder;)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x3f5

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    sget-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    array-length v1, v0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    :try_start_0
    aget p1, v0, v2

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/SchedulingPolicyService;->enableCpusetBoost(ILandroid/os/IBinder;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    monitor-exit v1

    .line 47
    return p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    aget p1, v0, v2

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)V

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return v2

    .line 57
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_3
    :goto_1
    const-string p0, "SchedulingPolicyService"

    .line 60
    .line 61
    const-string/jumbo p1, "requestCpusetBoost: can\'t find media.codec process"

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return v2
.end method

.method public final requestPriority(IIIZ)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x3ea

    .line 10
    .line 11
    const/16 v2, 0x411

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/16 v0, 0x3e9

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    if-eq p0, v1, :cond_1

    .line 26
    .line 27
    if-eq p0, v2, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x417

    .line 30
    .line 31
    if-eq p0, v0, :cond_1

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    if-lt p3, p0, :cond_6

    .line 36
    .line 37
    const/4 p0, 0x3

    .line 38
    if-gt p3, p0, :cond_6

    .line 39
    .line 40
    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eq p0, p1, :cond_2

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-ne p0, v2, :cond_3

    .line 52
    .line 53
    if-nez p4, :cond_3

    .line 54
    .line 55
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eq p0, v2, :cond_3

    .line 60
    .line 61
    return v3

    .line 62
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    const-string p1, "SchedulingPolicyService"

    .line 67
    .line 68
    if-eq p0, v1, :cond_5

    .line 69
    .line 70
    if-nez p4, :cond_4

    .line 71
    .line 72
    const/4 p0, 0x4

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const/4 p0, 0x6

    .line 75
    :goto_1
    :try_start_0
    invoke-static {p2, p0}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception p0

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p3, "Failed setThreadGroup: "

    .line 83
    .line 84
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    return v3

    .line 98
    :cond_5
    :goto_2
    const p0, 0x40000001    # 2.0000002f

    .line 99
    .line 100
    .line 101
    :try_start_1
    invoke-static {p2, p0, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return p0

    .line 106
    :catch_1
    move-exception p0

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string p3, "Failed setThreadScheduler: "

    .line 110
    .line 111
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_3
    return v3
.end method
