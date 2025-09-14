.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public final mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

.field public final mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

.field public mTmpPackageFeatureCallbacks:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v1, "PackageFeature"

    .line 5
    .line 6
    const-string v3, "*** Logs ***"

    .line 7
    .line 8
    new-instance v6, Lcom/samsung/android/server/util/CoreLogger;

    .line 9
    .line 10
    const/16 v2, 0xc8

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    move-object v0, v6

    .line 14
    move v4, v5

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/util/CoreLogger;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 16
    .line 17
    .line 18
    iput-object v6, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$ScpmConsumerInfo;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->sControllers:Ljava/util/Map;

    .line 26
    .line 27
    const-class v1, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 28
    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->sControllers:Ljava/util/Map;

    .line 31
    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/samsung/android/server/corescpm/ScpmController;

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    new-instance v3, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 44
    .line 45
    invoke-direct {v3, v0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$ScpmConsumerInfo;)V

    .line 46
    .line 47
    .line 48
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    monitor-exit v1

    .line 57
    iput-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    .line 58
    .line 59
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    .line 72
    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v1

    .line 75
    throw p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    .line 2
    .line 3
    check-cast v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 4
    .line 5
    const-string v1, "SCPMv2 Token="

    .line 6
    .line 7
    iget-object v2, v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->dump(Ljava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string p1, "executeShellCommand"

    .line 12
    .line 13
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->logNotStarted(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    goto/16 :goto_9

    .line 18
    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto/16 :goto_a

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    .line 32
    .line 33
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x1

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v0, :cond_a

    .line 50
    .line 51
    array-length p1, p2

    .line 52
    if-lez p1, :cond_7

    .line 53
    .line 54
    sget-object p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    .line 57
    .line 58
    aget-object v0, p2, v2

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_7

    .line 65
    .line 66
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v0, "hidden_api_policy"

    .line 75
    .line 76
    const/4 v3, -0x1

    .line 77
    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eq p1, v1, :cond_4

    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    if-ne p1, v0, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string p0, "Illegal access."

    .line 88
    .line 89
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_0
    move v2, v1

    .line 93
    goto/16 :goto_9

    .line 94
    .line 95
    :cond_4
    :goto_1
    array-length p1, p2

    .line 96
    if-eq p1, v1, :cond_5

    .line 97
    .line 98
    aget-object p1, p2, v1

    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    :cond_5
    move v2, v1

    .line 107
    :cond_6
    sput-boolean v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->sShowPackageName:Z

    .line 108
    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 110
    .line 111
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->dump(Ljava/io/PrintWriter;)V

    .line 112
    .line 113
    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string p1, "ShowPackageName="

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 133
    .line 134
    invoke-virtual {p1, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->dump(Ljava/io/PrintWriter;)V

    .line 135
    .line 136
    .line 137
    array-length p1, p2

    .line 138
    if-eq p1, v1, :cond_8

    .line 139
    .line 140
    :goto_2
    goto :goto_0

    .line 141
    :cond_8
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 142
    .line 143
    .line 144
    aget-object p1, p2, v2

    .line 145
    .line 146
    sget-object p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 147
    .line 148
    iget-object p2, p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    const-wide/16 v4, 0x3e8

    .line 155
    .line 156
    if-eqz p2, :cond_9

    .line 157
    .line 158
    const-string p1, "Started update."

    .line 159
    .line 160
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->initializeGroups()V

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 169
    .line 170
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    .line 171
    .line 172
    new-instance p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;

    .line 173
    .line 174
    invoke-direct {p2, p0, v3, v4, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;Ljava/lang/String;J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_9
    sget-object p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 182
    .line 183
    iget-object p2, p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_3

    .line 190
    .line 191
    const-string p1, "Started reset."

    .line 192
    .line 193
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    sget-object p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->DIR_PATH:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->deleteCacheFiles(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->initializeGroups()V

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 216
    .line 217
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    .line 218
    .line 219
    new-instance p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;

    .line 220
    .line 221
    invoke-direct {p2, p0, v3, v4, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;Ljava/lang/String;J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_a
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeature;->values()[Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    array-length v4, v0

    .line 234
    move v5, v2

    .line 235
    :goto_3
    if-ge v5, v4, :cond_11

    .line 236
    .line 237
    aget-object v6, v0, v5

    .line 238
    .line 239
    iget-boolean v7, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    .line 240
    .line 241
    if-eqz v7, :cond_10

    .line 242
    .line 243
    iget-object v7, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    .line 244
    .line 245
    if-nez v7, :cond_b

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_b
    iget-object v8, v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->mCommands:[Ljava/lang/String;

    .line 249
    .line 250
    array-length v9, v8

    .line 251
    move v10, v2

    .line 252
    :goto_4
    if-ge v10, v9, :cond_10

    .line 253
    .line 254
    aget-object v11, v8, v10

    .line 255
    .line 256
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    if-nez v11, :cond_c

    .line 261
    .line 262
    add-int/lit8 v10, v10, 0x1

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_c
    invoke-virtual {v7, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_d

    .line 270
    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :cond_d
    aget-object p1, p2, v2

    .line 274
    .line 275
    const-string v0, ":"

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    array-length v0, p2

    .line 282
    if-le v0, v1, :cond_e

    .line 283
    .line 284
    aget-object p2, p2, v1

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_e
    move-object p2, v3

    .line 288
    :goto_5
    invoke-virtual {v7, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->adjustExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 293
    .line 294
    iget-object v7, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 295
    .line 296
    monitor-enter v7

    .line 297
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 298
    .line 299
    iget-object v2, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 300
    .line 301
    iget-object v2, v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 302
    .line 303
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 304
    .line 305
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 306
    .line 307
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    check-cast v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 312
    .line 313
    if-nez v0, :cond_f

    .line 314
    .line 315
    const-string p1, "Group is null."

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :catchall_1
    move-exception p0

    .line 319
    goto :goto_7

    .line 320
    :cond_f
    iget-object v2, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v0, p1, v2, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->executeDebugMode([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    :goto_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 328
    .line 329
    const/4 p2, 0x3

    .line 330
    invoke-virtual {p0, p2, p1, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :goto_7
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 339
    throw p0

    .line 340
    :cond_10
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_11
    :goto_9
    return v2

    .line 344
    :goto_a
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    throw p0
.end method
