.class public final Lcom/android/server/usage/StorageStatsService$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mPreviousBytes:J

.field public final mStats:Landroid/os/StatFs;

.field public final mTotalBytes:J

.field public final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/StatFs;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    .line 32
    .line 33
    return-void
.end method

.method public static recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/storage/CacheQuotaStrategy$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    const-string v2, "CacheQuotaStrategy"

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "could not access the cache quota service: no package!"

    .line 29
    .line 30
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    const-string v3, "android.app.usage.CacheQuotaService"

    .line 35
    .line 36
    invoke-static {v3, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/16 v4, 0x84

    .line 47
    .line 48
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    .line 60
    .line 61
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    :goto_1
    const-string v0, "No valid components found."

    .line 70
    .line 71
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_2
    if-eqz v1, :cond_4

    .line 75
    .line 76
    new-instance v0, Landroid/content/Intent;

    .line 77
    .line 78
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 90
    .line 91
    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 92
    .line 93
    .line 94
    :cond_4
    return-void
.end method


# virtual methods
.method public final getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;
    .locals 4

    .line 1
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/storage/CacheQuotaStrategy;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-direct {v1, v2, v0, v3, p0}, Lcom/android/server/storage/CacheQuotaStrategy;-><init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    const-wide/16 v0, 0x7530

    .line 19
    .line 20
    const/16 v2, 0x64

    .line 21
    .line 22
    const-wide/32 v3, 0x2255100

    .line 23
    .line 24
    .line 25
    const/16 v5, 0x66

    .line 26
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 48
    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-wide/16 v6, -0x1

    .line 57
    .line 58
    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 59
    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->setupQuotasFromFile()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception v6

    .line 68
    goto :goto_0

    .line 69
    :catch_1
    move-exception v6

    .line 70
    goto :goto_1

    .line 71
    :goto_0
    const-string v7, "StorageStatsService"

    .line 72
    .line 73
    const-string v8, "Cache quota XML file is malformed?"

    .line 74
    .line 75
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    const-string v7, "StorageStatsService"

    .line 80
    .line 81
    const-string v8, "An error occurred while reading the cache quota file."

    .line 82
    .line 83
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    :goto_2
    iget-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 87
    .line 88
    const-wide/16 v8, 0x0

    .line 89
    .line 90
    cmp-long v6, v6, v8

    .line 91
    .line 92
    if-gez v6, :cond_1

    .line 93
    .line 94
    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 95
    .line 96
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v6, v7}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 114
    .line 115
    invoke-static {p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 126
    .line 127
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p1, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 143
    .line 144
    .line 145
    move-result-wide v5

    .line 146
    sub-long/2addr v3, v5

    .line 147
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 148
    .line 149
    .line 150
    move-result-wide v3

    .line 151
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    .line 154
    .line 155
    monitor-enter p1

    .line 156
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 157
    .line 158
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 159
    .line 160
    .line 161
    move-result-wide v5

    .line 162
    iget-wide v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    .line 163
    .line 164
    iget-object v9, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 165
    .line 166
    iget v9, v9, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    .line 167
    .line 168
    int-to-long v9, v9

    .line 169
    mul-long/2addr v9, v7

    .line 170
    const-wide/16 v11, 0x64

    .line 171
    .line 172
    div-long/2addr v9, v11

    .line 173
    cmp-long v5, v5, v9

    .line 174
    .line 175
    if-lez v5, :cond_2

    .line 176
    .line 177
    const-wide/16 v5, 0x5

    .line 178
    .line 179
    mul-long/2addr v7, v5

    .line 180
    div-long/2addr v7, v11

    .line 181
    goto :goto_3

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    goto :goto_5

    .line 184
    :cond_2
    const-wide/16 v5, 0x2

    .line 185
    .line 186
    mul-long/2addr v7, v5

    .line 187
    div-long/2addr v7, v11

    .line 188
    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    cmp-long p1, v3, v7

    .line 190
    .line 191
    if-lez p1, :cond_3

    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 196
    .line 197
    .line 198
    move-result-wide v3

    .line 199
    iput-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 209
    .line 210
    iget-object p1, p1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string v3, "content://com.android.externalstorage.documents/"

    .line 217
    .line 218
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    const/4 v4, 0x0

    .line 223
    const/4 v5, 0x0

    .line 224
    invoke-virtual {p1, v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 225
    .line 226
    .line 227
    :cond_3
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    .line 229
    .line 230
    :goto_4
    return-void

    .line 231
    :goto_5
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    throw p0

    .line 233
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
