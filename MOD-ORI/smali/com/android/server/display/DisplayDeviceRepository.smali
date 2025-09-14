.class public final Lcom/android/server/display/DisplayDeviceRepository;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/DisplayAdapter$Listener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDisplayDevices:Ljava/util/List;

.field public mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mListeners:Ljava/util/List;

.field public mNeedWakeLock:Z

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DisplayDeviceRepository"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/DisplayDeviceRepository;->DEBUG:Z

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/PersistentDataStore;)V
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
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final forEachLocked(Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/display/DisplayDevice;

    .line 21
    .line 22
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public final getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 36
    .line 37
    invoke-static {p1, v2}, Landroid/view/DisplayAddress$Physical;->isPortMatch(Landroid/view/DisplayAddress;Landroid/view/DisplayAddress;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    return-object v1

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public final getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public final isDexDisplayDeviceEnabledLocked()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/display/DisplayDevice;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 26
    .line 27
    const/high16 v1, 0x100000

    .line 28
    .line 29
    and-int/2addr v0, v1

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    sget-boolean v3, Lcom/android/server/display/DisplayDeviceRepository;->DEBUG:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v6, "DisplayDeviceRepository#onDisplayDeviceEvent (event="

    .line 15
    .line 16
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v6, ")"

    .line 23
    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5, v4}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, 0x0

    .line 36
    :goto_0
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    if-eq v2, v7, :cond_11

    .line 39
    .line 40
    if-eq v2, v6, :cond_5

    .line 41
    .line 42
    const/4 v8, 0x3

    .line 43
    if-eq v2, v8, :cond_2

    .line 44
    .line 45
    :cond_1
    :goto_1
    move-object v15, v5

    .line 46
    goto/16 :goto_9

    .line 47
    .line 48
    :cond_2
    const-string v2, "Display device removed: "

    .line 49
    .line 50
    const-string v9, "Attempted to remove non-existent display device: "

    .line 51
    .line 52
    iget-object v10, v1, Lcom/android/server/display/DisplayDeviceRepository;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 53
    .line 54
    monitor-enter v10

    .line 55
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    iget-object v12, v1, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 60
    .line 61
    check-cast v12, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-nez v12, :cond_3

    .line 68
    .line 69
    const-string v0, "DisplayDeviceRepository"

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    monitor-exit v10

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    iget v9, v11, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 91
    .line 92
    if-ne v9, v6, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move v7, v4

    .line 96
    :goto_2
    const-string v6, "DisplayDeviceRepository"

    .line 97
    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iput-object v11, v0, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 114
    .line 115
    invoke-virtual {v1, v0, v8}, Lcom/android/server/display/DisplayDeviceRepository;->sendEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 116
    .line 117
    .line 118
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-boolean v0, v1, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 120
    .line 121
    if-nez v0, :cond_1

    .line 122
    .line 123
    if-eqz v7, :cond_1

    .line 124
    .line 125
    iget-object v0, v1, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    iget-object v0, v1, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :goto_3
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw v0

    .line 143
    :cond_5
    const-string v2, "Display device changed: "

    .line 144
    .line 145
    const-string v8, "Display device changed committed state: \""

    .line 146
    .line 147
    const-string v9, "Display device changed render timings: \""

    .line 148
    .line 149
    const-string v10, "Display device rotated: \""

    .line 150
    .line 151
    const-string v11, "Display device changed state: \""

    .line 152
    .line 153
    const-string v12, "Attempted to change non-existent display device: "

    .line 154
    .line 155
    iget-object v13, v1, Lcom/android/server/display/DisplayDeviceRepository;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 156
    .line 157
    monitor-enter v13

    .line 158
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    iget-object v15, v1, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 163
    .line 164
    check-cast v15, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    if-nez v15, :cond_6

    .line 171
    .line 172
    const-string v0, "DisplayDeviceRepository"

    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    monitor-exit v13

    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :catchall_1
    move-exception v0

    .line 193
    goto/16 :goto_7

    .line 194
    .line 195
    :cond_6
    move-object v15, v5

    .line 196
    const-wide/32 v4, 0x20000

    .line 197
    .line 198
    .line 199
    if-eqz v3, :cond_7

    .line 200
    .line 201
    const-string/jumbo v12, "handleDisplayDeviceChanged"

    .line 202
    .line 203
    .line 204
    invoke-static {v4, v5, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    iget-object v12, v0, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 208
    .line 209
    invoke-virtual {v12, v14}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    if-ne v12, v6, :cond_8

    .line 214
    .line 215
    const-string v2, "DisplayDeviceRepository"

    .line 216
    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v8, "\", "

    .line 228
    .line 229
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 233
    .line 234
    invoke-static {v8}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    goto/16 :goto_4

    .line 249
    .line 250
    :cond_8
    const/16 v6, 0x20

    .line 251
    .line 252
    if-ne v12, v6, :cond_9

    .line 253
    .line 254
    const-string v2, "DisplayDeviceRepository"

    .line 255
    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v8, "\", "

    .line 267
    .line 268
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 272
    .line 273
    invoke-static {v8}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_9
    const/16 v6, 0xc0

    .line 289
    .line 290
    if-ne v12, v6, :cond_a

    .line 291
    .line 292
    const-string v2, "DisplayDeviceRepository"

    .line 293
    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v8, "\", renderFrameRate="

    .line 305
    .line 306
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 310
    .line 311
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v8, ", presentationDeadlineNanos="

    .line 315
    .line 316
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    iget-wide v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 320
    .line 321
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v8, ", appVsyncOffsetNanos="

    .line 325
    .line 326
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    iget-wide v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 330
    .line 331
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_a
    const/4 v6, 0x4

    .line 343
    if-ne v12, v6, :cond_b

    .line 344
    .line 345
    if-eqz v3, :cond_c

    .line 346
    .line 347
    const-string v2, "DisplayDeviceRepository"

    .line 348
    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v8, "\", "

    .line 360
    .line 361
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget v8, v14, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 365
    .line 366
    invoke-static {v8}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    goto :goto_4

    .line 381
    :cond_b
    const/16 v6, 0x10

    .line 382
    .line 383
    if-eq v12, v6, :cond_c

    .line 384
    .line 385
    const-string v6, "DisplayDeviceRepository"

    .line 386
    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 400
    .line 401
    .line 402
    :cond_c
    :goto_4
    and-int/lit8 v2, v12, 0x8

    .line 403
    .line 404
    if-eqz v2, :cond_f

    .line 405
    .line 406
    :try_start_3
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceRepository;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 407
    .line 408
    iget v6, v14, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    if-nez v8, :cond_d

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_d
    iget-object v8, v0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v2, v8, v7}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 423
    .line 424
    .line 425
    move-result-object v8

    .line 426
    iget v9, v8, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 427
    .line 428
    if-ne v6, v9, :cond_e

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_e
    iput v6, v8, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 432
    .line 433
    iput-boolean v7, v2, Lcom/android/server/display/PersistentDataStore;->mDirty:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 434
    .line 435
    :goto_5
    :try_start_4
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceRepository;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 436
    .line 437
    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 438
    .line 439
    .line 440
    goto :goto_6

    .line 441
    :catchall_2
    move-exception v0

    .line 442
    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceRepository;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 443
    .line 444
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 445
    .line 446
    .line 447
    throw v0

    .line 448
    :cond_f
    :goto_6
    iput-object v14, v0, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 449
    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v0, v12}, Lcom/android/server/display/DisplayDeviceRepository;->sendChangedEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 454
    .line 455
    .line 456
    if-eqz v3, :cond_10

    .line 457
    .line 458
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 459
    .line 460
    .line 461
    :cond_10
    monitor-exit v13

    .line 462
    goto :goto_9

    .line 463
    :goto_7
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 464
    throw v0

    .line 465
    :cond_11
    move-object v15, v5

    .line 466
    const-string v2, "Display device added: "

    .line 467
    .line 468
    const-string v4, "Attempted to add already added display device: "

    .line 469
    .line 470
    iget-object v5, v1, Lcom/android/server/display/DisplayDeviceRepository;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 471
    .line 472
    monitor-enter v5

    .line 473
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    iget-object v9, v1, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 478
    .line 479
    check-cast v9, Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v9

    .line 485
    if-eqz v9, :cond_12

    .line 486
    .line 487
    const-string v0, "DisplayDeviceRepository"

    .line 488
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    monitor-exit v5

    .line 505
    goto :goto_9

    .line 506
    :catchall_3
    move-exception v0

    .line 507
    goto :goto_a

    .line 508
    :cond_12
    iget v4, v8, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 509
    .line 510
    if-ne v4, v6, :cond_13

    .line 511
    .line 512
    move v4, v7

    .line 513
    goto :goto_8

    .line 514
    :cond_13
    const/4 v4, 0x0

    .line 515
    :goto_8
    const-string v6, "DisplayDeviceRepository"

    .line 516
    .line 517
    new-instance v9, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    iput-object v8, v0, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 533
    .line 534
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 535
    .line 536
    check-cast v2, Ljava/util/ArrayList;

    .line 537
    .line 538
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v0, v7}, Lcom/android/server/display/DisplayDeviceRepository;->sendEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 542
    .line 543
    .line 544
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 545
    iget-boolean v0, v1, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 546
    .line 547
    if-eqz v0, :cond_14

    .line 548
    .line 549
    if-eqz v4, :cond_14

    .line 550
    .line 551
    iget-object v0, v1, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 552
    .line 553
    if-eqz v0, :cond_14

    .line 554
    .line 555
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-nez v0, :cond_14

    .line 560
    .line 561
    iget-object v0, v1, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 562
    .line 563
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 564
    .line 565
    .line 566
    :cond_14
    :goto_9
    if-eqz v3, :cond_15

    .line 567
    .line 568
    move-object v5, v15

    .line 569
    const/4 v0, 0x0

    .line 570
    invoke-static {v5, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 571
    .line 572
    .line 573
    :cond_15
    return-void

    .line 574
    :goto_a
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 575
    throw v0
.end method

.method public final sendChangedEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    .line 14
    .line 15
    check-cast v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/display/DisplayDeviceRepository$Listener;

    .line 22
    .line 23
    check-cast v3, Lcom/android/server/display/LogicalDisplayMapper;

    .line 24
    .line 25
    sget-boolean v4, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v5, "Display device changed: "

    .line 35
    .line 36
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v5, "LogicalDisplayMapper"

    .line 51
    .line 52
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p2, v1}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final sendEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    .line 8
    .line 9
    check-cast v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ge v5, v3, :cond_e

    .line 18
    .line 19
    iget-object v6, v0, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    .line 20
    .line 21
    check-cast v6, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Lcom/android/server/display/DisplayDeviceRepository$Listener;

    .line 28
    .line 29
    check-cast v6, Lcom/android/server/display/LogicalDisplayMapper;

    .line 30
    .line 31
    iget-object v15, v6, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    .line 32
    .line 33
    sget-boolean v7, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 34
    .line 35
    const/4 v14, 0x1

    .line 36
    const/4 v8, -0x1

    .line 37
    iget-object v9, v6, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 38
    .line 39
    const-string v10, "LogicalDisplayMapper"

    .line 40
    .line 41
    if-eq v2, v14, :cond_7

    .line 42
    .line 43
    const/4 v11, 0x3

    .line 44
    if-eq v2, v11, :cond_0

    .line 45
    .line 46
    :goto_1
    move v7, v4

    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :cond_0
    if-eqz v7, :cond_1

    .line 50
    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v11, "Display device removed: "

    .line 54
    .line 55
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v9, v8}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v7, v4}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    if-nez v8, :cond_2

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    iget-object v10, v6, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 88
    .line 89
    iget-object v11, v1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-object v8, v8, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 95
    .line 96
    iget-object v10, v9, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 97
    .line 98
    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_6

    .line 103
    .line 104
    invoke-virtual {v7, v4}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    if-eqz v8, :cond_3

    .line 109
    .line 110
    iget-object v10, v7, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 111
    .line 112
    check-cast v10, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_3
    move v8, v4

    .line 118
    :goto_2
    iget-object v10, v6, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-ge v8, v10, :cond_6

    .line 125
    .line 126
    iget-object v10, v6, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 127
    .line 128
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    check-cast v10, Lcom/android/server/display/LogicalDisplay;

    .line 133
    .line 134
    iget-object v10, v10, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 135
    .line 136
    if-nez v10, :cond_4

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    invoke-virtual {v10}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    iget v11, v10, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 144
    .line 145
    and-int/2addr v11, v14

    .line 146
    if-eqz v11, :cond_5

    .line 147
    .line 148
    iget-object v11, v10, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 149
    .line 150
    iget-object v12, v9, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 151
    .line 152
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-nez v11, :cond_5

    .line 157
    .line 158
    iget-object v8, v10, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 159
    .line 160
    const/16 v17, 0x0

    .line 161
    .line 162
    const/16 v18, 0x0

    .line 163
    .line 164
    const/4 v9, 0x1

    .line 165
    const/4 v10, 0x1

    .line 166
    const-string v11, ""

    .line 167
    .line 168
    const/4 v13, -0x1

    .line 169
    const/4 v14, 0x0

    .line 170
    const/16 v16, 0x0

    .line 171
    .line 172
    const/16 v19, 0x0

    .line 173
    .line 174
    move-object v12, v15

    .line 175
    move-object/from16 v15, v16

    .line 176
    .line 177
    move-object/from16 v16, v19

    .line 178
    .line 179
    invoke-virtual/range {v7 .. v18}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    :goto_4
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_7
    if-eqz v7, :cond_8

    .line 195
    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v11, "Display device added: "

    .line 199
    .line 200
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    iget v7, v13, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 222
    .line 223
    and-int/2addr v7, v14

    .line 224
    if-eqz v7, :cond_a

    .line 225
    .line 226
    invoke-virtual {v9, v8}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-virtual {v7, v4}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    if-eqz v8, :cond_9

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    iget-object v8, v8, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 242
    .line 243
    const/16 v17, 0x0

    .line 244
    .line 245
    const/16 v18, 0x0

    .line 246
    .line 247
    const/4 v9, 0x1

    .line 248
    const/4 v10, 0x1

    .line 249
    const-string v11, ""

    .line 250
    .line 251
    const/16 v16, -0x1

    .line 252
    .line 253
    const/16 v19, 0x0

    .line 254
    .line 255
    const/16 v20, 0x0

    .line 256
    .line 257
    const/16 v21, 0x0

    .line 258
    .line 259
    move-object v12, v15

    .line 260
    move-object v4, v13

    .line 261
    move/from16 v13, v16

    .line 262
    .line 263
    move-object/from16 v14, v19

    .line 264
    .line 265
    move-object/from16 v22, v15

    .line 266
    .line 267
    move-object/from16 v15, v20

    .line 268
    .line 269
    move-object/from16 v16, v21

    .line 270
    .line 271
    invoke-virtual/range {v7 .. v18}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_a
    :goto_5
    move-object v4, v13

    .line 276
    move-object/from16 v22, v15

    .line 277
    .line 278
    :goto_6
    iget v7, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 279
    .line 280
    const/high16 v8, 0x800000

    .line 281
    .line 282
    and-int/2addr v8, v7

    .line 283
    if-eqz v8, :cond_b

    .line 284
    .line 285
    const/4 v8, 0x1

    .line 286
    invoke-virtual {v6, v1, v8}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    .line 287
    .line 288
    .line 289
    :goto_7
    const/4 v7, 0x0

    .line 290
    goto :goto_8

    .line 291
    :cond_b
    const/high16 v8, 0x400000

    .line 292
    .line 293
    and-int/2addr v7, v8

    .line 294
    if-eqz v7, :cond_c

    .line 295
    .line 296
    const/4 v4, 0x4

    .line 297
    invoke-virtual {v6, v1, v4}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_c
    move-object/from16 v8, v22

    .line 302
    .line 303
    const/4 v7, 0x0

    .line 304
    invoke-virtual {v8, v7}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;->getId(Z)I

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    invoke-virtual {v6, v1, v8}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 313
    .line 314
    const/high16 v9, 0x2000000

    .line 315
    .line 316
    and-int/2addr v4, v9

    .line 317
    if-eqz v4, :cond_d

    .line 318
    .line 319
    iput-object v8, v6, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 320
    .line 321
    :cond_d
    :goto_8
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 325
    .line 326
    .line 327
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 328
    .line 329
    move v4, v7

    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_e
    return-void
.end method
