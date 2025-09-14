.class public final Lcom/android/server/pm/SpegService;
.super Lcom/android/server/ProfileService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FORCE_SPEG:Z

.field public static final SPEG_DISABLE_LAUNCH:Z


# instance fields
.field public mBlockContinualSpeg:Z

.field public mBlockSpegInstallation:Z

.field public final mContext:Landroid/content/Context;

.field public mIsSpegInOpeartion:Z

.field public mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPrevInstalledPkg:Ljava/lang/String;

.field public volatile mService:Landroid/os/ISpegHelperService;

.field public mSetupWizardFinished:Z

.field public mSpegBlockStartTime:J

.field public mSpegDisplayId:I

.field public mSpegFirstLaunchTime:J

.field public mSpegLaunchesCount:I

.field public mSpegPackage:Ljava/lang/String;

.field public mSpegPrevLaunchTime:J

.field public mSpegUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com.samsung.speg.disable_launch"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/pm/SpegService;->SPEG_DISABLE_LAUNCH:Z

    .line 9
    .line 10
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "com.samsung.speg.force"

    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string/jumbo v2, "true"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_0
    sput-boolean v1, Lcom/android/server/pm/SpegService;->FORCE_SPEG:Z

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "SpegService"

    .line 2
    .line 3
    const-string/jumbo v1, "speg_helper"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ProfileService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/pm/SpegService;->mSpegPackage:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/pm/SpegService;->mSpegDisplayId:I

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mBlockSpegInstallation:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mSetupWizardFinished:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    .line 25
    .line 26
    iput v1, p0, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    .line 27
    .line 28
    const-wide/16 v0, -0x1

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/android/server/pm/SpegService;->mSpegFirstLaunchTime:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/android/server/pm/SpegService;->mSpegPrevLaunchTime:J

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const-string p1, "/system/etc/speg-package-blocklist.conf"

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/ProfileService;->initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/server/ProfileService;->packageBlockList:Ljava/util/Set;

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/SpegService;->cleanupMarkerFiles()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "Unexpected failure in cleanup marker files"

    .line 54
    .line 55
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public static waitForProcessDeath(I)V
    .locals 5

    .line 1
    if-gtz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const/16 v2, 0x1f4

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    add-long/2addr v2, v0

    .line 12
    :goto_0
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-gez v4, :cond_1

    .line 15
    .line 16
    sub-long v0, v2, v0

    .line 17
    .line 18
    long-to-int v0, v0

    .line 19
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/Process;->waitForProcessDeath(II)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    :cond_1
    const-string v0, "Timeout occurred during waitForProcessDeath "

    .line 29
    .line 30
    const-string v1, "SPEG"

    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final checkAppId(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x2710

    .line 2
    .line 3
    if-lt p1, p0, :cond_1

    .line 4
    .line 5
    const/16 p0, 0x4e1f

    .line 6
    .line 7
    if-le p1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final cleanupMarkerFiles()V
    .locals 14

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/misc/speg"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_b

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string p0, "Failed to get list of files in /data/misc/speg"

    .line 31
    .line 32
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    array-length v1, v0

    .line 37
    const/4 v3, 0x0

    .line 38
    move v4, v3

    .line 39
    :goto_0
    if-ge v4, v1, :cond_a

    .line 40
    .line 41
    aget-object v5, v0, v4

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_9

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string/jumbo v7, "speg."

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_2

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/4 v7, 0x5

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const-string v7, "Old speg marker file exists for uid "

    .line 74
    .line 75
    invoke-static {v7, v6, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    .line 83
    .line 84
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 89
    .line 90
    if-nez v7, :cond_3

    .line 91
    .line 92
    const-string v6, "Could not get package manager"

    .line 93
    .line 94
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_3
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    if-nez v8, :cond_4

    .line 108
    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v8, "Could not find app with uid "

    .line 112
    .line 113
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    invoke-virtual {v7, v10, v9}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v11, "base.speg"

    .line 154
    .line 155
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_5

    .line 170
    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-static {v6}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    goto :goto_2

    .line 195
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    .line 196
    .line 197
    array-length v10, v9

    .line 198
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .line 200
    .line 201
    array-length v10, v9

    .line 202
    move v11, v3

    .line 203
    :goto_1
    if-ge v11, v10, :cond_7

    .line 204
    .line 205
    aget-object v12, v9, v11

    .line 206
    .line 207
    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    if-eqz v12, :cond_6

    .line 212
    .line 213
    new-instance v13, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_7
    move-object v6, v8

    .line 239
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-eqz v7, :cond_8

    .line 248
    .line 249
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    check-cast v7, Ljava/lang/String;

    .line 254
    .line 255
    new-instance v8, Ljava/io/File;

    .line 256
    .line 257
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v8}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/server/pm/SpegService;->deleteMarkerFile(Ljava/io/File;)V

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v7, "Failed to convert uid "

    .line 271
    .line 272
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v6, " to int"

    .line 279
    .line 280
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_a
    return-void

    .line 295
    :cond_b
    :goto_5
    const-string p0, "Failed to read /data/misc/speg"

    .line 296
    .line 297
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    return-void
.end method

.method public final createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ProfileService;->checkUserAndService(II)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/SpegService;->mService:Landroid/os/ISpegHelperService;

    .line 10
    .line 11
    invoke-interface {v1, p2, p3, p1}, Landroid/os/ISpegHelperService;->createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :catch_0
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "Trying to use disabled speg_helper"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_1
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string p1, "Failed to create file: "

    .line 30
    .line 31
    invoke-static {p1, p2, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return v0
.end method

.method public final deleteMarkerFile(Ljava/io/File;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Failed to delete marker file: "

    .line 4
    .line 5
    const-string v1, "Marker file "

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " does not exist"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "Exception during "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " deletion"

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_2
    return-void
.end method

.method public final getBinderOfService()Landroid/os/IBinder;
    .locals 0

    .line 1
    const-string/jumbo p0, "speg_helper"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getPidOf(ILjava/lang/String;)I
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/sys/fs/cgroup/uid_"

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, -0x1

    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    array-length v0, p1

    .line 30
    const/4 v2, 0x0

    .line 31
    move v3, v2

    .line 32
    :goto_0
    if-ge v3, v0, :cond_4

    .line 33
    .line 34
    aget-object v4, p1, v3

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string/jumbo v6, "pid_"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_0

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/4 v5, 0x4

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v5, "/proc/"

    .line 67
    .line 68
    const-string v6, "/cmdline"

    .line 69
    .line 70
    invoke-static {v5, v4, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iget-object v7, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v6, :cond_2

    .line 81
    .line 82
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 83
    .line 84
    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Ljava/io/BufferedReader;

    .line 88
    .line 89
    new-instance v8, Ljava/io/InputStreamReader;

    .line 90
    .line 91
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 92
    .line 93
    invoke-direct {v8, v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-eqz v6, :cond_1

    .line 104
    .line 105
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-eq v8, v1, :cond_1

    .line 110
    .line 111
    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :catch_0
    move-exception v5

    .line 120
    goto :goto_3

    .line 121
    :catchall_0
    move-exception v6

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catchall_1
    move-exception v5

    .line 132
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v8, "Failed to read process name for pid "

    .line 139
    .line 140
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    :cond_2
    :goto_4
    const/4 v6, 0x0

    .line 154
    :goto_5
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_3

    .line 159
    .line 160
    :try_start_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    .line 164
    return p0

    .line 165
    :catch_1
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string p2, "Failed to convert pid "

    .line 169
    .line 170
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p2, " to int"

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v7, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_3
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_4
    :goto_7
    return v1
.end method

.method public final init(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    return-void
.end method

.method public final initializeInterfaceOfService()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/pm/SpegService;->mService:Landroid/os/ISpegHelperService;

    .line 3
    .line 4
    return-void
.end method

.method public final isServiceRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SpegService;->mService:Landroid/os/ISpegHelperService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v0, "speg_helper is not running"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final isSpegInOpeartion(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/SpegService;->mSpegPackage:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final setInterfaceOfService(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/os/ISpegHelperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISpegHelperService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/server/pm/SpegService;->mService:Landroid/os/ISpegHelperService;

    .line 6
    .line 7
    return-void
.end method

.method public final setSpegInOpeartion(IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/android/server/pm/SpegService;->mSpegPackage:Ljava/lang/String;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/pm/SpegService;->mSpegDisplayId:I

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    .line 13
    .line 14
    return-void
.end method

.method public final spegClearPackage(ILjava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, ", error: "

    .line 2
    .line 3
    const-string v1, "SPEG"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 7
    .line 8
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 13
    .line 14
    invoke-virtual {v3, v2, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeRecentTasksByPackageName(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v3

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v5, "Can\'t remove recent task for "

    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3, p2}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p0, v3, p2, v2}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "Clear package "

    .line 74
    .line 75
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v3, " is not allowed"

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :goto_2
    if-nez v2, :cond_2

    .line 94
    .line 95
    const-string p0, "Can\'t clear app data for "

    .line 96
    .line 97
    invoke-static {p0, p2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    const-class p0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 101
    .line 102
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 107
    .line 108
    :try_start_1
    check-cast p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->removeUriPermissionsForPackage(ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catch_1
    move-exception p0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, "Can\'t restore default permissions for "

    .line 119
    .line 120
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :goto_3
    const-class p0, Lcom/android/server/job/JobSchedulerInternal;

    .line 140
    .line 141
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    move-object v2, p0

    .line 146
    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    .line 147
    .line 148
    :try_start_2
    const-string v7, "clear data"

    .line 149
    .line 150
    const/16 v5, 0xe

    .line 151
    .line 152
    const/16 v6, 0x8

    .line 153
    .line 154
    const/4 v4, 0x1

    .line 155
    move v3, p1

    .line 156
    invoke-interface/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerInternal;->cancelJobsForUid(IZIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :catch_2
    move-exception p0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v3, "Can\'t clear scheduled jobs for "

    .line 164
    .line 165
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    :goto_4
    const-class p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 185
    .line 186
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 191
    .line 192
    :try_start_3
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 193
    .line 194
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 195
    .line 196
    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 197
    :try_start_4
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 198
    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    const/16 v3, 0x3e8

    .line 203
    .line 204
    if-ne p1, v3, :cond_3

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_3
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    .line 208
    .line 209
    const/4 v4, 0x0

    .line 210
    invoke-direct {v3, p1, v4}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(II)V

    .line 211
    .line 212
    .line 213
    const/4 p1, 0x3

    .line 214
    invoke-virtual {p0, p1, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 215
    .line 216
    .line 217
    :goto_5
    monitor-exit v2

    .line 218
    goto :goto_6

    .line 219
    :catchall_0
    move-exception p0

    .line 220
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 222
    :catch_3
    move-exception p0

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v2, "Can\'t clear pending alarms for "

    .line 226
    .line 227
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    :goto_6
    return-void
.end method

.method public final storePrimaryProf(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ProfileService;->checkUserAndService(II)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/SpegService;->mService:Landroid/os/ISpegHelperService;

    .line 10
    .line 11
    invoke-interface {v1, p2, p3, p1}, Landroid/os/ISpegHelperService;->storePrimaryProf(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :catch_0
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "Trying to use disabled speg"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_1
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string p1, "Failed to prepare profile"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return v0
.end method
