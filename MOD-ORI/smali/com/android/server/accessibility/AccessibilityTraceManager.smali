.class public final Lcom/android/server/accessibility/AccessibilityTraceManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityTrace;


# static fields
.field public static sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;


# instance fields
.field public final mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

.field public final mA11yMSLock:Ljava/lang/Object;

.field public volatile mEnabledLoggingFlags:J

.field public final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    .line 9
    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    iput-wide p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getTraceStateForAccessibilityManagerClientState()I
    .locals 3

    .line 1
    const-wide/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x100

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-wide/16 v1, 0x20

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    or-int/lit16 v0, v0, 0x200

    .line 22
    .line 23
    :cond_1
    const-wide/32 v1, 0x40000

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    or-int/lit16 v0, v0, 0x400

    .line 33
    .line 34
    :cond_2
    const-wide/16 v1, 0x4000

    .line 35
    .line 36
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    or-int/lit16 v0, v0, 0x800

    .line 43
    .line 44
    :cond_3
    return v0
.end method

.method public final isA11yTracingEnabled()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isA11yTracingEnabledForTypes(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 2
    .line 3
    and-long p0, p1, v0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long p0, p0, v0

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final logTrace(JLjava/lang/String;JLjava/lang/String;IJI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .locals 13

    move-object v0, p0

    move-wide/from16 v2, p4

    .line 9
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    if-nez p12, :cond_0

    .line 11
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v12, p12

    .line 12
    :goto_0
    check-cast v0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 13
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 14
    iget-boolean v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move/from16 v6, p10

    move-object/from16 v7, p11

    move-wide v8, p1

    .line 16
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final logTrace(Ljava/lang/String;J)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public final logTrace(Ljava/lang/String;JLjava/lang/String;)V
    .locals 10

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    const-string/jumbo v0, "logTrace"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    check-cast p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 8
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final startTrace(J)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 13
    .line 14
    const-wide/32 v4, 0x44030

    .line 15
    .line 16
    .line 17
    and-long/2addr v2, v4

    .line 18
    and-long/2addr v0, v4

    .line 19
    cmp-long v0, v2, v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    .line 42
    .line 43
    check-cast p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 44
    .line 45
    iput-wide p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-boolean p1, Landroid/os/Build;->IS_USER:Z

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const-string p0, "AccessibilityTracing"

    .line 57
    .line 58
    const-string p1, "Error: Tracing is not supported on user builds."

    .line 59
    .line 60
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter p1

    .line 67
    const/4 p2, 0x1

    .line 68
    :try_start_1
    iput-boolean p2, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 73
    .line 74
    .line 75
    monitor-exit p1

    .line 76
    :goto_1
    return-void

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    throw p0
.end method

.method public final stopTrace()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    iput-wide v3, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mEnabledLoggingFlags:J

    .line 12
    .line 13
    const-wide/32 v7, 0x44030

    .line 14
    .line 15
    .line 16
    and-long/2addr v5, v7

    .line 17
    and-long/2addr v1, v7

    .line 18
    cmp-long v1, v5, v1

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yMSLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v5, v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 38
    .line 39
    .line 40
    monitor-exit v1

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0

    .line 45
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityTraceManager;->mA11yController:Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    .line 48
    .line 49
    check-cast p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const-string v0, "AccessibilityTracing"

    .line 61
    .line 62
    const-string v1, "Error: Tracing is not supported on user builds."

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v1

    .line 71
    :try_start_1
    iput-boolean v2, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 72
    .line 73
    iget-boolean v2, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    const-string v0, "AccessibilityTracing"

    .line 78
    .line 79
    const-string v2, "Error: tracing enabled while waiting for flush."

    .line 80
    .line 81
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    monitor-exit v1

    .line 85
    goto :goto_2

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 89
    .line 90
    const/4 v2, 0x2

    .line 91
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    .line 93
    .line 94
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    :goto_2
    iput-wide v3, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    throw p0

    .line 100
    :cond_4
    :goto_4
    return-void
.end method
