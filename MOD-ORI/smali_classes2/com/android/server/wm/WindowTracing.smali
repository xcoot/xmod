.class public final Lcom/android/server/wm/WindowTracing;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mEnabled:Z

.field public final mEnabledLock:Ljava/lang/Object;

.field public volatile mEnabledLockFree:Z

.field public final mFrameCallback:Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mLogLevel:I

.field public mLogOnFrame:Z

.field public final mProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

.field public mScheduled:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTraceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowTracing;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput v1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 25
    .line 26
    iput-object p3, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 33
    .line 34
    new-instance p1, Lcom/android/internal/util/TraceBuffer;

    .line 35
    .line 36
    const/high16 p2, 0xa00000

    .line 37
    .line 38
    invoke-direct {p1, p2}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    .line 52
    .line 53
    return-void
.end method

.method public static logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "WindowTracing"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final getStatus()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Status: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "Enabled"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "Disabled"

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "\nLog level: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "\n"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->getStatus()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "traceStateLocked"

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x20

    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    const-wide v3, 0x20b00000002L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    const-wide v7, 0x10600000001L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 33
    .line 34
    .line 35
    const-wide v5, 0x10900000002L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-wide v5, 0x10b00000003L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    iget-object p1, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 53
    .line 54
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 55
    .line 56
    .line 57
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    const-string v7, "dumpDebugLocked"

    .line 59
    .line 60
    invoke-static {v1, v2, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    .line 63
    :try_start_2
    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 64
    .line 65
    iget v8, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 66
    .line 67
    invoke-virtual {v7, v8, v0}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(ILandroid/util/proto/ProtoOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    .line 69
    .line 70
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    .line 72
    .line 73
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    .line 91
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_4

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :catchall_2
    move-exception p0

    .line 102
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :goto_1
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 107
    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 108
    .line 109
    .line 110
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 111
    :goto_2
    :try_start_7
    const-string p1, "WindowTracing"

    .line 112
    .line 113
    const-string v0, "Exception while tracing state"

    .line 114
    .line 115
    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :goto_3
    return-void

    .line 120
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 121
    .line 122
    .line 123
    throw p0
.end method

.method public final onShellCommand(Landroid/os/ShellCommand;)I
    .locals 10

    .line 1
    const-string/jumbo v0, "transaction"

    .line 2
    .line 3
    .line 4
    const-string v1, "frame"

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v5, "Setting window tracing log frequency to "

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, -0x1

    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    sparse-switch v9, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    :goto_0
    move v9, v8

    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :sswitch_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-nez v9, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v9, 0x7

    .line 41
    goto :goto_1

    .line 42
    :sswitch_1
    const-string/jumbo v9, "start"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-nez v9, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v9, 0x6

    .line 53
    goto :goto_1

    .line 54
    :sswitch_2
    const-string v9, "level"

    .line 55
    .line 56
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-nez v9, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v9, 0x5

    .line 64
    goto :goto_1

    .line 65
    :sswitch_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-nez v9, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v9, 0x4

    .line 73
    goto :goto_1

    .line 74
    :sswitch_4
    const-string/jumbo v9, "stop"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-nez v9, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const/4 v9, 0x3

    .line 85
    goto :goto_1

    .line 86
    :sswitch_5
    const-string/jumbo v9, "size"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-nez v9, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    move v9, v2

    .line 97
    goto :goto_1

    .line 98
    :sswitch_6
    const-string/jumbo v9, "save-for-bugreport"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-nez v9, :cond_6

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    move v9, v6

    .line 109
    goto :goto_1

    .line 110
    :sswitch_7
    const-string/jumbo v9, "status"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-nez v9, :cond_7

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    move v9, v7

    .line 121
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 122
    .line 123
    .line 124
    const-string p0, "Unknown command: "

    .line 125
    .line 126
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string p0, "Window manager trace options:"

    .line 134
    .line 135
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string p0, "  start: Start logging"

    .line 139
    .line 140
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string p0, "  stop: Stop logging"

    .line 144
    .line 145
    const-string p1, "  save-for-bugreport: Save logging data to file if it\'s running."

    .line 146
    .line 147
    const-string v0, "  frame: Log trace once per frame"

    .line 148
    .line 149
    const-string v1, "  transaction: Log each transaction"

    .line 150
    .line 151
    invoke-static {v3, p0, p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string p0, "  size: Set the maximum log size (in KB)"

    .line 155
    .line 156
    const-string p1, "  status: Print trace status"

    .line 157
    .line 158
    const-string v0, "  level [lvl]: Set the log level between"

    .line 159
    .line 160
    const-string v1, "    lvl may be one of:"

    .line 161
    .line 162
    invoke-static {v3, p0, p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string p0, "      critical: Only visible windows with reduced information"

    .line 166
    .line 167
    const-string p1, "      trim: All windows with reduced"

    .line 168
    .line 169
    const-string v0, "      all: All window and information"

    .line 170
    .line 171
    invoke-static {v3, p0, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return v8

    .line 175
    :pswitch_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v3, p1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iput-boolean v7, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 183
    .line 184
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 187
    .line 188
    .line 189
    return v7

    .line 190
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 191
    .line 192
    .line 193
    return v7

    .line 194
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    sparse-switch v0, :sswitch_data_1

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :sswitch_8
    const-string v0, "critical"

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_8

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_8
    move v8, v2

    .line 223
    goto :goto_2

    .line 224
    :sswitch_9
    const-string/jumbo v0, "trim"

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_9

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_9
    move v8, v6

    .line 235
    goto :goto_2

    .line 236
    :sswitch_a
    const-string v0, "all"

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-nez p1, :cond_a

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_a
    move v8, v7

    .line 246
    :goto_2
    packed-switch v8, :pswitch_data_1

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v6, v3}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :pswitch_3
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :pswitch_4
    invoke-virtual {p0, v6, v3}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :pswitch_5
    invoke-virtual {p0, v7, v3}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 262
    .line 263
    .line 264
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 267
    .line 268
    .line 269
    return v7

    .line 270
    :pswitch_6
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {v3, p1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iput-boolean v6, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 278
    .line 279
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 282
    .line 283
    .line 284
    return v7

    .line 285
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 286
    .line 287
    .line 288
    return v7

    .line 289
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    mul-int/lit16 p1, p1, 0x400

    .line 298
    .line 299
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 300
    .line 301
    .line 302
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 305
    .line 306
    .line 307
    return v7

    .line 308
    :pswitch_9
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowTracing;->saveForBugreport(Ljava/io/PrintWriter;)V

    .line 309
    .line 310
    .line 311
    return v7

    .line 312
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->getStatus()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-static {v3, p0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    return v7

    .line 320
    nop

    .line 321
    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_7
        -0x174ab7ac -> :sswitch_6
        0x35e001 -> :sswitch_5
        0x360802 -> :sswitch_4
        0x5d2a96d -> :sswitch_3
        0x6219b84 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :sswitch_data_1
    .sparse-switch
        0x179a1 -> :sswitch_a
        0x367422 -> :sswitch_9
        0x745b779f -> :sswitch_8
    .end sparse-switch

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final saveForBugreport(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "Start tracing to "

    .line 2
    .line 3
    const-string v1, "Trace written to "

    .line 4
    .line 5
    const-string v2, "Stop tracing to "

    .line 6
    .line 7
    sget-boolean v3, Landroid/os/Build;->IS_USER:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string p0, "Error: Tracing is not supported on user builds."

    .line 12
    .line 13
    invoke-static {p1, p0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v3

    .line 20
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    monitor-exit v3

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v4, 0x0

    .line 29
    iput-boolean v4, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    .line 30
    .line 31
    iput-boolean v4, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ". Waiting for traces to flush."

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {p1, v2}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 56
    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, "."

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v2, 0x1

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    .line 88
    .line 89
    check-cast v1, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    .line 90
    .line 91
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 92
    .line 93
    .line 94
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, "."

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 119
    .line 120
    .line 121
    iput-boolean v2, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    .line 122
    .line 123
    iput-boolean v2, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 124
    .line 125
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mProtoLog:Lcom/android/internal/protolog/common/IProtoLog;

    .line 132
    .line 133
    check-cast p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    monitor-exit v3

    .line 139
    return-void

    .line 140
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    throw p0
.end method

.method public final setBufferCapacity(ILjava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Setting window tracing buffer capacity to "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "bytes"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final setLogLevel(ILjava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Setting window tracing log level to "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/high16 p1, 0x500000

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/high16 p1, 0xa00000

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/high16 p1, 0x1400000

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final startTrace(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "Start tracing to "

    .line 2
    .line 3
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string p0, "Error: Tracing is not supported on user builds."

    .line 8
    .line 9
    invoke-static {p1, p0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "."

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    .line 63
    .line 64
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 65
    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const-string/jumbo p1, "trace.enable"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0
.end method

.method public final stopTrace(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Trace written to "

    .line 2
    .line 3
    const-string v1, "Stop tracing to "

    .line 4
    .line 5
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string p0, "Error: Tracing is not supported on user builds."

    .line 10
    .line 11
    invoke-static {p1, p0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ". Waiting for traces to flush."

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, "."

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p1, p0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_1

    .line 76
    .line 77
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p0
.end method

.method public final writeTraceToFileLocked()V
    .locals 7

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v2, "writeTraceToFileLocked"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    const-wide v3, 0x10600000001L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v5, 0x45434152544e4957L    # 4.655612620390422E25

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    sub-long/2addr v3, v5

    .line 42
    const-wide v5, 0x10600000003L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {v3, p0, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p0

    .line 64
    :try_start_1
    const-string v2, "WindowTracing"

    .line 65
    .line 66
    const-string v3, "Unable to write buffer to file"

    .line 67
    .line 68
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_1
    return-void

    .line 73
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method
