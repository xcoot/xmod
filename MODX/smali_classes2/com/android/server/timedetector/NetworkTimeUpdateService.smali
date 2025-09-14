.class public final Lcom/android/server/timedetector/NetworkTimeUpdateService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mBootCompleted:Z = false

.field public static mMDMContext:Landroid/content/Context;


# instance fields
.field public final mCM:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mDefaultNetwork:Landroid/net/Network;

.field public final mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mNtpTrustedTime:Landroid/util/NtpTrustedTime;

.field public final mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$1;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10
    .line 11
    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$1;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->refreshAndRescheduleIfRequired(Landroid/net/Network;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-class v0, Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 28
    .line 29
    const-class v0, Landroid/os/PowerManager;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/os/PowerManager;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    const-string v2, "NetworkTimeUpdateService"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    .line 46
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    iput-object v8, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 51
    .line 52
    new-instance v4, Lcom/android/server/timedetector/NetworkTimeUpdateService$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const v1, 0x10e0109

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const v1, 0x10e0107

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const v1, 0x10e0108

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    .line 91
    .line 92
    move-object v3, v0

    .line 93
    invoke-direct/range {v3 .. v8}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;-><init>(Ljava/util/function/Supplier;IIILandroid/util/NtpTrustedTime;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    .line 97
    .line 98
    const-class v0, Landroid/app/AlarmManager;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/app/AlarmManager;

    .line 105
    .line 106
    const-class v1, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 113
    .line 114
    new-instance v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;

    .line 115
    .line 116
    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/app/AlarmManager;Lcom/android/server/timedetector/TimeDetectorInternal;)V

    .line 117
    .line 118
    .line 119
    iput-object v3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$1;

    .line 120
    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    .line 122
    .line 123
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 134
    .line 135
    sput-object p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mMDMContext:Landroid/content/Context;

    .line 136
    .line 137
    return-void
.end method

.method public static isNtpSetByMDM()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    .line 2
    .line 3
    return v0
.end method

.method public static shallForceNtpMdmValues()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mForceNtpSetByMDM:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p1, "mDefaultNetwork="

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "NetworkTimeUpdateService"

    .line 6
    .line 7
    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter p3

    .line 17
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string/jumbo p1, "mTryAgainCounter="

    .line 41
    .line 42
    .line 43
    const-string p3, "mLastRefreshAttemptElapsedRealtimeMillis="

    .line 44
    .line 45
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 46
    .line 47
    invoke-direct {v0, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v2, "mNormalPollingIntervalMillis="

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo v2, "mShortPollingIntervalMillis="

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string/jumbo v2, "mTryAgainTimesMax="

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    .line 112
    .line 113
    if-nez v1, :cond_1

    .line 114
    .line 115
    const-string/jumbo v1, "null"

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    invoke-static {v1, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->formatElapsedRealtimeMillis(J)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-virtual {v0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 150
    .line 151
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 163
    .line 164
    .line 165
    const-string p1, "NtpTrustedTime:"

    .line 166
    .line 167
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/util/NtpTrustedTime;->dump(Ljava/io/PrintWriter;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 182
    .line 183
    .line 184
    const-string p1, "Debug log:"

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLocalDebugLog:Landroid/util/LocalLog;

    .line 193
    .line 194
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 201
    .line 202
    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string p1, "NTP set by MDM: "

    .line 206
    .line 207
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sget-boolean p1, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    .line 211
    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    throw p1

    .line 228
    :catchall_1
    move-exception p0

    .line 229
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.SET_TIME"

    .line 4
    .line 5
    const-string/jumbo v2, "set NTP server config for tests"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/NtpTrustedTime;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final systemRunning()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    .line 19
    .line 20
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/os/Handler;Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const-string p0, "auto_time"

    .line 47
    .line 48
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
