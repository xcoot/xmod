.class public Lcom/android/server/pm/pu/ProfileUtilizationService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final PU_VERSION:Ljava/lang/String; = "1.0"

.field public static final TAG_PU:Ljava/lang/String; = "PU"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFinishTimeMs:J

.field public mStartReason:I

.field public mStartTimeMs:J

.field public final mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

.field public final mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

.field public final mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

.field public mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartReason:I

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher;-><init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/pm/pu/DexoptTrigger;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/android/server/pm/pu/DexoptTrigger;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "Profile utilization state:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    const-string v0, "Current state:"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/pm/pu/ProfileUtilizationService;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v1, "PU_StatusWatcher:"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v1, "PU_DexoptTrigger:"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v0, "PU_Storage:"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->loadAppsList()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_1

    .line 92
    .line 93
    const-string v1, "Stored apps:"

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v3, v1, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, " "

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-wide v3, v1, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->weight:J

    .line 133
    .line 134
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 146
    .line 147
    .line 148
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 149
    .line 150
    .line 151
    const-string v0, "Stored PU state:"

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    .line 160
    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_2

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/String;

    .line 184
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v3, ":"

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 206
    .line 207
    .line 208
    iget-object v2, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    .line 209
    .line 210
    const-string/jumbo v3, "no data stored"

    .line 211
    .line 212
    .line 213
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public onBootAfterUpdateIfNeeded(Lcom/android/server/pm/PackageManagerService;)V
    .locals 6

    .line 1
    iget-boolean v0, p1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move p1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->hasBcpApexesChanged()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    const/16 p1, 0xd

    .line 22
    .line 23
    :goto_0
    iput p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartReason:I

    .line 24
    .line 25
    invoke-static {p1}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "Device updated "

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "PU"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    const-wide/16 v4, 0x64

    .line 49
    .line 50
    div-long/2addr v2, v4

    .line 51
    const-wide/16 v4, 0x5

    .line 52
    .line 53
    mul-long/2addr v2, v4

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    cmp-long p1, v4, v2

    .line 59
    .line 60
    if-gez p1, :cond_2

    .line 61
    .line 62
    const-string p0, "Skip profile utilization, low storage"

    .line 63
    .line 64
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance p1, Lcom/android/server/ServiceThread;

    .line 74
    .line 75
    const-string v1, "PU_StatusWatcher"

    .line 76
    .line 77
    const/16 v2, 0xa

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-direct {p1, v2, v1, v3}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 86
    .line 87
    .line 88
    new-instance p1, Landroid/os/Handler;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-direct {p1, v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mHandler:Landroid/os/Handler;

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 103
    .line 104
    iget-object v0, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 105
    .line 106
    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    iget-object v4, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusFilter:Landroid/content/IntentFilter;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mHandler:Landroid/os/Handler;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    .line 115
    .line 116
    invoke-virtual {v1, p1, v4, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-instance v0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mDexoptDoneHandler:Lcom/android/server/pm/pu/DeviceStatusWatcher$2;

    .line 129
    .line 130
    invoke-virtual {p1, v3, v0, p0}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-string v0, "PU"

    .line 2
    .line 3
    const-string v1, "Profile utilization service started"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mShutdownFilter:Landroid/content/IntentFilter;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mShutdownReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Version: 1.0\nStart reason: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartReason:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const-string v1, "boot-no-update"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v1}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :goto_0
    const-string v1, "\nStart time: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    .line 32
    .line 33
    const-wide/16 v3, -0x1

    .line 34
    .line 35
    cmp-long v1, v1, v3

    .line 36
    .line 37
    const-string v2, " ts="

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const-string/jumbo v1, "not started"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance v1, Ljava/util/Date;

    .line 49
    .line 50
    iget-wide v5, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    .line 51
    .line 52
    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v5, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    .line 62
    .line 63
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :goto_1
    const-string v1, "\nFinish time: "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v5, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    .line 72
    .line 73
    cmp-long v1, v5, v3

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    const-string/jumbo p0, "not finished"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    new-instance v1, Ljava/util/Date;

    .line 85
    .line 86
    iget-wide v3, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    .line 87
    .line 88
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, "\nTook time "

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-wide v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    .line 108
    .line 109
    iget-wide v3, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    .line 110
    .line 111
    sub-long/2addr v1, v3

    .line 112
    const-wide/16 v3, 0x3e8

    .line 113
    .line 114
    div-long/2addr v1, v3

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string/jumbo p0, "sec"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method
