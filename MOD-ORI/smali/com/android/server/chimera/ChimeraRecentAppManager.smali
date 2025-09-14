.class public final Lcom/android/server/chimera/ChimeraRecentAppManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

.field final mProcessObserver:Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

.field mPsiFullTotalList:Ljava/util/Map;

.field public final mPsiListLock:Ljava/lang/Object;

.field mPsiSomeTotalList:Ljava/util/Map;

.field mRecentAppList:Ljava/util/List;

.field public final mRecentAppLock:Ljava/lang/Object;

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Landroid/os/Looper;)V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/server/chimera/ChimeraRecentAppManager$1;-><init>(Lcom/android/server/chimera/ChimeraRecentAppManager;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mProcessObserver:Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 49
    .line 50
    new-instance p2, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 51
    .line 52
    invoke-direct {p2, p0, p3}, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;-><init>(Lcom/android/server/chimera/ChimeraRecentAppManager;Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public checkAppUsageEnd(I)V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 2
    .line 3
    const-string v0, "/acct/uid_"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    move v3, v5

    .line 34
    :goto_0
    array-length v6, v1

    .line 35
    if-ge v3, v6, :cond_3

    .line 36
    .line 37
    aget-object v6, v1, v3

    .line 38
    .line 39
    const-string/jumbo v7, "pid"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    const-string v6, "/"

    .line 49
    .line 50
    invoke-static {v0, v6}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    aget-object v7, v1, v3

    .line 55
    .line 56
    const-string v8, "/cgroup.procs"

    .line 57
    .line 58
    invoke-static {v6, v7, v8}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 63
    .line 64
    new-instance v8, Ljava/io/FileReader;

    .line 65
    .line 66
    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    :goto_1
    if-eqz v8, :cond_0

    .line 77
    .line 78
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    move-object v4, v7

    .line 92
    goto :goto_3

    .line 93
    :catch_0
    move-exception v8

    .line 94
    goto :goto_2

    .line 95
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :catch_1
    move-exception v6

    .line 100
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    goto :goto_3

    .line 106
    :catch_2
    move-exception v8

    .line 107
    move-object v7, v4

    .line 108
    :goto_2
    :try_start_3
    const-string v9, "ChimeraCommonUtil"

    .line 109
    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v11, "can\'t read "

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    .line 137
    .line 138
    if-eqz v7, :cond_2

    .line 139
    .line 140
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :goto_3
    if-eqz v4, :cond_1

    .line 145
    .line 146
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catch_3
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :cond_1
    :goto_4
    throw p0

    .line 155
    :cond_2
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-lez v0, :cond_6

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_4

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Ljava/lang/Integer;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 194
    .line 195
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->getPsiInfo(I)Landroid/util/Pair;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->updatePsiInfo(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->getPsiInfo(I)Landroid/util/Pair;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v0, :cond_6

    .line 210
    .line 211
    if-eqz v1, :cond_6

    .line 212
    .line 213
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v2, Ljava/lang/Long;

    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v2, Ljava/lang/Long;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v1, Ljava/lang/Long;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v0, Ljava/lang/Long;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    .line 242
    .line 243
    monitor-enter v0

    .line 244
    :try_start_6
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    .line 245
    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    .line 254
    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 263
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppLock:Ljava/lang/Object;

    .line 264
    .line 265
    monitor-enter p1

    .line 266
    :try_start_7
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    .line 267
    .line 268
    new-instance v1, Lcom/android/server/chimera/ChimeraRecentAppManager$ResourceUsageInfo;

    .line 269
    .line 270
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    .line 277
    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    const/16 v1, 0xa

    .line 283
    .line 284
    if-le v0, v1, :cond_5

    .line 285
    .line 286
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mRecentAppList:Ljava/util/List;

    .line 287
    .line 288
    invoke-interface {p0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :catchall_2
    move-exception p0

    .line 293
    goto :goto_8

    .line 294
    :cond_5
    :goto_7
    monitor-exit p1

    .line 295
    goto :goto_9

    .line 296
    :goto_8
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 297
    throw p0

    .line 298
    :catchall_3
    move-exception p0

    .line 299
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 300
    throw p0

    .line 301
    :cond_6
    :goto_9
    return-void
.end method

.method public checkAppUsageStart(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->updatePsiInfo(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getPsiInfo(I)Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Long;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Long;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    monitor-exit v0

    .line 37
    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public updatePsiInfo(I)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->MEMORY:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 4
    .line 5
    const-string v1, "\n"

    .line 6
    .line 7
    const-string v2, "Exception"

    .line 8
    .line 9
    const-string v3, "ActivityManager"

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    .line 18
    .line 19
    new-instance v7, Ljava/io/FileReader;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->getPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    .line 30
    .line 31
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-static {v0, v5, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_0
    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    move-object v5, v6

    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :catch_1
    move-exception v0

    .line 63
    move-object v5, v6

    .line 64
    goto :goto_2

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto/16 :goto_7

    .line 67
    .line 68
    :catch_2
    move-exception v0

    .line 69
    :goto_2
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string/jumbo v7, "getPsiFile Exception"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 92
    .line 93
    .line 94
    if-eqz v5, :cond_1

    .line 95
    .line 96
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catch_3
    move-exception v0

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    :goto_3
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_2

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_3
    :goto_4
    const/4 v1, 0x1

    .line 143
    iput-boolean v1, v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mIsEmptyFile:Z

    .line 144
    .line 145
    :goto_5
    iget-boolean v1, v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mIsEmptyFile:Z

    .line 146
    .line 147
    if-eqz v1, :cond_4

    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 150
    .line 151
    const-string v1, "ChimeraRecentAppManager"

    .line 152
    .line 153
    const-string v2, "No permission - psi memory"

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-wide/16 v0, 0x0

    .line 162
    .line 163
    move-wide v3, v0

    .line 164
    goto :goto_6

    .line 165
    :cond_4
    iget-wide v1, v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiSomeTotal:J

    .line 166
    .line 167
    iget-wide v3, v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiFullTotal:J

    .line 168
    .line 169
    move-wide v0, v1

    .line 170
    :goto_6
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 171
    .line 172
    const-string v5, "ChimeraRecentAppManager"

    .line 173
    .line 174
    const-string/jumbo v6, "uid:"

    .line 175
    .line 176
    .line 177
    const-string v7, " psiSomeTotal:"

    .line 178
    .line 179
    invoke-static {p1, v6, v0, v1, v7}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    const-string v7, " psiFullTotal:"

    .line 184
    .line 185
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-static {v5, v6}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v6, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiListLock:Ljava/lang/Object;

    .line 202
    .line 203
    monitor-enter v6

    .line 204
    :try_start_6
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    .line 205
    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiFullTotalList:Ljava/util/Map;

    .line 218
    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    monitor-exit v6

    .line 231
    return-void

    .line 232
    :catchall_2
    move-exception p0

    .line 233
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 234
    throw p0

    .line 235
    :goto_7
    if-eqz v5, :cond_5

    .line 236
    .line 237
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 238
    .line 239
    .line 240
    goto :goto_8

    .line 241
    :catch_4
    move-exception p1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-static {p1, v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_5
    :goto_8
    throw p0
.end method
