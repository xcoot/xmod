.class public final Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;
.super Landroid/rotationresolver/RotationResolverInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/rotationresolver/RotationResolverInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isRotationResolverSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v3, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    invoke-virtual {v3, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    xor-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    .line 26
    .line 27
    iget-boolean v4, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 42
    .line 43
    if-nez p2, :cond_0

    .line 44
    .line 45
    new-instance v10, Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 46
    .line 47
    const-string v4, ""

    .line 48
    .line 49
    const/4 v7, 0x1

    .line 50
    move-object v3, v10

    .line 51
    move v5, p4

    .line 52
    move v6, p3

    .line 53
    move-wide/from16 v8, p5

    .line 54
    .line 55
    invoke-direct/range {v3 .. v9}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    .line 56
    .line 57
    .line 58
    :goto_0
    move-object/from16 v3, p7

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_4

    .line 63
    :cond_0
    new-instance v10, Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    move-object v3, v10

    .line 67
    move-object v4, p2

    .line 68
    move v5, p4

    .line 69
    move v6, p3

    .line 70
    move-wide/from16 v8, p5

    .line 71
    .line 72
    invoke-direct/range {v3 .. v9}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_1
    invoke-virtual {v0, p1, v10, v3}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_1
    if-eqz v3, :cond_2

    .line 81
    .line 82
    const-string v0, "RotationResolverManagerService"

    .line 83
    .line 84
    const-string v3, "Rotation Resolver service is disabled."

    .line 85
    .line 86
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const-string v0, "RotationResolverManagerService"

    .line 91
    .line 92
    const-string v3, "Camera is locked by a toggle."

    .line 93
    .line 94
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :goto_2
    const/4 v0, 0x0

    .line 98
    invoke-interface {p1, v0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {p4}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {p3}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/16 v3, 0x148

    .line 110
    .line 111
    const/4 v4, 0x6

    .line 112
    invoke-static {v3, v0, v1, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 113
    .line 114
    .line 115
    :goto_3
    monitor-exit v2

    .line 116
    return-void

    .line 117
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw v0
.end method
