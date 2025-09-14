.class public final Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;
.super Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final BRAKET_END_STRING:Ljava/lang/String; = "\\)"

.field static final BRAKET_START_STRING:Ljava/lang/String; = "\\("

.field public static final DEBUG:Z

.field static final RESTRICTED_CHAR_LIST:[Ljava/lang/String;

.field static final SENSITIVE_PROCESS_PROC_LEN_LIST:[I

.field static final SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

.field static final SENSTIVE_PROCESS_PROC_POSITION:[I

.field public static final sAllowedProcRules:Ljava/util/Hashtable;

.field public static final sAllowedProcessProcRules:Ljava/util/Hashtable;

.field public static final sLock:Ljava/lang/Object;

.field public static final sProcessIds:Landroid/util/SparseArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

.field public final mReceiver:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;

.field public final mTimer:Ljava/util/Timer;

.field public final mTimerTask:Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    .line 11
    .line 12
    const-string/jumbo v0, "stat"

    .line 13
    .line 14
    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x34

    .line 22
    .line 23
    filled-new-array {v0}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    .line 28
    .line 29
    const-string v0, "."

    .line 30
    .line 31
    const-string v1, ";"

    .line 32
    .line 33
    const-string v2, "*"

    .line 34
    .line 35
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    .line 40
    .line 41
    new-instance v0, Ljava/util/Hashtable;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    .line 47
    .line 48
    new-instance v0, Ljava/util/Hashtable;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sput-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 60
    .line 61
    new-instance v0, Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/Object;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 4
        0x1c
        0x1d
        0x1e
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Timer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;-><init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v7, "ThreatDefenseService"

    .line 22
    .line 23
    const-string v1, "Start ThreatDefenseService"

    .line 24
    .line 25
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v3, "pid = "

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, ", uid = "

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 65
    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    new-instance v1, Ljava/util/Timer;

    .line 69
    .line 70
    const-string v3, "MTDL_Timer"

    .line 71
    .line 72
    invoke-direct {v1, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 76
    .line 77
    :cond_0
    sget-boolean v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 78
    .line 79
    const-wide/32 v3, 0x5265c00

    .line 80
    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    const-string/jumbo v1, "sys.mtdl.interval"

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v3, v4}, Landroid/os/SemSystemProperties;->getLong(Ljava/lang/String;J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    cmp-long v1, v5, v3

    .line 92
    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    const-string v1, "Custom interval applied"

    .line 96
    .line 97
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    const-wide/32 v3, 0xea60

    .line 101
    .line 102
    .line 103
    cmp-long v1, v5, v3

    .line 104
    .line 105
    if-gez v1, :cond_2

    .line 106
    .line 107
    :cond_1
    move-wide v8, v3

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    move-wide v8, v5

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 111
    .line 112
    const-wide/16 v3, 0x0

    .line 113
    .line 114
    move-wide v5, v8

    .line 115
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 116
    .line 117
    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v1, "Timer Scheduled : "

    .line 121
    .line 122
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-wide/16 v1, 0x3e8

    .line 126
    .line 127
    div-long/2addr v8, v1

    .line 128
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string/jumbo v1, "s"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    new-instance p0, Landroid/content/IntentFilter;

    .line 145
    .line 146
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 147
    .line 148
    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/16 v1, 0x3e8

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 154
    .line 155
    .line 156
    const-string/jumbo v1, "package"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public static updateProcessIds()V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    const-string v3, "/proc/"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    array-length v4, v2

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    move v7, v5

    .line 34
    :goto_0
    if-ge v7, v4, :cond_1

    .line 35
    .line 36
    aget-object v8, v2, v7

    .line 37
    .line 38
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const-string v9, "^[0-9]+"

    .line 43
    .line 44
    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v9, :cond_0

    .line 49
    .line 50
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v11, "/proc/"

    .line 60
    .line 61
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    new-array v10, v5, [Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v8, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    new-array v10, v5, [Ljava/nio/file/LinkOption;

    .line 78
    .line 79
    invoke-static {v8, v10}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    .line 80
    .line 81
    .line 82
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    goto :goto_3

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto :goto_4

    .line 86
    :catch_0
    move-exception v8

    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception v8

    .line 89
    goto :goto_2

    .line 90
    :catch_2
    move-exception v8

    .line 91
    move v9, v5

    .line 92
    :goto_1
    :try_start_3
    const-string v10, "ThreatDefenseService"

    .line 93
    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v12, "IOException"

    .line 100
    .line 101
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catch_3
    move-exception v8

    .line 116
    move v9, v5

    .line 117
    :goto_2
    const-string v10, "ThreatDefenseService"

    .line 118
    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v12, "NumberFormatException"

    .line 125
    .line 126
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :goto_3
    if-lez v9, :cond_0

    .line 140
    .line 141
    if-eqz v6, :cond_0

    .line 142
    .line 143
    sget-object v8, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-interface {v6}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v2

    .line 160
    sub-long/2addr v2, v0

    .line 161
    const-string v0, "ThreatDefenseService"

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v4, "Update PIDs took "

    .line 166
    .line 167
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string/jumbo v2, "ms"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    throw v0
.end method


# virtual methods
.method public final enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final getProcessId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p0, "ThreatDefenseService"

    .line 5
    .line 6
    const-string p1, "ContextInfo is null"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-virtual {v1, p1, p0}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_6

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter p1

    .line 50
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->updateProcessIds()V

    .line 51
    .line 52
    .line 53
    const-string v0, "all"

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    move p2, v1

    .line 63
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ge p2, v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 p2, p2, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_3

    .line 87
    :cond_2
    move v0, v1

    .line 88
    :goto_1
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-ge v0, v3, :cond_4

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    new-array p2, p1, [I

    .line 126
    .line 127
    :goto_2
    if-ge v1, p1, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    aput v0, p2, v1

    .line 140
    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    return-object p2

    .line 145
    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    throw p0

    .line 147
    :cond_6
    :goto_4
    return-object v0
.end method

.method public final hasPackageRules(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "ThreatDefenseService"

    .line 20
    .line 21
    const-string v0, "Get package error"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return p1

    .line 27
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    return v1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_2
    return p1
.end method

.method public hasRestrictCharacter(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget-object v3, p0, v2

    .line 9
    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v1
.end method

.method public hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "ThreatDefenseService"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/high16 p0, 0x8000000

    .line 22
    .line 23
    invoke-static {p0, v1, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v3, "package : "

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " hasMultipleSigners"

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-nez p0, :cond_1

    .line 63
    .line 64
    const-string/jumbo p0, "getApkContentsSigners() failed"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :cond_1
    aget-object p0, p0, v2

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_4

    .line 78
    .line 79
    if-nez p2, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_3

    .line 87
    .line 88
    const-string p0, "Signature check failed"

    .line 89
    .line 90
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :cond_3
    const/4 p0, 0x1

    .line 95
    return p0

    .line 96
    :cond_4
    :goto_0
    const-string p0, "Get package signature failed"

    .line 97
    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return v2

    .line 102
    :catch_0
    move-exception p0

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string p2, "Invalid package : "

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    return v2
.end method

.method public isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8

    .line 1
    const-string v0, "Please set package rules first : "

    .line 2
    .line 3
    const/16 v1, -0x65

    .line 4
    .line 5
    const-string v2, "ThreatDefenseService"

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p0, "Get package name failed"

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v4, -0x67

    .line 20
    .line 21
    const-string v5, "Denied proc = "

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " reason : Restrict Character"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v4

    .line 46
    :cond_1
    const/4 v3, 0x0

    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    const/16 v6, -0x69

    .line 50
    .line 51
    :try_start_0
    new-array v7, v3, [Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {p2, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v7}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_2

    .line 62
    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, " reason : Symbolic Link"

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return v6

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string p3, "Invalid path p = "

    .line 88
    .line 89
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p2, ", err = "

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return v6

    .line 111
    :cond_2
    new-instance v5, Ljava/util/Hashtable;

    .line 112
    .line 113
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 114
    .line 115
    .line 116
    if-eqz p3, :cond_3

    .line 117
    .line 118
    :try_start_1
    sget-object p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    .line 119
    .line 120
    invoke-virtual {v5, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_1
    move-exception p0

    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :catch_2
    move-exception p0

    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :cond_3
    sget-object p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    .line 131
    .line 132
    invoke-virtual {v5, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p3

    .line 139
    const/16 v6, -0x66

    .line 140
    .line 141
    if-nez p3, :cond_4

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move v4, v6

    .line 151
    goto :goto_4

    .line 152
    :cond_4
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    check-cast p3, Ljava/util/ArrayList;

    .line 157
    .line 158
    if-eqz p3, :cond_7

    .line 159
    .line 160
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_5

    .line 181
    .line 182
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-eqz p0, :cond_6

    .line 187
    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string p1, "Not allowed proc : "

    .line 194
    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_6
    move v4, v3

    .line 210
    goto :goto_4

    .line 211
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string p3, "No rules : "

    .line 217
    .line 218
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string/jumbo p1, "|"

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    .line 239
    .line 240
    move v1, v6

    .line 241
    goto :goto_3

    .line 242
    :goto_1
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 243
    .line 244
    .line 245
    const/16 v1, -0x68

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 249
    .line 250
    .line 251
    :goto_3
    move v4, v1

    .line 252
    :goto_4
    if-gez v4, :cond_8

    .line 253
    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string p1, "Denied proc : "

    .line 257
    .line 258
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string p1, ", errno="

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_8
    return v4
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final procReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "IOException"

    .line 2
    .line 3
    const-string v1, "FileNotFoundException : "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "ThreatDefenseService"

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p0, "ContextInfo is null"

    .line 11
    .line 12
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 26
    .line 27
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-gez p0, :cond_1

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_1
    const-string p0, "/proc/"

    .line 45
    .line 46
    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    .line 54
    .line 55
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 56
    .line 57
    new-instance p2, Ljava/io/InputStreamReader;

    .line 58
    .line 59
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 60
    .line 61
    invoke-direct {p2, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {p2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .line 85
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p0

    .line 93
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    :goto_0
    move-object v2, p2

    .line 97
    goto :goto_5

    .line 98
    :catchall_0
    move-exception p2

    .line 99
    move-object v2, p0

    .line 100
    goto :goto_6

    .line 101
    :catch_1
    move-exception p2

    .line 102
    goto :goto_1

    .line 103
    :catch_2
    move-exception p2

    .line 104
    goto :goto_4

    .line 105
    :catchall_1
    move-exception p2

    .line 106
    goto :goto_6

    .line 107
    :catch_3
    move-exception p2

    .line 108
    move-object p0, v2

    .line 109
    goto :goto_1

    .line 110
    :catch_4
    move-exception p2

    .line 111
    move-object p0, v2

    .line 112
    goto :goto_4

    .line 113
    :catchall_2
    move-exception p2

    .line 114
    move-object p1, v2

    .line 115
    goto :goto_6

    .line 116
    :catch_5
    move-exception p2

    .line 117
    move-object p0, v2

    .line 118
    move-object p1, p0

    .line 119
    goto :goto_1

    .line 120
    :catch_6
    move-exception p2

    .line 121
    move-object p0, v2

    .line 122
    move-object p1, p0

    .line 123
    goto :goto_4

    .line 124
    :goto_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    .line 142
    .line 143
    if-eqz p0, :cond_2

    .line 144
    .line 145
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catch_7
    move-exception p0

    .line 150
    goto :goto_3

    .line 151
    :cond_2
    :goto_2
    if-eqz p1, :cond_4

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :goto_3
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :goto_4
    :try_start_6
    const-string v1, "SecurityException"

    .line 162
    .line 163
    invoke-static {v3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    .line 165
    .line 166
    if-eqz p0, :cond_3

    .line 167
    .line 168
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 169
    .line 170
    .line 171
    :cond_3
    if-eqz p1, :cond_4

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 174
    .line 175
    .line 176
    :cond_4
    :goto_5
    return-object v2

    .line 177
    :goto_6
    if-eqz v2, :cond_5

    .line 178
    .line 179
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 180
    .line 181
    .line 182
    goto :goto_7

    .line 183
    :catch_8
    move-exception p0

    .line 184
    goto :goto_8

    .line 185
    :cond_5
    :goto_7
    if-eqz p1, :cond_6

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 188
    .line 189
    .line 190
    goto :goto_9

    .line 191
    :goto_8
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .line 193
    .line 194
    :cond_6
    :goto_9
    throw p2
.end method

.method public final processProcReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "IOException"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ThreatDefenseService"

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p0, "ContextInfo is null"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 24
    .line 25
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v3, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-gez p1, :cond_1

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    .line 43
    .line 44
    array-length v3, p1

    .line 45
    const/4 v5, 0x0

    .line 46
    move v6, v5

    .line 47
    move v7, v6

    .line 48
    :goto_0
    if-ge v6, v3, :cond_3

    .line 49
    .line 50
    aget-object v8, p1, v6

    .line 51
    .line 52
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_2

    .line 57
    .line 58
    move v5, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 61
    .line 62
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    .line 66
    .line 67
    array-length p1, p1

    .line 68
    if-le v7, p1, :cond_4

    .line 69
    .line 70
    const-string p0, "Get sensitive proc failed : "

    .line 71
    .line 72
    invoke-static {v7, p0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_4
    if-ge p3, v4, :cond_5

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p3, "/proc/"

    .line 84
    .line 85
    const-string v3, "/"

    .line 86
    .line 87
    invoke-static {p3, p1, v3, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    .line 92
    .line 93
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 94
    .line 95
    .line 96
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    .line 97
    .line 98
    new-instance p3, Ljava/io/InputStreamReader;

    .line 99
    .line 100
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 101
    .line 102
    invoke-direct {p3, p2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    .line 107
    .line 108
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-interface {p3, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    check-cast p3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    if-eqz v5, :cond_6

    .line 127
    .line 128
    :try_start_3
    invoke-virtual {p0, p3, v7}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p3
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    goto :goto_4

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    move-object v1, p1

    .line 135
    goto/16 :goto_8

    .line 136
    .line 137
    :catch_0
    move-exception p0

    .line 138
    :goto_2
    move-object v1, p1

    .line 139
    goto :goto_5

    .line 140
    :catch_1
    move-exception p0

    .line 141
    :goto_3
    move-object v1, p1

    .line 142
    goto :goto_6

    .line 143
    :cond_6
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 147
    .line 148
    .line 149
    goto :goto_7

    .line 150
    :catch_2
    move-exception p0

    .line 151
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    goto :goto_7

    .line 155
    :catch_3
    move-exception p0

    .line 156
    move-object p3, v1

    .line 157
    goto :goto_2

    .line 158
    :catch_4
    move-exception p0

    .line 159
    move-object p3, v1

    .line 160
    goto :goto_3

    .line 161
    :catchall_1
    move-exception p0

    .line 162
    goto :goto_8

    .line 163
    :catch_5
    move-exception p0

    .line 164
    move-object p3, v1

    .line 165
    goto :goto_5

    .line 166
    :catch_6
    move-exception p0

    .line 167
    move-object p3, v1

    .line 168
    goto :goto_6

    .line 169
    :catchall_2
    move-exception p0

    .line 170
    move-object p2, v1

    .line 171
    goto :goto_8

    .line 172
    :catch_7
    move-exception p0

    .line 173
    move-object p2, v1

    .line 174
    move-object p3, p2

    .line 175
    goto :goto_5

    .line 176
    :catch_8
    move-exception p0

    .line 177
    move-object p2, v1

    .line 178
    move-object p3, p2

    .line 179
    goto :goto_6

    .line 180
    :goto_5
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v3, "FileNotFoundException : "

    .line 186
    .line 187
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 202
    .line 203
    .line 204
    if-eqz v1, :cond_7

    .line 205
    .line 206
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 207
    .line 208
    .line 209
    :cond_7
    if-eqz p2, :cond_9

    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :goto_6
    :try_start_7
    const-string p1, "SecurityException"

    .line 216
    .line 217
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 218
    .line 219
    .line 220
    if-eqz v1, :cond_8

    .line 221
    .line 222
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 223
    .line 224
    .line 225
    :cond_8
    if-eqz p2, :cond_9

    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 228
    .line 229
    .line 230
    :cond_9
    :goto_7
    return-object p3

    .line 231
    :goto_8
    if-eqz v1, :cond_a

    .line 232
    .line 233
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 234
    .line 235
    .line 236
    goto :goto_9

    .line 237
    :catch_9
    move-exception p1

    .line 238
    goto :goto_a

    .line 239
    :cond_a
    :goto_9
    if-eqz p2, :cond_b

    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 242
    .line 243
    .line 244
    goto :goto_b

    .line 245
    :goto_a
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .line 247
    .line 248
    :cond_b
    :goto_b
    throw p0
.end method

.method public removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 p0, 0x0

    .line 2
    const-string v0, "ThreatDefenseService"

    .line 3
    .line 4
    if-eqz p1, :cond_b

    .line 5
    .line 6
    const-string v1, " "

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_b

    .line 13
    .line 14
    const-string v2, "("

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_b

    .line 21
    .line 22
    const-string v2, ")"

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    .line 33
    .line 34
    aget v3, v2, p2

    .line 35
    .line 36
    new-array v4, v3, [Ljava/lang/String;

    .line 37
    .line 38
    const-string v5, "\\("

    .line 39
    .line 40
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    array-length v6, v5

    .line 45
    const/4 v7, 0x2

    .line 46
    if-ne v6, v7, :cond_a

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    aget-object v8, v5, v6

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    aput-object v8, v4, v6

    .line 56
    .line 57
    const/4 v8, 0x1

    .line 58
    aget-object v5, v5, v8

    .line 59
    .line 60
    const-string v9, "\\)"

    .line 61
    .line 62
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    array-length v9, v5

    .line 67
    if-ne v9, v7, :cond_1

    .line 68
    .line 69
    aget-object v9, v5, v6

    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    aput-object v9, v4, v8

    .line 76
    .line 77
    aget-object v5, v5, v8

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move-object v5, p0

    .line 89
    :goto_0
    if-eqz v5, :cond_7

    .line 90
    .line 91
    array-length v9, v5

    .line 92
    aget p2, v2, p2

    .line 93
    .line 94
    sub-int/2addr p2, v7

    .line 95
    if-ne v9, p2, :cond_7

    .line 96
    .line 97
    array-length p0, v5

    .line 98
    move p1, v6

    .line 99
    :goto_1
    if-ge p1, p0, :cond_2

    .line 100
    .line 101
    aget-object p2, v5, p1

    .line 102
    .line 103
    add-int/lit8 v2, v7, 0x1

    .line 104
    .line 105
    aput-object p2, v4, v7

    .line 106
    .line 107
    add-int/lit8 p1, p1, 0x1

    .line 108
    .line 109
    move v7, v2

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    .line 112
    .line 113
    array-length p1, p0

    .line 114
    move p2, v6

    .line 115
    :goto_2
    const-string v2, ""

    .line 116
    .line 117
    if-ge p2, p1, :cond_4

    .line 118
    .line 119
    aget v5, p0, p2

    .line 120
    .line 121
    add-int/lit8 v5, v5, -0x1

    .line 122
    .line 123
    if-ne v5, v3, :cond_3

    .line 124
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v7, "Invalid length "

    .line 128
    .line 129
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string/jumbo v5, "|"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_3
    aput-object v2, v4, v5

    .line 153
    .line 154
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    :goto_4
    if-ge v6, v3, :cond_6

    .line 163
    .line 164
    aget-object p1, v4, v6

    .line 165
    .line 166
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-eqz p2, :cond_5

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v1, "Remove sensitive data failed, pid="

    .line 194
    .line 195
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    aget-object v1, v4, v6

    .line 199
    .line 200
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, ", name="

    .line 204
    .line 205
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    aget-object v1, v4, v8

    .line 209
    .line 210
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    sget-boolean p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 221
    .line 222
    if-eqz p2, :cond_8

    .line 223
    .line 224
    const-string p2, "Sensitive data result="

    .line 225
    .line 226
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :cond_8
    if-eqz v5, :cond_9

    .line 234
    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string p2, "Remained len="

    .line 238
    .line 239
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    array-length p2, v5

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    :cond_9
    return-object p0

    .line 254
    :cond_a
    const-string p2, "Invalid format line="

    .line 255
    .line 256
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    return-object p0

    .line 264
    :cond_b
    :goto_6
    const-string p2, "Invalid argument : "

    .line 265
    .line 266
    invoke-static {p2, p1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-object p0
.end method

.method public final setPackageRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 10

    .line 1
    const-string v0, "Replace process proc rules : "

    .line 2
    .line 3
    const-string v1, "Replace proc rules : "

    .line 4
    .line 5
    const-string v2, "Invalid package rules. "

    .line 6
    .line 7
    const-string v3, "app/rufs version : "

    .line 8
    .line 9
    if-eqz p2, :cond_9

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/16 v4, -0x65

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    return v4

    .line 39
    :cond_1
    const-string/jumbo v5, "sys.mtdl.start"

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static {v5, v6}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    const-string v8, "ThreatDefenseService"

    .line 48
    .line 49
    if-nez v7, :cond_2

    .line 50
    .line 51
    const-string/jumbo v7, "true"

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v7}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v5, v6}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_2

    .line 62
    .line 63
    const-string/jumbo v5, "set system property failed"

    .line 64
    .line 65
    .line 66
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    const/16 v5, -0x6c

    .line 70
    .line 71
    :try_start_0
    new-instance v7, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    .line 72
    .line 73
    invoke-direct {v7, p2}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-nez p2, :cond_3

    .line 81
    .line 82
    const-string p0, "Signature verification failed"

    .line 83
    .line 84
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v5

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :catch_1
    move-exception p0

    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :catch_2
    move-exception p0

    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :catch_3
    move-exception p0

    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_3
    new-instance v7, Lcom/android/server/enterprise/threatdefense/RuleParser;

    .line 101
    .line 102
    invoke-direct {v7, p2}, Lcom/android/server/enterprise/threatdefense/RuleParser;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p2, v7, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPacakagePublicSignature:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_4

    .line 112
    .line 113
    return v5

    .line 114
    :cond_4
    new-instance p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;

    .line 115
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p2, v7, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPolicyVersion:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    iget p0, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPolicyVersion:I

    .line 126
    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, "/"

    .line 136
    .line 137
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    if-ge p2, p0, :cond_5

    .line 151
    .line 152
    const/16 p0, -0x64

    .line 153
    .line 154
    return p0

    .line 155
    :cond_5
    iget-object p0, v7, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    if-nez p0, :cond_6

    .line 162
    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string/jumbo p1, "|"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-object p1, v7, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    return v4

    .line 190
    :cond_6
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    .line 191
    .line 192
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_7

    .line 197
    .line 198
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-static {v8, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    :cond_7
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    .line 209
    .line 210
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_8

    .line 215
    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :cond_8
    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcList()Ljava/util/ArrayList;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcessProcList()Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p2, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .line 239
    .line 240
    move v4, v6

    .line 241
    goto :goto_3

    .line 242
    :goto_0
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 243
    .line 244
    .line 245
    move v4, v5

    .line 246
    goto :goto_3

    .line 247
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string p2, "Initialize json object failed : "

    .line 250
    .line 251
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    const/16 v4, -0x6b

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 275
    .line 276
    .line 277
    :goto_3
    return v4

    .line 278
    :goto_4
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 279
    .line 280
    .line 281
    const/16 p0, -0x68

    .line 282
    .line 283
    return p0

    .line 284
    :cond_9
    :goto_5
    const/16 p0, -0x6a

    .line 285
    .line 286
    return p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
