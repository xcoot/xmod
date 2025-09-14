.class public final Lcom/android/server/wm/WindowSurfaceController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mSurfaceShown:Z

.field public final mWindowSession:Lcom/android/server/wm/Session;

.field public final mWindowType:I

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/android/server/wm/WindowStateAnimator;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p4, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    .line 16
    .line 17
    iget-object v0, p4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 22
    .line 23
    iget v2, v1, Lcom/android/server/wm/Session;->mPid:I

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    const-string v2, "$_"

    .line 32
    .line 33
    invoke-static {p1, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p4, p4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 38
    .line 39
    iget-object p4, p4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 40
    .line 41
    iget p4, p4, Lcom/android/server/wm/Session;->mPid:I

    .line 42
    .line 43
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_0
    const-string/jumbo p4, "new SurfaceControl"

    .line 51
    .line 52
    .line 53
    const-wide/16 v2, 0x20

    .line 54
    .line 55
    invoke-static {v2, v3, p4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 63
    .line 64
    invoke-virtual {p4, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    invoke-virtual {p4, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-virtual {p4, p2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/4 p3, 0x2

    .line 81
    invoke-virtual {p2, p3, p5}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const/4 p3, 0x1

    .line 86
    iget p4, v1, Lcom/android/server/wm/Session;->mUid:I

    .line 87
    .line 88
    invoke-virtual {p2, p3, p4}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const/4 p3, 0x6

    .line 93
    iget p4, v1, Lcom/android/server/wm/Session;->mPid:I

    .line 94
    .line 95
    invoke-virtual {p2, p3, p4}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string p3, "WindowSurfaceController"

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide p3

    .line 113
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 118
    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string/jumbo p2, "makeSurface duration="

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    sub-long/2addr v0, p3

    .line 132
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p2, " name="

    .line 136
    .line 137
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const-string p1, "WindowManager"

    .line 148
    .line 149
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 153
    .line 154
    .line 155
    return-void
.end method


# virtual methods
.method public final destroy(Landroid/view/SurfaceControl$Transaction;)V
    .locals 13

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4
    .line 5
    const-string v2, "Error destroying surface in: "

    .line 6
    .line 7
    const-string v3, "Unexpected removing wallpaper surface of "

    .line 8
    .line 9
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_SHOW_SURFACE_ALLOC_enabled:[Z

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    aget-boolean v4, v4, v5

    .line 13
    .line 14
    const/16 v5, 0x8

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    const-wide v8, -0x3aee2347b0cbcbccL    # -5.398514866958402E24

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    const-string v11, "Destroying surface %s called by %s"

    .line 43
    .line 44
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    const/4 v4, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    iget-boolean v7, v1, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 56
    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    :try_start_1
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 60
    .line 61
    if-nez v7, :cond_1

    .line 62
    .line 63
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 64
    .line 65
    if-nez v7, :cond_1

    .line 66
    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " by "

    .line 76
    .line 77
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_4

    .line 97
    :catch_0
    move-exception p1

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 105
    .line 106
    .line 107
    iput-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :goto_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :goto_3
    return-void

    .line 127
    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 128
    .line 129
    .line 130
    iput-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 131
    .line 132
    throw p1
.end method

.method public final setColorSpaceAgnostic(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-wide v2, -0x7b03ca0b28e4c086L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 35
    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final setInternalPresentationOnly(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-wide v2, -0x1b41a278dceacf51L    # -1.9226297711929146E177

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 35
    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/16 v0, 0x20

    .line 40
    .line 41
    invoke-virtual {p1, p0, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setShown(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    if-ne v2, p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    iput-boolean p1, v1, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    .line 35
    .line 36
    aput-wide v5, v2, v4

    .line 37
    .line 38
    aput-wide v5, v2, v3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceByTarget(Lcom/android/server/wm/WindowContainer;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 57
    .line 58
    const/16 v5, 0x7d0

    .line 59
    .line 60
    if-lt v2, v5, :cond_7

    .line 61
    .line 62
    const/16 v5, 0x7d5

    .line 63
    .line 64
    if-eq v2, v5, :cond_7

    .line 65
    .line 66
    const/16 v5, 0x7ee

    .line 67
    .line 68
    if-eq v2, v5, :cond_7

    .line 69
    .line 70
    const/16 v5, 0x7f5

    .line 71
    .line 72
    if-ne v2, v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/4 v5, 0x5

    .line 85
    if-ne v2, v5, :cond_2

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 93
    .line 94
    iget v1, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 95
    .line 96
    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v5, v2, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 98
    .line 99
    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-ltz v5, :cond_5

    .line 104
    .line 105
    iget-object v1, v2, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 106
    .line 107
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    move p1, v3

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const/4 p1, -0x1

    .line 116
    :goto_1
    add-int/2addr v1, p1

    .line 117
    if-lez v1, :cond_4

    .line 118
    .line 119
    iget-object p1, v2, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 120
    .line 121
    invoke-virtual {p1, v5, v1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    iget-object p1, v2, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 128
    .line 129
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    if-eqz p1, :cond_6

    .line 134
    .line 135
    iget-object p1, v2, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 136
    .line 137
    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_2
    monitor-exit v2

    .line 141
    goto :goto_4

    .line 142
    :goto_3
    monitor-exit v2

    .line 143
    throw p0

    .line 144
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 145
    .line 146
    if-eqz p1, :cond_13

    .line 147
    .line 148
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 149
    .line 150
    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    .line 151
    .line 152
    if-eq v1, v0, :cond_9

    .line 153
    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    iget v0, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    .line 157
    .line 158
    add-int/2addr v0, v3

    .line 159
    iput v0, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_8
    iget v0, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    .line 163
    .line 164
    if-lez v0, :cond_9

    .line 165
    .line 166
    sub-int/2addr v0, v3

    .line 167
    iput v0, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    .line 168
    .line 169
    :cond_9
    :goto_5
    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_a

    .line 174
    .line 175
    goto/16 :goto_9

    .line 176
    .line 177
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 178
    .line 179
    if-nez v0, :cond_b

    .line 180
    .line 181
    iget-boolean v0, p1, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    .line 182
    .line 183
    if-nez v0, :cond_b

    .line 184
    .line 185
    move v0, v3

    .line 186
    goto :goto_6

    .line 187
    :cond_b
    move v0, v4

    .line 188
    :goto_6
    const/16 v5, 0x7f6

    .line 189
    .line 190
    if-eqz v1, :cond_d

    .line 191
    .line 192
    iget-object v1, p1, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    .line 193
    .line 194
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-ne v2, v5, :cond_c

    .line 199
    .line 200
    iget v1, p1, Lcom/android/server/wm/Session;->mUid:I

    .line 201
    .line 202
    iget-object v5, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v1, v5, p0, v2, v4}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    .line 205
    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_c
    if-eqz v0, :cond_f

    .line 209
    .line 210
    iget v1, p1, Lcom/android/server/wm/Session;->mUid:I

    .line 211
    .line 212
    iget-object v4, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v1, v4, p0, v2, v3}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    .line 215
    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_d
    iget-object v1, p1, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    .line 219
    .line 220
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-ne v2, v5, :cond_e

    .line 225
    .line 226
    iget v1, p1, Lcom/android/server/wm/Session;->mUid:I

    .line 227
    .line 228
    iget-object v5, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v1, v5, p0, v2, v4}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 231
    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_e
    if-eqz v0, :cond_f

    .line 235
    .line 236
    iget v1, p1, Lcom/android/server/wm/Session;->mUid:I

    .line 237
    .line 238
    iget-object v4, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v1, v4, p0, v2, v3}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 241
    .line 242
    .line 243
    :cond_f
    :goto_7
    if-eqz p0, :cond_12

    .line 244
    .line 245
    if-eqz v0, :cond_12

    .line 246
    .line 247
    iget-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_11

    .line 254
    .line 255
    iget-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 256
    .line 257
    if-nez v0, :cond_10

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_10
    iget-object v1, v0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 261
    .line 262
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 263
    .line 264
    new-instance v2, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;

    .line 265
    .line 266
    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AlertWindowNotification;Z)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    .line 271
    .line 272
    const/4 v0, 0x0

    .line 273
    iput-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_11
    iget-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 277
    .line 278
    if-nez v0, :cond_12

    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/android/server/wm/Session;->isSatellitePointingUiPackage()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_12

    .line 285
    .line 286
    new-instance v0, Lcom/android/server/wm/AlertWindowNotification;

    .line 287
    .line 288
    iget-object v1, p1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 289
    .line 290
    iget-object v2, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 291
    .line 292
    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AlertWindowNotification;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iput-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 296
    .line 297
    iget-boolean v2, p1, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 298
    .line 299
    if-eqz v2, :cond_12

    .line 300
    .line 301
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 302
    .line 303
    new-instance v2, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda0;

    .line 304
    .line 305
    invoke-direct {v2, v0}, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AlertWindowNotification;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    .line 310
    .line 311
    :cond_12
    :goto_8
    if-eqz p0, :cond_13

    .line 312
    .line 313
    iget p0, p1, Lcom/android/server/wm/Session;->mPid:I

    .line 314
    .line 315
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 316
    .line 317
    if-eq p0, v0, :cond_13

    .line 318
    .line 319
    iget-object p0, p1, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    .line 320
    .line 321
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 322
    .line 323
    .line 324
    move-result p0

    .line 325
    xor-int/2addr p0, v3

    .line 326
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 327
    .line 328
    .line 329
    :cond_13
    :goto_9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
