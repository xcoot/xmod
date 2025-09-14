.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z

.field public static final appset:Ljava/util/Set;

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field public static final pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;


# instance fields
.field public dataEntry:Ljava/util/List;

.field public mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public registeredDataRecipients:Ljava/util/List;

.field public startTimer:J

.field public syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 4
    .line 5
    const-string/jumbo v0, "package"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 13
    .line 14
    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    .line 26
    .line 27
    return-void
.end method

.method public static checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "which "

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/io/BufferedReader;

    .line 33
    .line 34
    new-instance v2, Ljava/io/InputStreamReader;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string/jumbo v0, "unable to find the packages for uid: "

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackagesForUid(I)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, " for processName: "

    .line 27
    .line 28
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    array-length v0, v2

    .line 46
    const/4 v3, 0x1

    .line 47
    if-ne v0, v3, :cond_8

    .line 48
    .line 49
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    .line 50
    .line 51
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 67
    .line 68
    iget v5, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    .line 69
    .line 70
    if-ne v5, p0, :cond_2

    .line 71
    .line 72
    iget-object v3, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    .line 73
    .line 74
    monitor-exit v0

    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    move-object v3, v1

    .line 81
    :goto_0
    if-eqz v3, :cond_4

    .line 82
    .line 83
    return-object v3

    .line 84
    :cond_4
    const/4 v0, 0x0

    .line 85
    :try_start_2
    aget-object v5, v2, v0

    .line 86
    .line 87
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 88
    .line 89
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const-wide/16 v3, 0x0

    .line 94
    .line 95
    invoke-virtual {v0, v5, v3, v4, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v2, :cond_8

    .line 104
    .line 105
    new-instance v2, Ljava/io/File;

    .line 106
    .line 107
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_5

    .line 117
    .line 118
    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string/jumbo v3, "unable to find the file location for the process:"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string/jumbo p1, "for package "

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string/jumbo p1, "for uid "

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    return-object v1

    .line 160
    :cond_5
    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_8

    .line 165
    .line 166
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 167
    .line 168
    if-eqz v2, :cond_7

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    const/16 v3, 0xf

    .line 175
    .line 176
    if-le v2, v3, :cond_6

    .line 177
    .line 178
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 179
    .line 180
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    sub-int/2addr v0, v3

    .line 187
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    move-object v3, v2

    .line 196
    move v4, p0

    .line 197
    move-object v9, p1

    .line 198
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_6
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 203
    .line 204
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    move-object v3, v2

    .line 211
    move v4, p0

    .line 212
    move-object v6, v8

    .line 213
    move-object v9, p1

    .line 214
    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :goto_1
    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    .line 219
    .line 220
    :cond_7
    return-object p1

    .line 221
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 223
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    .line 225
    .line 226
    :cond_8
    return-object v1
.end method

.method public static clearHashCacheEntire()V
    .locals 6

    .line 1
    const-string v0, "DataDelivery hash cache entire deletion : cache size: "

    .line 2
    .line 3
    const-string/jumbo v1, "clearHashCacheEntire Called : cache size: "

    .line 4
    .line 5
    .line 6
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 14
    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 38
    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    monitor-exit v2

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v0
.end method

.method public static compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    if-eqz p3, :cond_4

    .line 7
    .line 8
    if-eqz p4, :cond_4

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const-string/jumbo v2, "for uid "

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "for package "

    .line 18
    .line 19
    .line 20
    const-string v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 21
    .line 22
    const/16 v5, 0xf

    .line 23
    .line 24
    const-string/jumbo v6, "unable to find the file location for the process:"

    .line 25
    .line 26
    .line 27
    if-le v1, v5, :cond_2

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sub-int/2addr v1, v5

    .line 34
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_0
    :goto_0
    iget-object v1, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    new-instance v1, Ljava/io/File;

    .line 59
    .line 60
    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    if-nez p4, :cond_1

    .line 70
    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_1
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    new-instance p4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 106
    .line 107
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    sub-int/2addr v1, v5

    .line 112
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    move-object v1, p4

    .line 121
    move v2, p0

    .line 122
    move-object v3, p2

    .line 123
    move-object v4, p3

    .line 124
    move-object v7, p1

    .line 125
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V

    .line 129
    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    iget-object v1, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v1, :cond_4

    .line 141
    .line 142
    new-instance v1, Ljava/io/File;

    .line 143
    .line 144
    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 145
    .line 146
    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 150
    .line 151
    .line 152
    move-result p4

    .line 153
    if-nez p4, :cond_3

    .line 154
    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    return-object v0

    .line 183
    :cond_3
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_4

    .line 188
    .line 189
    new-instance p4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 190
    .line 191
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    move-object v1, p4

    .line 196
    move v2, p0

    .line 197
    move-object v3, p2

    .line 198
    move-object v4, p3

    .line 199
    move-object v6, p3

    .line 200
    move-object v7, p1

    .line 201
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .line 206
    .line 207
    return-object p1

    .line 208
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .line 210
    .line 211
    :cond_4
    return-object v0
.end method

.method public static getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "NetworkAnalytics:DataDeliveryHelper"

    .line 4
    .line 5
    const-string/jumbo v3, "iface"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v4, "hostname"

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 19
    .line 20
    const-string/jumbo v1, "getAugmentedData: Helper or data is null."

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v5

    .line 27
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_38

    .line 32
    .line 33
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_37

    .line 47
    .line 48
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    const-string/jumbo v8, "brecv"

    .line 55
    .line 56
    .line 57
    const-string/jumbo v9, "end"

    .line 58
    .line 59
    .line 60
    const-string/jumbo v10, "start"

    .line 61
    .line 62
    .line 63
    const-string/jumbo v11, "bsent"

    .line 64
    .line 65
    .line 66
    const-string/jumbo v12, "protocol"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v13, "sport"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v14, "dst"

    .line 73
    .line 74
    .line 75
    const-string/jumbo v15, "src"

    .line 76
    .line 77
    .line 78
    const-string/jumbo v5, "recordtype"

    .line 79
    .line 80
    .line 81
    move-object/from16 p1, v7

    .line 82
    .line 83
    const-string/jumbo v7, "parentprochash"

    .line 84
    .line 85
    .line 86
    move-object/from16 v16, v6

    .line 87
    .line 88
    const-string/jumbo v6, "prochash"

    .line 89
    .line 90
    .line 91
    move-object/from16 v17, v2

    .line 92
    .line 93
    const-string/jumbo v2, "procname"

    .line 94
    .line 95
    .line 96
    move-object/from16 v18, v3

    .line 97
    .line 98
    const-string/jumbo v3, "dnsuid"

    .line 99
    .line 100
    .line 101
    move-object/from16 v19, v3

    .line 102
    .line 103
    const-string/jumbo v3, "uid"

    .line 104
    .line 105
    .line 106
    move-object/from16 v20, v4

    .line 107
    .line 108
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .line 110
    :try_start_1
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    .line 115
    :try_start_2
    iget v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flags:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    .line 117
    move-object/from16 v21, v8

    .line 118
    .line 119
    :try_start_3
    new-instance v8, Lorg/json/JSONObject;

    .line 120
    .line 121
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 122
    .line 123
    .line 124
    move-object/from16 v22, v9

    .line 125
    .line 126
    const/4 v9, 0x0

    .line 127
    :try_start_4
    invoke-virtual {v4, v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v23
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    .line 131
    if-eqz v23, :cond_5

    .line 132
    .line 133
    :try_start_5
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v23
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 145
    move-object/from16 v24, v10

    .line 146
    .line 147
    iget v10, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    .line 148
    .line 149
    if-nez v23, :cond_4

    .line 150
    .line 151
    :try_start_6
    invoke-static {v4, v10, v9}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->blockDnsFlow(Lorg/json/JSONObject;II)I

    .line 152
    .line 153
    .line 154
    move-result v1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 155
    move-object/from16 v23, v11

    .line 156
    .line 157
    if-lez v1, :cond_3

    .line 158
    .line 159
    const/4 v11, 0x3

    .line 160
    if-ne v1, v11, :cond_2

    .line 161
    .line 162
    :catch_0
    :goto_1
    move-object/from16 v4, v17

    .line 163
    .line 164
    move-object/from16 v2, v18

    .line 165
    .line 166
    move-object/from16 v1, v20

    .line 167
    .line 168
    const/4 v0, 0x0

    .line 169
    const/4 v9, 0x0

    .line 170
    goto/16 :goto_22

    .line 171
    .line 172
    :cond_2
    if-eq v9, v10, :cond_3

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    :goto_2
    const/4 v1, 0x0

    .line 176
    goto :goto_6

    .line 177
    :goto_3
    move-object/from16 v2, v18

    .line 178
    .line 179
    move-object/from16 v1, v20

    .line 180
    .line 181
    :goto_4
    const/4 v9, 0x0

    .line 182
    goto/16 :goto_1f

    .line 183
    .line 184
    :goto_5
    move-object/from16 v4, v17

    .line 185
    .line 186
    move-object/from16 v2, v18

    .line 187
    .line 188
    move-object/from16 v1, v20

    .line 189
    .line 190
    const/4 v9, 0x0

    .line 191
    goto/16 :goto_21

    .line 192
    .line 193
    :cond_4
    move-object/from16 v23, v11

    .line 194
    .line 195
    if-eq v9, v10, :cond_3

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :catch_1
    move-exception v0

    .line 199
    goto :goto_3

    .line 200
    :catch_2
    move-exception v0

    .line 201
    goto :goto_5

    .line 202
    :cond_5
    move-object/from16 v24, v10

    .line 203
    .line 204
    move-object/from16 v23, v11

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :goto_6
    :try_start_7
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    const v5, 0x8000

    .line 215
    .line 216
    .line 217
    and-int/2addr v5, v0

    .line 218
    if-nez v5, :cond_6

    .line 219
    .line 220
    if-nez v0, :cond_7

    .line 221
    .line 222
    :cond_6
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    .line 226
    :try_start_8
    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 227
    .line 228
    .line 229
    :cond_7
    and-int/lit16 v1, v0, 0x100

    .line 230
    .line 231
    const-string/jumbo v5, "pid"

    .line 232
    .line 233
    .line 234
    if-nez v1, :cond_8

    .line 235
    .line 236
    if-nez v0, :cond_9

    .line 237
    .line 238
    :cond_8
    const/4 v1, 0x0

    .line 239
    :try_start_9
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v9
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11

    .line 243
    :try_start_a
    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 244
    .line 245
    .line 246
    :cond_9
    and-int/lit16 v1, v0, 0x1000

    .line 247
    .line 248
    const-string/jumbo v9, "puid"

    .line 249
    .line 250
    .line 251
    if-nez v1, :cond_a

    .line 252
    .line 253
    if-nez v0, :cond_b

    .line 254
    .line 255
    :cond_a
    const/4 v1, 0x0

    .line 256
    :try_start_b
    invoke-virtual {v4, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v10
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    .line 260
    :try_start_c
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 261
    .line 262
    .line 263
    :cond_b
    and-int/lit16 v1, v0, 0x2000

    .line 264
    .line 265
    if-nez v1, :cond_c

    .line 266
    .line 267
    if-nez v0, :cond_d

    .line 268
    .line 269
    :cond_c
    const/4 v1, 0x0

    .line 270
    :try_start_d
    invoke-virtual {v4, v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v10
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    .line 274
    :try_start_e
    invoke-virtual {v8, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 275
    .line 276
    .line 277
    :cond_d
    and-int/lit8 v1, v0, 0x8

    .line 278
    .line 279
    if-nez v1, :cond_e

    .line 280
    .line 281
    if-nez v0, :cond_f

    .line 282
    .line 283
    :cond_e
    const/4 v1, 0x0

    .line 284
    :try_start_f
    invoke-virtual {v4, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v10
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    .line 288
    :try_start_10
    invoke-virtual {v8, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 289
    .line 290
    .line 291
    :cond_f
    and-int/lit16 v1, v0, 0x4000

    .line 292
    .line 293
    if-nez v1, :cond_10

    .line 294
    .line 295
    if-nez v0, :cond_11

    .line 296
    .line 297
    :cond_10
    const/4 v1, 0x0

    .line 298
    :try_start_11
    invoke-virtual {v4, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v10
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 302
    :try_start_12
    invoke-virtual {v8, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 303
    .line 304
    .line 305
    :cond_11
    and-int/lit8 v1, v0, 0x10

    .line 306
    .line 307
    const-string/jumbo v10, "dport"

    .line 308
    .line 309
    .line 310
    if-nez v1, :cond_12

    .line 311
    .line 312
    if-nez v0, :cond_13

    .line 313
    .line 314
    :cond_12
    const/4 v1, 0x0

    .line 315
    :try_start_13
    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v11
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_12
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    .line 319
    :try_start_14
    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_10
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 320
    .line 321
    .line 322
    :cond_13
    and-int/lit16 v1, v0, 0x800

    .line 323
    .line 324
    if-nez v1, :cond_14

    .line 325
    .line 326
    if-nez v0, :cond_15

    .line 327
    .line 328
    :cond_14
    const/4 v1, 0x0

    .line 329
    goto :goto_7

    .line 330
    :cond_15
    const/4 v1, 0x0

    .line 331
    goto :goto_8

    .line 332
    :goto_7
    :try_start_15
    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    invoke-virtual {v8, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    .line 337
    .line 338
    .line 339
    :goto_8
    :try_start_16
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v11
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_13

    .line 343
    if-eqz v11, :cond_16

    .line 344
    .line 345
    :try_start_17
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_17

    .line 350
    .line 351
    :catch_3
    :cond_16
    move-object/from16 v2, v18

    .line 352
    .line 353
    move-object/from16 v1, v20

    .line 354
    .line 355
    const/4 v9, 0x0

    .line 356
    goto/16 :goto_1d

    .line 357
    .line 358
    :cond_17
    and-int/lit16 v1, v0, 0x400

    .line 359
    .line 360
    if-nez v1, :cond_18

    .line 361
    .line 362
    if-nez v0, :cond_19

    .line 363
    .line 364
    :cond_18
    invoke-virtual {v8, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    .line 365
    .line 366
    .line 367
    :cond_19
    and-int/lit16 v1, v0, 0x200

    .line 368
    .line 369
    const-string v11, "0"

    .line 370
    .line 371
    if-nez v1, :cond_1a

    .line 372
    .line 373
    if-nez v0, :cond_1b

    .line 374
    .line 375
    :cond_1a
    const/4 v1, 0x0

    .line 376
    goto :goto_a

    .line 377
    :cond_1b
    :goto_9
    const/4 v1, 0x0

    .line 378
    goto :goto_d

    .line 379
    :goto_a
    :try_start_18
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    .line 391
    if-eqz v3, :cond_1b

    .line 392
    .line 393
    if-eqz v2, :cond_1b

    .line 394
    .line 395
    :try_start_19
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-nez v1, :cond_1c

    .line 400
    .line 401
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_1d

    .line 414
    .line 415
    :cond_1c
    const/4 v1, 0x0

    .line 416
    goto :goto_b

    .line 417
    :cond_1d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    invoke-static {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v8, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :catch_4
    const/4 v1, 0x0

    .line 430
    goto :goto_c

    .line 431
    :goto_b
    :try_start_1a
    invoke-virtual {v8, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    .line 432
    .line 433
    .line 434
    goto :goto_d

    .line 435
    :catch_5
    :goto_c
    :try_start_1b
    invoke-virtual {v8, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_11

    .line 436
    .line 437
    .line 438
    :goto_d
    and-int/lit16 v2, v0, 0x80

    .line 439
    .line 440
    const-string/jumbo v3, "parentprocname"

    .line 441
    .line 442
    .line 443
    if-nez v2, :cond_1e

    .line 444
    .line 445
    if-nez v0, :cond_1f

    .line 446
    .line 447
    :cond_1e
    :try_start_1c
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11

    .line 451
    :try_start_1d
    invoke-virtual {v8, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    .line 452
    .line 453
    .line 454
    :cond_1f
    const/high16 v1, 0x40000

    .line 455
    .line 456
    and-int/2addr v1, v0

    .line 457
    const-string/jumbo v2, "ppid"

    .line 458
    .line 459
    .line 460
    if-nez v1, :cond_20

    .line 461
    .line 462
    if-nez v0, :cond_21

    .line 463
    .line 464
    :cond_20
    const/4 v1, 0x0

    .line 465
    goto :goto_f

    .line 466
    :cond_21
    :goto_e
    const/4 v1, 0x0

    .line 467
    goto :goto_12

    .line 468
    :goto_f
    :try_start_1e
    invoke-virtual {v4, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v6
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_7

    .line 480
    if-eqz v5, :cond_21

    .line 481
    .line 482
    if-eqz v3, :cond_21

    .line 483
    .line 484
    :try_start_1f
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_22

    .line 489
    .line 490
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-eqz v1, :cond_23

    .line 503
    .line 504
    :cond_22
    const/4 v1, 0x0

    .line 505
    goto :goto_10

    .line 506
    :cond_23
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    invoke-static {v1, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v8, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6

    .line 515
    .line 516
    .line 517
    goto :goto_e

    .line 518
    :catch_6
    const/4 v1, 0x0

    .line 519
    goto :goto_11

    .line 520
    :goto_10
    :try_start_20
    invoke-virtual {v8, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7

    .line 521
    .line 522
    .line 523
    goto :goto_12

    .line 524
    :catch_7
    :goto_11
    :try_start_21
    invoke-virtual {v8, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    .line 526
    .line 527
    :goto_12
    and-int/lit8 v3, v0, 0x2

    .line 528
    .line 529
    if-nez v3, :cond_24

    .line 530
    .line 531
    if-nez v0, :cond_25

    .line 532
    .line 533
    :cond_24
    move-object/from16 v3, v23

    .line 534
    .line 535
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v5
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_12
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11

    .line 539
    :try_start_22
    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_10
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1

    .line 540
    .line 541
    .line 542
    :cond_25
    and-int/lit8 v1, v0, 0x40

    .line 543
    .line 544
    if-nez v1, :cond_26

    .line 545
    .line 546
    if-nez v0, :cond_27

    .line 547
    .line 548
    :cond_26
    move-object/from16 v3, v24

    .line 549
    .line 550
    const/4 v1, 0x0

    .line 551
    :try_start_23
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v5
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_12
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_11

    .line 555
    :try_start_24
    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_10
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1

    .line 556
    .line 557
    .line 558
    :cond_27
    and-int/lit8 v1, v0, 0x4

    .line 559
    .line 560
    if-nez v1, :cond_28

    .line 561
    .line 562
    if-nez v0, :cond_29

    .line 563
    .line 564
    :cond_28
    move-object/from16 v3, v22

    .line 565
    .line 566
    const/4 v1, 0x0

    .line 567
    :try_start_25
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v5
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_12
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_11

    .line 571
    :try_start_26
    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_10
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1

    .line 572
    .line 573
    .line 574
    :cond_29
    and-int/lit8 v1, v0, 0x1

    .line 575
    .line 576
    if-nez v1, :cond_2a

    .line 577
    .line 578
    if-nez v0, :cond_2b

    .line 579
    .line 580
    :cond_2a
    move-object/from16 v3, v21

    .line 581
    .line 582
    const/4 v1, 0x0

    .line 583
    :try_start_27
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v5
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_12
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_11

    .line 587
    :try_start_28
    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_10
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1

    .line 588
    .line 589
    .line 590
    :cond_2b
    and-int/lit8 v1, v0, 0x20

    .line 591
    .line 592
    if-nez v1, :cond_2c

    .line 593
    .line 594
    if-nez v0, :cond_2d

    .line 595
    .line 596
    :cond_2c
    move-object/from16 v1, v20

    .line 597
    .line 598
    const/4 v3, 0x0

    .line 599
    goto :goto_13

    .line 600
    :cond_2d
    move-object/from16 v1, v20

    .line 601
    .line 602
    goto :goto_14

    .line 603
    :goto_13
    :try_start_29
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v5
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_e

    .line 607
    :try_start_2a
    invoke-virtual {v8, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_c

    .line 608
    .line 609
    .line 610
    :goto_14
    const/high16 v3, 0x10000

    .line 611
    .line 612
    and-int/2addr v3, v0

    .line 613
    if-nez v3, :cond_2e

    .line 614
    .line 615
    if-nez v0, :cond_2f

    .line 616
    .line 617
    :cond_2e
    const/4 v3, 0x0

    .line 618
    goto :goto_15

    .line 619
    :cond_2f
    const/4 v3, 0x0

    .line 620
    goto :goto_16

    .line 621
    :goto_15
    :try_start_2b
    invoke-virtual {v4, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    if-eqz v5, :cond_31

    .line 626
    .line 627
    const-string v6, "53"

    .line 628
    .line 629
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v5
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_8

    .line 633
    if-eqz v5, :cond_30

    .line 634
    .line 635
    move-object/from16 v5, v19

    .line 636
    .line 637
    :try_start_2c
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    .line 643
    .line 644
    goto :goto_16

    .line 645
    :cond_30
    move-object/from16 v5, v19

    .line 646
    .line 647
    invoke-virtual {v8, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_9

    .line 648
    .line 649
    .line 650
    goto :goto_16

    .line 651
    :catch_8
    move-object/from16 v5, v19

    .line 652
    .line 653
    :catch_9
    :try_start_2d
    invoke-virtual {v8, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    .line 655
    .line 656
    :cond_31
    :goto_16
    const/high16 v5, 0x20000

    .line 657
    .line 658
    and-int/2addr v5, v0

    .line 659
    if-nez v5, :cond_32

    .line 660
    .line 661
    if-nez v0, :cond_33

    .line 662
    .line 663
    :cond_32
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v5
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_2d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_e

    .line 667
    :try_start_2e
    invoke-virtual {v8, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_2e} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_c

    .line 668
    .line 669
    .line 670
    :cond_33
    const/high16 v2, 0x80000

    .line 671
    .line 672
    and-int/2addr v2, v0

    .line 673
    if-nez v2, :cond_34

    .line 674
    .line 675
    if-nez v0, :cond_35

    .line 676
    .line 677
    :cond_34
    move-object/from16 v2, v18

    .line 678
    .line 679
    const/4 v9, 0x0

    .line 680
    goto :goto_17

    .line 681
    :cond_35
    move-object/from16 v2, v18

    .line 682
    .line 683
    const/4 v9, 0x0

    .line 684
    goto :goto_18

    .line 685
    :goto_17
    :try_start_2f
    invoke-virtual {v4, v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-virtual {v8, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    .line 691
    .line 692
    :goto_18
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_2f} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_a

    .line 696
    goto :goto_1e

    .line 697
    :catch_a
    move-exception v0

    .line 698
    goto :goto_1f

    .line 699
    :catch_b
    move-exception v0

    .line 700
    :goto_19
    move-object/from16 v4, v17

    .line 701
    .line 702
    goto :goto_21

    .line 703
    :catch_c
    move-exception v0

    .line 704
    move-object/from16 v2, v18

    .line 705
    .line 706
    goto/16 :goto_4

    .line 707
    .line 708
    :catch_d
    move-exception v0

    .line 709
    move-object/from16 v2, v18

    .line 710
    .line 711
    :goto_1a
    const/4 v9, 0x0

    .line 712
    goto :goto_19

    .line 713
    :catch_e
    move-exception v0

    .line 714
    move-object v9, v3

    .line 715
    move-object/from16 v2, v18

    .line 716
    .line 717
    goto :goto_1f

    .line 718
    :catch_f
    move-exception v0

    .line 719
    move-object v9, v3

    .line 720
    move-object/from16 v2, v18

    .line 721
    .line 722
    goto :goto_19

    .line 723
    :catch_10
    move-exception v0

    .line 724
    move-object/from16 v2, v18

    .line 725
    .line 726
    move-object/from16 v1, v20

    .line 727
    .line 728
    goto :goto_1a

    .line 729
    :catch_11
    move-exception v0

    .line 730
    move-object v9, v1

    .line 731
    :goto_1b
    move-object/from16 v2, v18

    .line 732
    .line 733
    move-object/from16 v1, v20

    .line 734
    .line 735
    goto :goto_1f

    .line 736
    :catch_12
    move-exception v0

    .line 737
    move-object v9, v1

    .line 738
    :goto_1c
    move-object/from16 v2, v18

    .line 739
    .line 740
    move-object/from16 v1, v20

    .line 741
    .line 742
    goto :goto_19

    .line 743
    :goto_1d
    move-object v0, v9

    .line 744
    :goto_1e
    move-object/from16 v4, v17

    .line 745
    .line 746
    goto :goto_22

    .line 747
    :catch_13
    move-object v9, v1

    .line 748
    move-object/from16 v2, v18

    .line 749
    .line 750
    move-object/from16 v1, v20

    .line 751
    .line 752
    goto :goto_1d

    .line 753
    :catch_14
    move-exception v0

    .line 754
    goto :goto_1b

    .line 755
    :catch_15
    move-exception v0

    .line 756
    goto :goto_1c

    .line 757
    :catch_16
    move-exception v0

    .line 758
    move-object/from16 v2, v18

    .line 759
    .line 760
    move-object/from16 v1, v20

    .line 761
    .line 762
    goto :goto_1a

    .line 763
    :goto_1f
    const-string/jumbo v3, "processData: Exception"

    .line 764
    .line 765
    .line 766
    move-object/from16 v4, v17

    .line 767
    .line 768
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    .line 770
    .line 771
    :goto_20
    move-object v0, v9

    .line 772
    goto :goto_22

    .line 773
    :goto_21
    const-string/jumbo v3, "processData: JSONException"

    .line 774
    .line 775
    .line 776
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    .line 778
    .line 779
    goto :goto_20

    .line 780
    :goto_22
    move-object/from16 v3, v16

    .line 781
    .line 782
    if-eqz v0, :cond_36

    .line 783
    .line 784
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    :cond_36
    move-object/from16 v7, p1

    .line 788
    .line 789
    move-object v6, v3

    .line 790
    move-object v5, v9

    .line 791
    move-object v3, v2

    .line 792
    move-object v2, v4

    .line 793
    move-object v4, v1

    .line 794
    move-object/from16 v1, p0

    .line 795
    .line 796
    goto/16 :goto_0

    .line 797
    .line 798
    :cond_37
    move-object v3, v6

    .line 799
    move-object v5, v3

    .line 800
    goto :goto_23

    .line 801
    :cond_38
    move-object v9, v5

    .line 802
    :goto_23
    return-object v5
.end method

.method public static getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackagesForUid(I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_b

    .line 18
    .line 19
    aget-object v5, v1, v4

    .line 20
    .line 21
    sget-object v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 22
    .line 23
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const-wide/16 v8, 0x0

    .line 28
    .line 29
    invoke-virtual {v6, v5, v8, v9, v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-static {p0, p1, v5, v7, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    return-object v7

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_2
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 52
    .line 53
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-wide/16 v9, 0x4

    .line 58
    .line 59
    invoke-virtual {v7, v5, v9, v10, v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 66
    .line 67
    if-eqz v7, :cond_4

    .line 68
    .line 69
    array-length v8, v7

    .line 70
    move v9, v3

    .line 71
    :goto_1
    if-ge v9, v8, :cond_4

    .line 72
    .line 73
    aget-object v10, v7, v9

    .line 74
    .line 75
    if-eqz v10, :cond_3

    .line 76
    .line 77
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v10, :cond_3

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    if-eqz v10, :cond_3

    .line 90
    .line 91
    return-object v10

    .line 92
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 96
    .line 97
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    const-wide/16 v9, 0x8

    .line 102
    .line 103
    invoke-virtual {v7, v5, v9, v10, v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    if-eqz v7, :cond_6

    .line 108
    .line 109
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 110
    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    array-length v8, v7

    .line 114
    move v9, v3

    .line 115
    :goto_2
    if-ge v9, v8, :cond_6

    .line 116
    .line 117
    aget-object v10, v7, v9

    .line 118
    .line 119
    if-eqz v10, :cond_5

    .line 120
    .line 121
    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v10, :cond_5

    .line 124
    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    if-eqz v6, :cond_5

    .line 128
    .line 129
    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    if-eqz v10, :cond_5

    .line 134
    .line 135
    return-object v10

    .line 136
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 140
    .line 141
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    const-wide/16 v9, 0x2

    .line 146
    .line 147
    invoke-virtual {v7, v5, v9, v10, v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    if-eqz v7, :cond_8

    .line 152
    .line 153
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 154
    .line 155
    if-eqz v7, :cond_8

    .line 156
    .line 157
    array-length v8, v7

    .line 158
    move v9, v3

    .line 159
    :goto_3
    if-ge v9, v8, :cond_8

    .line 160
    .line 161
    aget-object v10, v7, v9

    .line 162
    .line 163
    if-eqz v10, :cond_7

    .line 164
    .line 165
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 166
    .line 167
    if-eqz v10, :cond_7

    .line 168
    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    if-eqz v6, :cond_7

    .line 172
    .line 173
    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    if-eqz v10, :cond_7

    .line 178
    .line 179
    return-object v10

    .line 180
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 184
    .line 185
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    const-wide/16 v9, 0x1

    .line 190
    .line 191
    invoke-virtual {v7, v5, v9, v10, v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    if-eqz v7, :cond_a

    .line 196
    .line 197
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 198
    .line 199
    if-eqz v7, :cond_a

    .line 200
    .line 201
    array-length v8, v7

    .line 202
    move v9, v3

    .line 203
    :goto_4
    if-ge v9, v8, :cond_a

    .line 204
    .line 205
    aget-object v10, v7, v9

    .line 206
    .line 207
    if-eqz v10, :cond_9

    .line 208
    .line 209
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 210
    .line 211
    if-eqz v10, :cond_9

    .line 212
    .line 213
    if-eqz p1, :cond_9

    .line 214
    .line 215
    if-eqz v6, :cond_9

    .line 216
    .line 217
    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    if-eqz v10, :cond_9

    .line 222
    .line 223
    return-object v10

    .line 224
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    .line 233
    .line 234
    :cond_b
    return-object v0
.end method

.method public static getHash(Ljava/io/File;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string/jumbo v0, "close FileInputStream: IOException"

    .line 2
    .line 3
    .line 4
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    const-string v3, "SHA-256"

    .line 8
    .line 9
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Ljava/io/FileInputStream;

    .line 14
    .line 15
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    .line 17
    .line 18
    const/16 p0, 0x400

    .line 19
    .line 20
    :try_start_1
    new-array p0, p0, [B

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v4, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, -0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    if-eq v5, v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3, p0, v7, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    move-object v2, v4

    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :catch_0
    move-exception p0

    .line 39
    move-object v3, v2

    .line 40
    goto :goto_2

    .line 41
    :catch_1
    move-exception p0

    .line 42
    move-object v3, v2

    .line 43
    goto :goto_3

    .line 44
    :catch_2
    move-exception p0

    .line 45
    move-object v3, v2

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    new-instance v3, Ljava/lang/StringBuffer;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :goto_1
    :try_start_2
    array-length v5, p0

    .line 58
    if-ge v7, v5, :cond_1

    .line 59
    .line 60
    const-string v5, "%02X"

    .line 61
    .line 62
    aget-byte v6, p0, v7

    .line 63
    .line 64
    and-int/lit16 v6, v6, 0xff

    .line 65
    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    add-int/lit8 v7, v7, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_3
    move-exception p0

    .line 85
    goto :goto_2

    .line 86
    :catch_4
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :catch_5
    move-exception p0

    .line 89
    goto :goto_4

    .line 90
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :catch_6
    move-exception p0

    .line 95
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    goto :goto_6

    .line 101
    :catch_7
    move-exception p0

    .line 102
    move-object v3, v2

    .line 103
    move-object v4, v3

    .line 104
    goto :goto_2

    .line 105
    :catch_8
    move-exception p0

    .line 106
    move-object v3, v2

    .line 107
    move-object v4, v3

    .line 108
    goto :goto_3

    .line 109
    :catch_9
    move-exception p0

    .line 110
    move-object v3, v2

    .line 111
    move-object v4, v3

    .line 112
    goto :goto_4

    .line 113
    :goto_2
    :try_start_4
    const-string/jumbo v5, "getHash: IOException"

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    .line 118
    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :goto_3
    :try_start_6
    const-string/jumbo v5, "getHash: FileNotFoundException"

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    .line 130
    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :goto_4
    :try_start_8
    const-string/jumbo v5, "getHash: NoSuchAlgorithmException"

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 141
    .line 142
    .line 143
    if-eqz v4, :cond_2

    .line 144
    .line 145
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_5
    if-nez v3, :cond_3

    .line 149
    .line 150
    return-object v2

    .line 151
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :goto_6
    if-eqz v2, :cond_4

    .line 157
    .line 158
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 159
    .line 160
    .line 161
    goto :goto_7

    .line 162
    :catch_a
    move-exception v2

    .line 163
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_7
    throw p0
.end method

.method public static getHashFromCache(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 19
    .line 20
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    .line 21
    .line 22
    if-ne v3, p0, :cond_0

    .line 23
    .line 24
    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object p0, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return-object p0

    .line 47
    :cond_2
    monitor-exit v0

    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public static getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    iput-wide v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    iput-wide v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    .line 42
    .line 43
    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 44
    .line 45
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 46
    .line 47
    return-object v0
.end method

.method public static getPackageHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCache(ILjava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    const-string/jumbo v2, "null"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    new-instance p0, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    invoke-static {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_5

    .line 47
    .line 48
    return-object p0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_3
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_4
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    return-object p0

    .line 72
    :goto_0
    const-string p1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 73
    .line 74
    const-string/jumbo v1, "getPackageHash: Exception"

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :cond_5
    return-object v0
.end method

.method public static getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    const-string v1, "/"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x4

    .line 15
    if-lt v2, v3, :cond_6

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aget-object v4, v1, v2

    .line 19
    .line 20
    const-string/jumbo v5, "data"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x3

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    aget-object v1, v1, v5

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    array-length v4, v1

    .line 37
    const/4 v6, 0x5

    .line 38
    if-lt v4, v6, :cond_2

    .line 39
    .line 40
    aget-object v2, v1, v2

    .line 41
    .line 42
    const-string/jumbo v4, "user"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    aget-object v4, v1, v5

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    aget-object v1, v1, v3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object v1, v0

    .line 71
    :goto_0
    if-eqz v1, :cond_6

    .line 72
    .line 73
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 74
    .line 75
    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackagesForUid(I)[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_3
    array-length v3, v2

    .line 83
    const/4 v4, 0x0

    .line 84
    :goto_1
    if-ge v4, v3, :cond_6

    .line 85
    .line 86
    aget-object v5, v2, v4

    .line 87
    .line 88
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_5

    .line 93
    .line 94
    sget-object v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 95
    .line 96
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    const-wide/16 v8, 0x0

    .line 101
    .line 102
    invoke-virtual {v6, v5, v8, v9, v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    if-eqz v5, :cond_5

    .line 107
    .line 108
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v6, :cond_5

    .line 111
    .line 112
    new-instance v6, Ljava/io/File;

    .line 113
    .line 114
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_4

    .line 124
    .line 125
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string/jumbo v3, "unable to find the file location for the deamon path:"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p1, " for uid "

    .line 142
    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_4
    invoke-static {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    if-eqz v5, :cond_5

    .line 162
    .line 163
    return-object v5

    .line 164
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :cond_6
    return-object v0
.end method

.method public static insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    .locals 4

    .line 1
    const-string v0, "DataDelivery hash cache insertion uid:"

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 8
    .line 9
    const-string/jumbo v3, "insertHashIntoCache Called"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :try_start_0
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " pacName:"

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, " procName:"

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " trunProcName:"

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " hash:"

    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    monitor-exit v2

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method


# virtual methods
.method public final addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V
    .locals 6

    .line 1
    const-string v0, "added recipient for data collection:"

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "adding recipient failed for recipient: "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    .line 30
    .line 31
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 36
    .line 37
    const-string v4, "adding recipient for data collection:"

    .line 38
    .line 39
    invoke-static {v4, v1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v3

    .line 45
    :try_start_0
    const-string v4, "__"

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(ILjava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-gez v4, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    const-string p0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    :goto_0
    monitor-exit v3

    .line 88
    return-void

    .line 89
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public final getRecipientList()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final initializeHandlerThread()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "DataDeliveryHandler"

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    .line 27
    .line 28
    return-void
.end method

.method public final isDataRecipientPresent(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v1, "isDataRecipientPresent: found recipient:"

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, -0x1

    .line 63
    :cond_2
    :goto_1
    return v0
.end method

.method public final removeDataRecipientsForPackage(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 35
    .line 36
    iget v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 37
    .line 38
    if-ne v2, p1, :cond_0

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v4, "removeDataRecipientsForPackage: removing recipient for package:"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public final removeNAPDataRecipient(ILjava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "removeNAPDataRecipient: removing recipient for data collection:"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method
