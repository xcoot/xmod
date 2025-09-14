.class public Lcom/android/server/chimera/heimdall/Heimdall;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public DISABLED:Z

.field public final KILL_DISABLED:Z

.field public final PROP_ALWAYS_RUNNING_DISABLE:I

.field public mAnomalyType:I

.field public final mAnomalyTypeArray:[I

.field public final mContext:Landroid/content/Context;

.field public final mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

.field public final mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

.field public final mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

.field public final mUriAlwaysRunningGlobalQuota:Landroid/net/Uri;

.field public final mUriAnomalyTypeEnable:Landroid/net/Uri;

.field public final mUriRandomSampleRate:Landroid/net/Uri;

.field public final mUriReportHourInterval:Landroid/net/Uri;

.field public final mUriSpecUpdate:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 9

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "persist.sys.heimdalld.alwaysrunning_disable"

    .line 9
    .line 10
    .line 11
    const-string v3, ""

    .line 12
    .line 13
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v2, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v2, v4

    .line 39
    :goto_0
    iput v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->PROP_ALWAYS_RUNNING_DISABLE:I

    .line 40
    .line 41
    const-string/jumbo v2, "persist.sys.heimdalld.disable"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v5, "false"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string/jumbo v5, "true"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 59
    .line 60
    const-string/jumbo v2, "persist.sys.heimdalld.kill_disable"

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    .line 72
    .line 73
    const/16 v1, 0x10

    .line 74
    .line 75
    const/16 v2, 0x8

    .line 76
    .line 77
    const/4 v5, 0x4

    .line 78
    const/4 v6, 0x2

    .line 79
    filled-new-array {v1, v2, v5, v6, v3}, [I

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyTypeArray:[I

    .line 84
    .line 85
    const/16 v1, 0x18

    .line 86
    .line 87
    iput v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 88
    .line 89
    const-string/jumbo v1, "heimdall_spec_update"

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriSpecUpdate:Landroid/net/Uri;

    .line 97
    .line 98
    const-string/jumbo v2, "heimdall_anomaly_type_enable"

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriAnomalyTypeEnable:Landroid/net/Uri;

    .line 106
    .line 107
    const-string/jumbo v5, "heimdall_always_running_global_quota"

    .line 108
    .line 109
    .line 110
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iput-object v5, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriAlwaysRunningGlobalQuota:Landroid/net/Uri;

    .line 115
    .line 116
    const-string/jumbo v6, "heimdall_report_hour_interval"

    .line 117
    .line 118
    .line 119
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iput-object v6, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriReportHourInterval:Landroid/net/Uri;

    .line 124
    .line 125
    const-string/jumbo v7, "heimdall_random_sample_rate"

    .line 126
    .line 127
    .line 128
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    iput-object v7, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriRandomSampleRate:Landroid/net/Uri;

    .line 133
    .line 134
    :try_start_0
    new-instance v8, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 135
    .line 136
    invoke-direct {v8, p1, p2, p3}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 137
    .line 138
    .line 139
    iput-object v8, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 140
    .line 141
    iget-object p3, v8, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 142
    .line 143
    iput-object p3, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 144
    .line 145
    new-instance p3, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 146
    .line 147
    invoke-direct {p3, p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;-><init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/os/Looper;)V

    .line 148
    .line 149
    .line 150
    iput-object p3, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 151
    .line 152
    new-instance p1, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;

    .line 153
    .line 154
    invoke-direct {p1, p0, p2}, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;-><init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;

    .line 158
    .line 159
    invoke-direct {p1, p0}, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;-><init>(Lcom/android/server/chimera/heimdall/Heimdall;)V

    .line 160
    .line 161
    .line 162
    iput-object p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    if-eqz v0, :cond_2

    .line 165
    .line 166
    iget-object p3, v8, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    .line 167
    .line 168
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    const-string v0, "KILL_DISABLED set true"

    .line 172
    .line 173
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iput-boolean v3, p3, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->KILL_DISABLED:Z

    .line 177
    .line 178
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {p2, v1, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v2, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v5, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v6, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v7, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :catch_0
    move-exception p1

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string p3, "Heimdall init failed "

    .line 202
    .line 203
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-static {p2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .line 222
    .line 223
    iput-boolean v3, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 224
    .line 225
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string p2, "DISABLED="

    .line 228
    .line 229
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string p2, " KILL_DISABLED="

    .line 238
    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    .line 243
    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-boolean p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 255
    .line 256
    if-nez p0, :cond_3

    .line 257
    .line 258
    const-string p0, "SCAN_VERSION=1"

    .line 259
    .line 260
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_3
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Heimdall"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static native readMemtrackMemory(I)[J
.end method


# virtual methods
.method public final checkAlwaysRunningProcesses(Ljava/util/List;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportedAlwaysRunningProcesses:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Skip always running checking for "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " , heimdall already reported it"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public final dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "  Load spec success: "

    .line 2
    .line 3
    const-string v1, "  SPEC_VERSION: "

    .line 4
    .line 5
    const-string v2, "  kill: "

    .line 6
    .line 7
    const-string v3, "  feature enable: "

    .line 8
    .line 9
    if-eqz p1, :cond_8

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    const-string v4, "== heimdall dump start =="

    .line 16
    .line 17
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    array-length v4, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v5, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    if-ne v4, v6, :cond_4

    .line 25
    .line 26
    :try_start_1
    const-string p2, "Configurations"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 37
    .line 38
    xor-int/2addr v3, v6

    .line 39
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 50
    .line 51
    if-nez p2, :cond_7

    .line 52
    .line 53
    if-eqz v5, :cond_7

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    .line 61
    .line 62
    xor-int/2addr v2, v6

    .line 63
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p2, "  SCAN_VERSION: 1"

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v5, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 84
    .line 85
    iget v1, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecVersion:I

    .line 86
    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 107
    .line 108
    iget-boolean v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mLoadSuccess:Z

    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v0, "  Anomaly type enable: "

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyTypeArray:[I

    .line 133
    .line 134
    array-length v1, v1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    :goto_0
    if-ge v3, v1, :cond_2

    .line 142
    .line 143
    rem-int/lit8 v4, v0, 0x2

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    shr-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    add-int/lit8 v4, v1, -0x1

    .line 151
    .line 152
    if-eq v3, v4, :cond_1

    .line 153
    .line 154
    const-string v4, ","

    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v0, "  Random sample rate: "

    .line 188
    .line 189
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget v0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I

    .line 193
    .line 194
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v0, ", block %.1f%% reports"

    .line 198
    .line 199
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    sget v0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I

    .line 207
    .line 208
    int-to-double v0, v0

    .line 209
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    mul-double/2addr v0, v2

    .line 215
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 216
    .line 217
    sub-double/2addr v2, v0

    .line 218
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->dumpKillStatus(Ljava/io/PrintWriter;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->dumpProcessList(Ljava/io/PrintWriter;)V

    .line 237
    .line 238
    .line 239
    const-string p2, "\nOthers"

    .line 240
    .line 241
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    .line 243
    .line 244
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 245
    .line 246
    if-eqz p0, :cond_3

    .line 247
    .line 248
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v0, "  The number of pending message in phase handler: "

    .line 254
    .line 255
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 259
    .line 260
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :catch_0
    move-exception p0

    .line 276
    goto :goto_3

    .line 277
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 278
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 280
    .line 281
    .line 282
    iget-object p0, v5, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 283
    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->dumpReportHistory(Ljava/io/PrintWriter;)V

    .line 285
    .line 286
    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string/jumbo p2, "report_interval(hour): "

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-object p2, v5, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 299
    .line 300
    iget p2, p2, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    .line 301
    .line 302
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_4
    array-length p2, p2

    .line 314
    const/4 v0, 0x2

    .line 315
    if-lt p2, v0, :cond_7

    .line 316
    .line 317
    iget-boolean p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 318
    .line 319
    if-nez p0, :cond_6

    .line 320
    .line 321
    if-nez v5, :cond_5

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_5
    const-string p0, "available in noship binary"

    .line 325
    .line 326
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_6
    :goto_2
    const-string/jumbo p0, "heimdall disabled"

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 334
    .line 335
    .line 336
    goto :goto_4

    .line 337
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    .line 339
    .line 340
    :cond_7
    :goto_4
    const-string p0, "== heimdall dump end =="

    .line 341
    .line 342
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_8
    :goto_5
    return-void
.end method

.method public final updateAlwaysRunningGlobalQuota(Landroid/content/ContentResolver;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "heimdall_always_running_global_quota"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 17
    .line 18
    if-lez p1, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->this$0:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 21
    .line 22
    iput p1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mAlwaysRunningGlobalQuotaSpec:I

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 61
    .line 62
    iget-boolean v2, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget v2, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSizeInitial:I

    .line 68
    .line 69
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput v2, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSize:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method public final updateAnomalyType(Landroid/content/ContentResolver;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "heimdall_anomaly_type_enable"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    const-string v0, ","

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    array-length v0, p1

    .line 17
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyTypeArray:[I

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    if-ge v0, v2, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    move v2, v0

    .line 25
    :goto_0
    array-length v3, v1

    .line 26
    if-ge v2, v3, :cond_5

    .line 27
    .line 28
    aget-object v3, p1, v2

    .line 29
    .line 30
    const-string v4, "1"

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 39
    .line 40
    const/16 v7, 0x10

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    aget v3, v1, v2

    .line 45
    .line 46
    iget v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 47
    .line 48
    or-int/2addr v4, v3

    .line 49
    iput v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    if-ne v3, v7, :cond_1

    .line 53
    .line 54
    iget-object v3, v6, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 55
    .line 56
    iput-boolean v4, v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    if-ne v3, v5, :cond_4

    .line 60
    .line 61
    iget-object v3, v6, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 62
    .line 63
    iput-boolean v4, v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string v4, "0"

    .line 67
    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    aget v3, v1, v2

    .line 75
    .line 76
    iget v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 77
    .line 78
    not-int v8, v3

    .line 79
    and-int/2addr v4, v8

    .line 80
    iput v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 81
    .line 82
    if-ne v3, v7, :cond_3

    .line 83
    .line 84
    iget-object v3, v6, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 85
    .line 86
    iput-boolean v0, v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    if-ne v3, v5, :cond_4

    .line 90
    .line 91
    iget-object v3, v6, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 92
    .line 93
    iput-boolean v0, v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    .line 94
    .line 95
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    :goto_2
    return-void
.end method

.method public final updateSpec(Landroid/content/ContentResolver;)V
    .locals 12

    .line 1
    const-string/jumbo v0, "heimdall_spec_update"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, ";"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_8

    .line 21
    .line 22
    aget-object v3, p1, v2

    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 27
    .line 28
    iget-object v5, v4, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 29
    .line 30
    :try_start_0
    const-string v6, ","

    .line 31
    .line 32
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    array-length v6, v3

    .line 37
    const/4 v7, 0x7

    .line 38
    if-gt v6, v7, :cond_1

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_1
    aget-object v6, v3, v1

    .line 43
    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    iget v8, v4, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecVersion:I

    .line 49
    .line 50
    if-gt v6, v8, :cond_2

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_2
    new-array v8, v7, [Ljava/lang/String;

    .line 55
    .line 56
    const/4 v9, 0x1

    .line 57
    invoke-static {v3, v9, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    aget-object v3, v8, v1

    .line 61
    .line 62
    iget-object v7, v5, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Ljava/util/List;

    .line 69
    .line 70
    if-nez v7, :cond_3

    .line 71
    .line 72
    new-instance v7, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v5, v5, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_0
    move-exception v3

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    aget-object v3, v8, v9

    .line 86
    .line 87
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_6

    .line 96
    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    check-cast v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 102
    .line 103
    iget-object v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-eqz v11, :cond_4

    .line 110
    .line 111
    iget v9, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specVersion:I

    .line 112
    .line 113
    if-lt v9, v6, :cond_5

    .line 114
    .line 115
    move v9, v1

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    new-instance v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 118
    .line 119
    invoke-direct {v9, v4, v8}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;-><init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;[Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specSize:I

    .line 123
    .line 124
    iput v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specSize:I

    .line 125
    .line 126
    iget-boolean v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreGlobalKill:Z

    .line 127
    .line 128
    iput-boolean v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreGlobalKill:Z

    .line 129
    .line 130
    iget-boolean v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreSpecKill:Z

    .line 131
    .line 132
    iput-boolean v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreSpecKill:Z

    .line 133
    .line 134
    iget-boolean v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->allowAlwaysRunning:Z

    .line 135
    .line 136
    iput-boolean v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->allowAlwaysRunning:Z

    .line 137
    .line 138
    iget-boolean v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z

    .line 139
    .line 140
    iput-boolean v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z

    .line 141
    .line 142
    iget v9, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSize:I

    .line 143
    .line 144
    iput v9, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSize:I

    .line 145
    .line 146
    iput v6, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specVersion:I

    .line 147
    .line 148
    move v9, v1

    .line 149
    goto :goto_1

    .line 150
    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    .line 151
    .line 152
    new-instance v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 153
    .line 154
    invoke-direct {v3, v4, v8}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;-><init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;[Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v5, "Update spec catch exception! "

    .line 164
    .line 165
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v3}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_8
    return-void
.end method
