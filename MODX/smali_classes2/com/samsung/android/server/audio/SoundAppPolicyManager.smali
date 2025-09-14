.class public final Lcom/samsung/android/server/audio/SoundAppPolicyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;


# instance fields
.field public appList:Ljava/util/List;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mLiveTranslateAllowList:Ljava/util/List;

.field public mLiveTranslateAllowListVersion:I

.field public final mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mToken:Ljava/lang/String;

.field public mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowListVersion:I

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SoundAppPolicyManager;Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 p0, 0x3c

    .line 37
    .line 38
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static setBtGameLatencyList(Ljava/util/Hashtable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "l_bt_game_latency"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .line 52
    const-string v3, "bt_game_latency_deny"

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string/jumbo v1, "|"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string p0, "SoundAppPolicyManager"

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final checkAndUpdateAppList()V
    .locals 9

    .line 1
    const-string v0, "APP_LIST_VERSION"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 4
    .line 5
    const-string v2, "App list is already latest version. Local version = "

    .line 6
    .line 7
    const-string v3, "checkAndUpdateAppList update app list version = "

    .line 8
    .line 9
    const-string v4, "SoundAppPolicyManager"

    .line 10
    .line 11
    const-string v5, "checkAndUpdateAppList"

    .line 12
    .line 13
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getData()V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    iget v7, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 26
    .line 27
    if-ge v6, v7, :cond_1

    .line 28
    .line 29
    iget-object v7, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    .line 30
    .line 31
    if-eqz v7, :cond_1

    .line 32
    .line 33
    check-cast v7, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-nez v7, :cond_1

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetAllowedListTable()V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    .line 62
    .line 63
    check-cast v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/samsung/android/server/audio/Data;

    .line 80
    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v7, "package = "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v7, v3, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v7, " categoryName = "

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v7, v3, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object v6, v3, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v3, v3, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v7, Landroid/content/ContentValues;

    .line 119
    .line 120
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v8, "_package"

    .line 124
    .line 125
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v6, "_category"

    .line 129
    .line 130
    invoke-virtual {v7, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v3, "category_packages"

    .line 134
    .line 135
    invoke-virtual {v1, v3, v7}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    goto :goto_2

    .line 141
    :cond_0
    iget v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 142
    .line 143
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getAppList()Ljava/util/Hashtable;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->setBtGameLatencyList(Ljava/util/Hashtable;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 154
    .line 155
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v3, "checkAndUpdateAppList : Success to update version = "

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, " SCPM version = "

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    .line 208
    :goto_1
    iput-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    .line 209
    .line 210
    return-void

    .line 211
    :goto_2
    iput-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    .line 212
    .line 213
    throw v0
.end method

.method public final checkAndUpdateLiveTranslateList()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 2
    .line 3
    const-string v1, "SoundAppPolicyManager"

    .line 4
    .line 5
    const-string v2, "checkAndUpdateLiveTranslateList enforceSkip=false"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getDataForPolicyCall()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const-string v0, "Skip updating live translate allow list! reason: failed getData"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_1
    iget-object v3, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetCallPolicyTable()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    .line 39
    .line 40
    check-cast v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/samsung/android/server/audio/Data;

    .line 57
    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v6, "package = "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v6, v4, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v6, " categoryName = "

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v6, v4, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object v5, v4, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v4, v4, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putCallPolicyAllowList(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "LIVE_TRANSLATE_ALLOW_LIST_VERSION"

    .line 100
    .line 101
    iget v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowListVersion:I

    .line 102
    .line 103
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 107
    .line 108
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 109
    .line 110
    const-string v3, "checkAndUpdateLiveTranslateList : Success to update"

    .line 111
    .line 112
    invoke-direct {v1, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    .line 119
    .line 120
    return-void

    .line 121
    :goto_1
    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    .line 122
    .line 123
    throw v0
.end method

.method public final getData()V
    .locals 9

    .line 1
    const-string v0, "getData"

    .line 2
    .line 3
    const-string v1, "SoundAppPolicyManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->register()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 17
    .line 18
    const-string v1, "getData : Fail to register, token is null"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_0
    const-string v0, "Audio"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getScpmParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    .line 52
    .line 53
    new-instance v4, Ljava/io/InputStreamReader;

    .line 54
    .line 55
    new-instance v5, Ljava/io/FileInputStream;

    .line 56
    .line 57
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 58
    .line 59
    .line 60
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .line 67
    .line 68
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    move v4, v2

    .line 77
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    const-string v6, ","

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const/4 v6, 0x1

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    new-instance v7, Lcom/samsung/android/server/audio/Data;

    .line 93
    .line 94
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    aget-object v8, v5, v2

    .line 98
    .line 99
    iput-object v8, v7, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    .line 100
    .line 101
    aget-object v5, v5, v6

    .line 102
    .line 103
    iput-object v5, v7, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    aget-object v4, v5, v6

    .line 114
    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    iput v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v5, "getVersion = "

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .line 142
    .line 143
    move v4, v6

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    goto :goto_6

    .line 151
    :catch_1
    move-exception p0

    .line 152
    goto :goto_4

    .line 153
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :catchall_2
    move-exception v1

    .line 158
    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    :goto_3
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 162
    :goto_4
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_9

    .line 169
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :catchall_3
    move-exception v0

    .line 174
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    :goto_7
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 178
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    :goto_9
    return-void
.end method

.method public final getDataForPolicyCall()Z
    .locals 8

    .line 1
    const-string v0, "getData(POLOCY_CALL)"

    .line 2
    .line 3
    const-string v1, "SoundAppPolicyManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->register()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 18
    .line 19
    const-string v1, "getData(POLOCY_CALL) : Fail to register, token is null"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    :try_start_0
    const-string/jumbo v4, "voip-live-translate-allow-list-a7f6"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getScpmParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_1
    return v2

    .line 45
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    if-eqz v4, :cond_5

    .line 50
    .line 51
    :try_start_3
    new-instance v5, Ljava/io/BufferedReader;

    .line 52
    .line 53
    new-instance v6, Ljava/io/FileReader;

    .line 54
    .line 55
    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    .line 60
    .line 61
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_4

    .line 85
    :cond_3
    :try_start_5
    new-instance v6, Lorg/json/JSONObject;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v4, "voip_allow_list"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-ge v2, v6, :cond_4

    .line 106
    .line 107
    new-instance v6, Lcom/samsung/android/server/audio/Data;

    .line 108
    .line 109
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    iput-object v7, v6, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    .line 117
    .line 118
    const-string/jumbo v7, "voip_live_translate_allow"

    .line 119
    .line 120
    .line 121
    iput-object v7, v6, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v7, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_1
    move-exception p0

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    iput v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowListVersion:I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :goto_2
    :try_start_6
    const-string v2, "getDataForPolicyCall: Failed to parse json string."

    .line 137
    .line 138
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    .line 140
    .line 141
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 142
    .line 143
    .line 144
    goto :goto_7

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    goto :goto_a

    .line 147
    :catch_2
    move-exception p0

    .line 148
    goto :goto_6

    .line 149
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :catchall_2
    move-exception v1

    .line 154
    :try_start_9
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_5
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 158
    :goto_6
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 159
    .line 160
    .line 161
    goto :goto_7

    .line 162
    :catch_3
    move-exception p0

    .line 163
    goto :goto_8

    .line 164
    :cond_5
    :goto_7
    :try_start_b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 165
    .line 166
    .line 167
    goto :goto_9

    .line 168
    :goto_8
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 169
    .line 170
    .line 171
    if-eqz v3, :cond_6

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :catch_4
    :cond_6
    :goto_9
    return v0

    .line 175
    :goto_a
    if-eqz v3, :cond_7

    .line 176
    .line 177
    :try_start_d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 178
    .line 179
    .line 180
    :catch_5
    :cond_7
    throw p0
.end method

.method public final getScpmParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 1
    const-string v0, "getScpmParcelFile, code="

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "content://com.samsung.android.scpm.policy/"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x0

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 33
    .line 34
    const-string/jumbo v3, "r"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    new-instance v2, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v3, "token"

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v3, "getLastError"

    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    .line 60
    const-string v4, "android"

    .line 61
    .line 62
    invoke-virtual {p0, p1, v3, v4, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-nez p0, :cond_0

    .line 67
    .line 68
    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 69
    .line 70
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 71
    .line 72
    const-string v0, "getScpmFileDescriptor : bundle is null"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 84
    .line 85
    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string/jumbo v0, "rcode"

    .line 93
    .line 94
    .line 95
    const/4 v4, -0x1

    .line 96
    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, ", msg="

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string/jumbo v0, "rmsg"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-direct {v2, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_1
    return-object v2

    .line 130
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 134
    .line 135
    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 136
    .line 137
    const-string v0, "getScpmParcelFile : Fail to update"

    .line 138
    .line 139
    invoke-direct {p1, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 143
    .line 144
    .line 145
    return-object v1
.end method

.method public final loadDefaultAllowedPackageList(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    aget-object v2, p1, v1

    .line 14
    .line 15
    iget-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v4, Landroid/content/ContentValues;

    .line 21
    .line 22
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v5, "_package"

    .line 26
    .line 27
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "_category"

    .line 31
    .line 32
    invoke-virtual {v4, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "category_packages"

    .line 36
    .line 37
    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public final register()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "packageName"

    .line 13
    .line 14
    .line 15
    const-string v3, "android"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "appId"

    .line 21
    .line 22
    const-string v4, "ifdzefg1lz"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v2, "version"

    .line 28
    .line 29
    .line 30
    sget-object v4, Lcom/samsung/android/server/audio/ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v2, "receiverPackageName"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/samsung/android/server/audio/ScpmApiContract;->URI:Landroid/net/Uri;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    .line 45
    const-string/jumbo v5, "register"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v2, v5, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 56
    .line 57
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 58
    .line 59
    const-string/jumbo v1, "register : Fail to register, bundle is null"

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 66
    .line 67
    .line 68
    return v2

    .line 69
    :cond_1
    const-string/jumbo v3, "token"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iput-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 77
    .line 78
    sget-object v3, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 79
    .line 80
    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 81
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v6, "Register, result="

    .line 85
    .line 86
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v6, "result"

    .line 90
    .line 91
    .line 92
    const/4 v7, 0x2

    .line 93
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v6, ", code="

    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string/jumbo v6, "rcode"

    .line 106
    .line 107
    .line 108
    const/4 v7, -0x1

    .line 109
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v6, ", msg="

    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string/jumbo v6, "rmsg"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {v4, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz p0, :cond_2

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    move v1, v2

    .line 147
    :goto_0
    return v1
.end method
