.class public final Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# instance fields
.field public final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field public volatile mEnabled:Z

.field public final mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTraceFile:Ljava/io/File;


# direct methods
.method public static -$$Nest$mtoStackTraceString(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p0, ""

    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, -0x1

    .line 17
    :goto_0
    array-length v2, p1

    .line 18
    if-ge v0, v2, :cond_3

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    aget-object v4, p1, v0

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    move v1, v0

    .line 49
    :cond_2
    if-gez v1, :cond_3

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    array-length v2, p1

    .line 55
    if-ge v0, v2, :cond_7

    .line 56
    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    array-length v2, p1

    .line 60
    if-ge v0, v2, :cond_7

    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Ljava/lang/String;

    .line 77
    .line 78
    aget-object v4, p1, v0

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    move v1, v0

    .line 91
    :cond_5
    if-eq v1, v0, :cond_6

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    goto :goto_1

    .line 95
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    array-length p2, p1

    .line 98
    if-ge v1, p2, :cond_8

    .line 99
    .line 100
    aget-object p2, p1, v1

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p2, "\n"

    .line 110
    .line 111
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    :goto_3
    return-object p0
.end method

.method public static -$$Nest$mwriteTraceToFileInternal(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide v1, 0x10600000001L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v3, 0x4341525459313141L    # 9.75119366241549E15

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    sub-long/2addr v1, v3

    .line 37
    const-wide v3, 0x10600000003L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    .line 48
    .line 49
    invoke-virtual {v1, p0, v0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string v0, "AccessibilityTracing"

    .line 55
    .line 56
    const-string v1, "Unable to write buffer to file"

    .line 57
    .line 58
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    new-instance p1, Ljava/io/File;

    .line 14
    .line 15
    const-string v0, "/data/misc/a11ytrace/a11y_trace.winscope"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mTraceFile:Ljava/io/File;

    .line 21
    .line 22
    new-instance p1, Lcom/android/internal/util/TraceBuffer;

    .line 23
    .line 24
    const/high16 v0, 0xc00000

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 30
    .line 31
    const-string p1, "AccessibilityTracing"

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-wide p8, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 6
    .line 7
    iput-wide p2, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 8
    .line 9
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p12, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p0, p2, p6, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final logState(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mEnabled:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ":"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    move-object v0, p0

    .line 74
    move-object v1, p1

    .line 75
    move-wide v2, p2

    .line 76
    move-object/from16 v4, p4

    .line 77
    .line 78
    move-object/from16 v5, p5

    .line 79
    .line 80
    move/from16 v6, p6

    .line 81
    .line 82
    move-object/from16 v7, p7

    .line 83
    .line 84
    move-object/from16 v12, p8

    .line 85
    .line 86
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->log(Ljava/lang/String;JLjava/lang/String;[BI[Ljava/lang/StackTraceElement;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
