.class public final Lcom/android/server/wm/RemoteAnimationController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCanceled:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsActivityEmbedding:Z

.field public mIsFinishing:Z

.field public mLinkedToDeathOfRunner:Z

.field public mOnRemoteAnimationReady:Ljava/lang/Runnable;

.field public final mPendingAnimations:Ljava/util/ArrayList;

.field final mPendingNonAppAnimations:Ljava/util/ArrayList;

.field public final mPendingWallpaperAnimations:Ljava/util/ArrayList;

.field public final mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTimeoutRunnable:Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    iput-boolean p5, p0, Lcom/android/server/wm/RemoteAnimationController;->mIsActivityEmbedding:Z

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    const-string v0, "binderDied"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final cancelAnimation(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const-wide v2, 0x681aaa7e1a8d350fL    # 3.041549519588004E193

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    .line 39
    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .locals 16

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 13
    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    const-wide v2, -0x4b8e700e06d4c215L    # -4.476533715114439E-56

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 29
    .line 30
    move-object v7, v0

    .line 31
    move-object/from16 v8, p0

    .line 32
    .line 33
    move-object/from16 v9, p1

    .line 34
    .line 35
    move-object/from16 v10, p2

    .line 36
    .line 37
    move-object/from16 v11, p3

    .line 38
    .line 39
    move-object/from16 v12, p4

    .line 40
    .line 41
    move-object/from16 v13, p5

    .line 42
    .line 43
    move/from16 v14, p6

    .line 44
    .line 45
    move/from16 v15, p7

    .line 46
    .line 47
    invoke-direct/range {v7 .. v15}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 48
    .line 49
    .line 50
    move-object/from16 v1, p0

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method public final invokeAnimationCancelled(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const-wide v2, 0x681aaa7e1a8d350fL    # 3.041549519588004E193

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-string v0, "WindowManager"

    .line 36
    .line 37
    const-string v1, "Failed to notify cancel"

    .line 38
    .line 39
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mOnRemoteAnimationReady:Ljava/lang/Runnable;

    .line 44
    .line 45
    return-void
.end method

.method public final onAnimationFinished()V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v2, v0, v1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-long v2, v2

    .line 15
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    const/4 v7, 0x1

    .line 26
    const/4 v8, 0x0

    .line 27
    const-wide v5, -0x25b248baff22cd56L    # -1.0057661877089301E127

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 45
    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 47
    .line 48
    .line 49
    monitor-enter v2

    .line 50
    const/4 v3, 0x1

    .line 51
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mIsFinishing:Z

    .line 52
    .line 53
    iget-boolean v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 54
    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v4}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v4, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 68
    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 71
    .line 72
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    aget-boolean v5, v0, v1

    .line 77
    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    iget-object v5, v4, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteAnimationController;

    .line 81
    .line 82
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 87
    .line 88
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    const/4 v10, 0x0

    .line 93
    const-wide v7, 0x3671b13485983055L    # 1.9368799561189928E-46

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    const/4 v5, 0x0

    .line 103
    iput-object v5, v4, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->mOuter:Lcom/android/server/wm/RemoteAnimationController;

    .line 104
    .line 105
    iput-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    .line 107
    :cond_3
    :try_start_1
    aget-boolean v0, v0, v1

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v9, 0x0

    .line 115
    const-wide v5, 0x6437914e2a503c6dL    # 5.8289837119461065E174

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    const/4 v7, 0x0

    .line 121
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :catch_0
    move-exception v0

    .line 129
    goto/16 :goto_4

    .line 130
    .line 131
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    sub-int/2addr v0, v3

    .line 138
    :goto_1
    if-ltz v0, :cond_9

    .line 139
    .line 140
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 147
    .line 148
    iget-object v5, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 149
    .line 150
    if-eqz v5, :cond_5

    .line 151
    .line 152
    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 153
    .line 154
    iget v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I

    .line 155
    .line 156
    invoke-interface {v6, v7, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    iget-object v5, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 160
    .line 161
    if-eqz v5, :cond_6

    .line 162
    .line 163
    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 164
    .line 165
    iget v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I

    .line 166
    .line 167
    invoke-interface {v6, v7, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 171
    .line 172
    if-nez v5, :cond_7

    .line 173
    .line 174
    iget-object v5, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 175
    .line 176
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    if-eqz v5, :cond_7

    .line 181
    .line 182
    iget-object v5, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 183
    .line 184
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eqz v5, :cond_7

    .line 189
    .line 190
    iget-object v5, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 191
    .line 192
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    if-eqz v5, :cond_7

    .line 197
    .line 198
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    if-eqz v6, :cond_7

    .line 203
    .line 204
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    iget-boolean v6, v6, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 209
    .line 210
    if-nez v6, :cond_7

    .line 211
    .line 212
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    iput-boolean v3, v5, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 217
    .line 218
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 224
    .line 225
    aget-boolean v5, v5, v1

    .line 226
    .line 227
    if-eqz v5, :cond_8

    .line 228
    .line 229
    iget-object v4, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 230
    .line 231
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 236
    .line 237
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    const/4 v8, 0x0

    .line 242
    const/4 v9, 0x0

    .line 243
    const-wide v6, 0x67d9a5f242f339aaL    # 1.8284143217604023E192

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    sub-int/2addr v0, v3

    .line 261
    :goto_2
    if-ltz v0, :cond_b

    .line 262
    .line 263
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 270
    .line 271
    iget-object v5, v4, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 272
    .line 273
    iget v6, v4, Lcom/android/server/wm/WallpaperAnimationAdapter;->mLastAnimationType:I

    .line 274
    .line 275
    invoke-interface {v5, v6, v4}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 276
    .line 277
    .line 278
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 284
    .line 285
    aget-boolean v5, v5, v1

    .line 286
    .line 287
    if-eqz v5, :cond_a

    .line 288
    .line 289
    iget-object v4, v4, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 290
    .line 291
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 296
    .line 297
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    const/4 v8, 0x0

    .line 302
    const/4 v9, 0x0

    .line 303
    const-wide v6, 0x5cf403bef1a033ceL    # 5.958619063961774E139

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    sub-int/2addr v0, v3

    .line 321
    :goto_3
    if-ltz v0, :cond_d

    .line 322
    .line 323
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    check-cast v3, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    .line 330
    .line 331
    iget-object v4, v3, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 332
    .line 333
    iget v5, v3, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mLastAnimationType:I

    .line 334
    .line 335
    invoke-interface {v4, v5, v3}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 336
    .line 337
    .line 338
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 344
    .line 345
    aget-boolean v4, v4, v1

    .line 346
    .line 347
    if-eqz v4, :cond_c

    .line 348
    .line 349
    iget-object v3, v3, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 350
    .line 351
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 356
    .line 357
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    const/4 v7, 0x0

    .line 362
    const/4 v8, 0x0

    .line 363
    const-wide v5, 0x604bb4b66e0332bcL    # 7.429510035915578E155

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .line 370
    .line 371
    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 372
    .line 373
    goto :goto_3

    .line 374
    :cond_d
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mIsFinishing:Z

    .line 375
    .line 376
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda0;

    .line 377
    .line 378
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 379
    .line 380
    .line 381
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 382
    .line 383
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 384
    .line 385
    .line 386
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 391
    .line 392
    .line 393
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 394
    .line 395
    const/4 v0, 0x2

    .line 396
    aget-boolean p0, p0, v0

    .line 397
    .line 398
    if-eqz p0, :cond_e

    .line 399
    .line 400
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 401
    .line 402
    const-wide v1, -0x35d98f6ce51fce9aL    # -1.6397861769182332E49

    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    const/4 v3, 0x0

    .line 408
    const/4 v4, 0x0

    .line 409
    const/4 v5, 0x0

    .line 410
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    :cond_e
    return-void

    .line 414
    :catchall_1
    move-exception p0

    .line 415
    goto :goto_6

    .line 416
    :goto_4
    :try_start_3
    const-string v3, "WindowManager"

    .line 417
    .line 418
    const-string v4, "Failed to finish remote animation"

    .line 419
    .line 420
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .line 422
    .line 423
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    :goto_5
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mIsFinishing:Z

    .line 425
    .line 426
    throw v0

    .line 427
    :goto_6
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 428
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 429
    .line 430
    .line 431
    throw p0
.end method

.method public final setRunningRemoteAnimation(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const-string p0, "Unable to find process with pid="

    .line 26
    .line 27
    const-string p1, " uid="

    .line 28
    .line 29
    const-string v2, "WindowManager"

    .line 30
    .line 31
    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 39
    .line 40
    or-int/lit8 v1, p1, 0x1

    .line 41
    .line 42
    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 49
    .line 50
    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    const-string p1, "Calling pid of remote animation was null"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method
