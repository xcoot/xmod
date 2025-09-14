.class public final Lcom/samsung/android/camera/scpm/ScpmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsUnihalSupport:Z

.field public final mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

.field public mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

.field public final mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "eng"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string/jumbo v1, "userdebug"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    sput-boolean v0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->DEBUG:Z

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "vendor.camera.unihal.enable"

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mIsUnihalSupport:Z

    .line 13
    .line 14
    new-instance v0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;-><init>(Lcom/samsung/android/camera/scpm/ScpmReceiver;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    new-instance v5, Landroid/os/Handler;

    .line 26
    .line 27
    invoke-direct {v5, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 28
    .line 29
    .line 30
    iput-object v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance p1, Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 38
    .line 39
    new-instance p1, Lcom/samsung/android/camera/scpm/ScpmHelper;

    .line 40
    .line 41
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/camera/scpm/ScpmHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/camera/scpm/ScpmReceiver$1;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    .line 45
    .line 46
    const-string p1, "com.samsung.android.scpm.policy.UPDATE.camera3rdpartylist-1857"

    .line 47
    .line 48
    const-string p3, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 49
    .line 50
    invoke-static {p1, p3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v6, 0x2

    .line 56
    move-object v1, p2

    .line 57
    move-object v2, p0

    .line 58
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "\n\tDump of ScpmReceiver list"

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "\n\tPolicy Type : "

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v5, "\n\tCurrent list : version - "

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 52
    .line 53
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-virtual {v5, v3}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicy(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Lcom/samsung/android/camera/scpm/ScpmList;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    iget-object v6, v6, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    :try_start_2
    monitor-exit v5

    .line 61
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicyList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_0

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/samsung/android/camera/scpm/PolicyListVO;

    .line 94
    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v6, "\t\t"

    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v6, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->packageName:Ljava/lang/String;

    .line 106
    .line 107
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const/4 v7, 0x2

    .line 114
    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v6, " arg1: "

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v6, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->value:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v6, " arg2: "

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v4, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->extra:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catchall_0
    move-exception p1

    .line 150
    goto :goto_2

    .line 151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :catchall_1
    move-exception p1

    .line 156
    monitor-exit v5

    .line 157
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_1
    monitor-exit p0

    .line 159
    return-void

    .line 160
    :goto_2
    monitor-exit p0

    .line 161
    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_c

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-wide/16 v3, 0x8

    .line 8
    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x2

    .line 11
    if-eq v0, v6, :cond_8

    .line 12
    .line 13
    if-eq v0, v5, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    const-string p0, "CameraService/ScpmReceiver"

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "SCPMReceiver error, invalid message: "

    .line 23
    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p1, p1, Landroid/os/Message;->what:I

    .line 28
    .line 29
    invoke-static {v0, p1, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_a

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 35
    .line 36
    if-eqz v0, :cond_d

    .line 37
    .line 38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    instance-of v2, v0, Landroid/os/ParcelFileDescriptor;

    .line 41
    .line 42
    if-eqz v2, :cond_d

    .line 43
    .line 44
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 45
    .line 46
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    array-length v3, v3

    .line 53
    if-ge v2, v3, :cond_d

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 56
    .line 57
    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 62
    .line 63
    aget-object p1, v2, p1

    .line 64
    .line 65
    const-string/jumbo v2, "updatePolicy "

    .line 66
    .line 67
    .line 68
    const-string/jumbo v3, "updatePolicy "

    .line 69
    .line 70
    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    const-string v4, "CameraService/ScpmListManager"

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicy(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Lcom/samsung/android/camera/scpm/ScpmList;

    .line 90
    .line 91
    .line 92
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getJsonObject(Landroid/os/ParcelFileDescriptor;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/camera/scpm/ScpmListManager;->parseAndUpdateData(Lorg/json/JSONObject;Lcom/samsung/android/camera/scpm/ScpmList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    :try_start_2
    const-string v3, "CameraService/ScpmListManager"

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->loadDefaultScpmList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    :goto_0
    monitor-exit p0

    .line 125
    goto/16 :goto_a

    .line 126
    .line 127
    :goto_1
    monitor-exit p0

    .line 128
    throw p1

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    .line 130
    .line 131
    if-eqz p1, :cond_d

    .line 132
    .line 133
    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmListManager;->mCurrentPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_d

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lcom/samsung/android/camera/scpm/ScpmList;

    .line 152
    .line 153
    iget-object v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    .line 154
    .line 155
    const-string v6, "cannot get new policy : "

    .line 156
    .line 157
    iget-object v7, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    const-string v9, "com.samsung.android.scpm.policy"

    .line 168
    .line 169
    invoke-virtual {v7, v9, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    if-eqz v7, :cond_3

    .line 174
    .line 175
    move v7, v1

    .line 176
    goto :goto_3

    .line 177
    :cond_3
    move v7, v2

    .line 178
    :goto_3
    const-string v8, "CameraService/ScpmHelper"

    .line 179
    .line 180
    if-nez v7, :cond_4

    .line 181
    .line 182
    const-string v0, "getSCPMPolicy - SCPM is not available"

    .line 183
    .line 184
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v9, "content://com.samsung.android.scpm.policy/"

    .line 191
    .line 192
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v9, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mToken:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v9, "/"

    .line 201
    .line 202
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v9, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mConfigurationName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    sget-boolean v9, Lcom/samsung/android/camera/scpm/ScpmHelper;->DEBUG:Z

    .line 219
    .line 220
    if-eqz v9, :cond_5

    .line 221
    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string/jumbo v10, "uri: "

    .line 225
    .line 226
    .line 227
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    :cond_5
    :try_start_3
    iget-object v9, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    .line 241
    .line 242
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    const-string/jumbo v10, "r"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v9, v7, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 250
    .line 251
    .line 252
    move-result-object v9
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 253
    if-nez v9, :cond_6

    .line 254
    .line 255
    :try_start_4
    new-instance v0, Landroid/os/Bundle;

    .line 256
    .line 257
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string/jumbo v10, "token"

    .line 261
    .line 262
    .line 263
    iget-object v11, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mToken:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v5, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    const-string v10, "getLastError"

    .line 275
    .line 276
    const-string v11, "android"

    .line 277
    .line 278
    invoke-virtual {v5, v7, v10, v11, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const-string/jumbo v5, "rcode"

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    const-string/jumbo v7, "rmsg"

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v5, ", "

    .line 305
    .line 306
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    goto :goto_5

    .line 322
    :cond_6
    iget-object v5, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    .line 323
    .line 324
    iget-object v0, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 325
    .line 326
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onListReceived(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 331
    .line 332
    .line 333
    :goto_4
    if-eqz v9, :cond_2

    .line 334
    .line 335
    :try_start_5
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 336
    .line 337
    .line 338
    goto/16 :goto_2

    .line 339
    .line 340
    :catch_1
    move-exception v0

    .line 341
    goto :goto_7

    .line 342
    :catch_2
    move-exception v0

    .line 343
    goto :goto_8

    .line 344
    :goto_5
    if-eqz v9, :cond_7

    .line 345
    .line 346
    :try_start_6
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 347
    .line 348
    .line 349
    goto :goto_6

    .line 350
    :catchall_2
    move-exception v5

    .line 351
    :try_start_7
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 352
    .line 353
    .line 354
    :cond_7
    :goto_6
    throw v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 355
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string v6, "getSCPMPolicy fail because of exception! "

    .line 358
    .line 359
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_2

    .line 376
    .line 377
    :goto_8
    const-string v5, "File not found!"

    .line 378
    .line 379
    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_2

    .line 386
    .line 387
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    .line 388
    .line 389
    if-eqz p0, :cond_d

    .line 390
    .line 391
    const-string p1, "android"

    .line 392
    .line 393
    const-string v0, "failed to register: rcode = "

    .line 394
    .line 395
    const-string/jumbo v7, "register success : rcode = "

    .line 396
    .line 397
    .line 398
    const-string/jumbo v8, "registerScpm"

    .line 399
    .line 400
    .line 401
    const-string v9, "CameraService/ScpmHelper"

    .line 402
    .line 403
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    iget-object v8, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    .line 407
    .line 408
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    const-string v4, "com.samsung.android.scpm.policy"

    .line 417
    .line 418
    invoke-virtual {v8, v4, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    if-eqz v3, :cond_9

    .line 423
    .line 424
    move v2, v1

    .line 425
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    .line 426
    .line 427
    if-nez v2, :cond_a

    .line 428
    .line 429
    const-string/jumbo p0, "registerScpm - SCPM is not available"

    .line 430
    .line 431
    .line 432
    invoke-static {v9, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3, v6}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onRegistered(I)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_a

    .line 439
    .line 440
    :cond_a
    :try_start_8
    new-instance v2, Landroid/os/Bundle;

    .line 441
    .line 442
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 443
    .line 444
    .line 445
    const-string/jumbo v4, "packageName"

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const-string v4, "appId"

    .line 452
    .line 453
    const-string v6, "k0fpqpbykt"

    .line 454
    .line 455
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const-string/jumbo v4, "version"

    .line 459
    .line 460
    .line 461
    sget-object v6, Lcom/samsung/android/camera/scpm/ScpmHelper;->APP_VERSION:Ljava/lang/String;

    .line 462
    .line 463
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    const-string/jumbo v4, "receiverPackageName"

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-object v4, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    .line 473
    .line 474
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    const-string v6, "content://com.samsung.android.scpm.policy/"

    .line 479
    .line 480
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    const-string/jumbo v8, "register"

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4, v6, v8, p1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    if-eqz p1, :cond_d

    .line 492
    .line 493
    const-string/jumbo v2, "result"

    .line 494
    .line 495
    .line 496
    const/4 v4, -0x1

    .line 497
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    const-string/jumbo v6, "token"

    .line 502
    .line 503
    .line 504
    const/4 v8, 0x0

    .line 505
    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    iput-object v6, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mToken:Ljava/lang/String;

    .line 510
    .line 511
    const-string/jumbo p0, "rcode"

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1, p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 515
    .line 516
    .line 517
    move-result p0

    .line 518
    const-string/jumbo v4, "rmsg"

    .line 519
    .line 520
    .line 521
    const-string v6, ""

    .line 522
    .line 523
    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 527
    const-string v4, ", rmsg = "

    .line 528
    .line 529
    if-ne v2, v1, :cond_b

    .line 530
    .line 531
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p0

    .line 549
    invoke-static {v9, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3, v1}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onRegistered(I)V

    .line 553
    .line 554
    .line 555
    goto :goto_a

    .line 556
    :catch_3
    move-exception p0

    .line 557
    goto :goto_9

    .line 558
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object p0

    .line 576
    invoke-static {v9, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .line 578
    .line 579
    invoke-virtual {v3, v5}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onRegistered(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 580
    .line 581
    .line 582
    goto :goto_a

    .line 583
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    const-string v0, "cannot register package : "

    .line 586
    .line 587
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p0

    .line 594
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object p0

    .line 601
    invoke-static {v9, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .line 603
    .line 604
    invoke-virtual {v3, v5}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onRegistered(I)V

    .line 605
    .line 606
    .line 607
    goto :goto_a

    .line 608
    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 609
    .line 610
    instance-of v2, v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 611
    .line 612
    if-eqz v2, :cond_d

    .line 613
    .line 614
    check-cast v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 615
    .line 616
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 617
    .line 618
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->notifyParamChangeRetryLocked(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V

    .line 619
    .line 620
    .line 621
    :cond_d
    :goto_a
    return v1
.end method

.method public final notifyParamChange(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Z
    .locals 14

    .line 1
    const-string v0, ";"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v4, "notifyParamChange : "

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, ", mIsUnihalSupport = "

    .line 25
    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mIsUnihalSupport:Z

    .line 30
    .line 31
    const-string v6, "CameraService/ScpmReceiver"

    .line 32
    .line 33
    invoke-static {v6, v3, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicyList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v5, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v7, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    :try_start_0
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_4

    .line 63
    .line 64
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    check-cast v9, Lcom/samsung/android/camera/scpm/PolicyListVO;

    .line 69
    .line 70
    iget-object v10, v9, Lcom/samsung/android/camera/scpm/PolicyListVO;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    iget-object v11, v9, Lcom/samsung/android/camera/scpm/PolicyListVO;->extra:Ljava/lang/String;

    .line 73
    .line 74
    :try_start_1
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v10, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    new-instance v12, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v13, "pkgNameHint="

    .line 85
    .line 86
    .line 87
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v9, v9, Lcom/samsung/android/camera/scpm/PolicyListVO;->value:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v9, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mIsUnihalSupport:Z

    .line 106
    .line 107
    if-eqz v9, :cond_2

    .line 108
    .line 109
    sget-object v9, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 110
    .line 111
    if-ne v9, p1, :cond_2

    .line 112
    .line 113
    iget-object v9, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 114
    .line 115
    monitor-enter v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :try_start_2
    invoke-virtual {v9, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicy(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Lcom/samsung/android/camera/scpm/ScpmList;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    iget-object v12, v12, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .line 122
    :try_start_3
    monitor-exit v9

    .line 123
    iget-object v9, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 124
    .line 125
    invoke-virtual {v9, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getDefaultVersion(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-nez v9, :cond_2

    .line 134
    .line 135
    const-string v9, "downloaded=true;"

    .line 136
    .line 137
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catch_0
    move-exception p0

    .line 142
    goto :goto_2

    .line 143
    :catch_1
    move-exception p0

    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :catch_2
    move-exception p0

    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :catchall_0
    move-exception p0

    .line 150
    monitor-exit v9

    .line 151
    throw p0

    .line 152
    :cond_2
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_3

    .line 157
    .line 158
    new-instance v9, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v12, "extra="

    .line 164
    .line 165
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    sget-boolean v9, Lcom/samsung/android/camera/scpm/ScpmReceiver;->DEBUG:Z

    .line 189
    .line 190
    if-eqz v9, :cond_1

    .line 191
    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    new-array p1, v2, [Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, [Ljava/lang/String;

    .line 223
    .line 224
    new-array v0, v2, [Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, [Ljava/lang/String;

    .line 231
    .line 232
    invoke-interface {v1, p0, p1, v0}, Landroid/hardware/ICameraService;->notifyPkgListParamChange(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string/jumbo p1, "notifyParamChange : size is "

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 258
    .line 259
    .line 260
    const/4 p0, 0x1

    .line 261
    return p0

    .line 262
    :goto_2
    const-string p1, "Unknown exception occur "

    .line 263
    .line 264
    invoke-static {p0, p1, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return v2

    .line 268
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v0, "Could not parse package name "

    .line 271
    .line 272
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    return v2

    .line 286
    :goto_4
    const-string p1, "Could not notify vision param change, remote exception: "

    .line 287
    .line 288
    invoke-static {p1, p0, v6}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    return v2
.end method

.method public final declared-synchronized notifyParamChangeRetryLocked(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->notifyParamChange(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move p1, v1

    .line 10
    :cond_0
    if-gtz p1, :cond_1

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_1
    :try_start_1
    const-string v0, "CameraService/ScpmReceiver"

    .line 15
    .line 16
    const-string v2, "Could not notify camera service of device state change, retrying..."

    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    sub-int/2addr p1, v2

    .line 25
    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-wide/16 v1, 0x14

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "com.samsung.android.scpm.policy.UPDATE.camera3rdpartylist-1857"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const-string v0, "CameraService/ScpmReceiver"

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string p1, "SCPM update broadcast received!"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string p1, "SCPM clear broadcast received, policy updated 1 min later!"

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/samsung/android/camera/scpm/ScpmHelper;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    .line 45
    .line 46
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/camera/scpm/ScpmHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/camera/scpm/ScpmReceiver$1;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    const/4 p2, 0x2

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    const-wide/32 v0, 0xea60

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method
