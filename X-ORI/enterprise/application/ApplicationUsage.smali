.class public final Lcom/android/server/enterprise/application/ApplicationUsage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final appBackGroundStats:Ljava/util/Map;

.field public static final appForeGroundStats:Ljava/util/Map;

.field public static final mStatsLock:Ljava/lang/Object;

.field public static volatile mUsageHandler:Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public static filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .locals 6

    .line 1
    const-string v0, "application_policy"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v3, p1, :cond_2

    .line 16
    .line 17
    aget-object v5, p0, v3

    .line 18
    .line 19
    iget-object v5, v5, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(ILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-ne v5, v1, :cond_0

    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v4, v2

    .line 33
    :cond_2
    if-nez v4, :cond_3

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :cond_3
    new-array v3, v4, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 38
    .line 39
    move v4, v2

    .line 40
    :goto_1
    if-ge v2, p1, :cond_5

    .line 41
    .line 42
    aget-object v5, p0, v2

    .line 43
    .line 44
    iget-object v5, v5, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(ILjava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v5, v1, :cond_4

    .line 51
    .line 52
    aget-object v5, p0, v2

    .line 53
    .line 54
    aput-object v5, v3, v4

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    return-object v3
.end method


# virtual methods
.method public final _insertToAppControlDB()V
    .locals 4

    .line 1
    const-string v0, "ApplicationUsage"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Updating Usage Statistics in DB @ "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateForeGroundUsageData()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateBackGroundUsageDetails()V

    .line 31
    .line 32
    .line 33
    const-string p0, "application_policy"

    .line 34
    .line 35
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateDataUsageDb()V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_0
    const-string p0, "ApplicationUsage"

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "Done Updating Usage Statistics in DB @ "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final calculateAvgPerMonth(IILjava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    const-string v1, ":"

    .line 5
    .line 6
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    aget-object p3, p3, v0

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    const-wide/16 v3, -0x1

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x80

    .line 34
    .line 35
    invoke-static {p0, p2, p3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(IILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    const-string p0, "ApplicationUsage"

    .line 42
    .line 43
    const-string p2, "ApplicationUsage::getAppInstallTimeInMiliSec @ fail to get application info"

    .line 44
    .line 45
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    move-wide p2, v3

    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto/16 :goto_9

    .line 55
    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :try_start_1
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 59
    .line 60
    new-instance p2, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 66
    .line 67
    .line 68
    move-result-wide p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_2
    new-instance p0, Ljava/io/File;

    .line 78
    .line 79
    const-string v1, "/efs/sec_efs/LastResetDate.txt"

    .line 80
    .line 81
    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const-string/jumbo v2, "factorydatareset"

    .line 89
    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    :try_start_3
    new-instance v5, Ljava/io/BufferedReader;

    .line 95
    .line 96
    new-instance v6, Ljava/io/FileReader;

    .line 97
    .line 98
    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 102
    .line 103
    .line 104
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    if-eqz p0, :cond_2

    .line 109
    .line 110
    move-object v2, p0

    .line 111
    goto :goto_3

    .line 112
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 113
    .line 114
    .line 115
    goto :goto_6

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    move-object v1, v5

    .line 118
    goto :goto_5

    .line 119
    :catch_1
    move-exception p0

    .line 120
    move-object v1, v5

    .line 121
    goto :goto_4

    .line 122
    :catchall_2
    move-exception p0

    .line 123
    goto :goto_5

    .line 124
    :catch_2
    move-exception p0

    .line 125
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 126
    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :goto_5
    if-eqz v1, :cond_3

    .line 135
    .line 136
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 137
    .line 138
    .line 139
    :catch_3
    :cond_3
    throw p0

    .line 140
    :catch_4
    :cond_4
    :goto_6
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 141
    .line 142
    const-string v1, "MM/dd/yyyy HH:mm:ss"

    .line 143
    .line 144
    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :try_start_9
    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_5

    .line 152
    .line 153
    .line 154
    goto :goto_7

    .line 155
    :catch_5
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 157
    .line 158
    .line 159
    :goto_7
    const-wide/16 v1, 0x0

    .line 160
    .line 161
    cmp-long p0, p2, v1

    .line 162
    .line 163
    if-gez p0, :cond_5

    .line 164
    .line 165
    move-wide p2, v1

    .line 166
    :cond_5
    cmp-long p0, v3, p2

    .line 167
    .line 168
    const/4 v1, 0x2

    .line 169
    const/4 v2, 0x1

    .line 170
    const-string v3, "GMT+0"

    .line 171
    .line 172
    if-eqz p0, :cond_6

    .line 173
    .line 174
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    add-int/2addr p0, v2

    .line 190
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    goto :goto_8

    .line 206
    :cond_6
    move p0, v0

    .line 207
    move p2, p0

    .line 208
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v4

    .line 212
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    invoke-virtual {p3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    .line 224
    .line 225
    .line 226
    move-result p3

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v4

    .line 231
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    add-int/2addr v1, v2

    .line 247
    if-eqz p0, :cond_8

    .line 248
    .line 249
    if-eqz p2, :cond_8

    .line 250
    .line 251
    if-le p3, p2, :cond_7

    .line 252
    .line 253
    sub-int/2addr p3, p2

    .line 254
    mul-int/lit8 v0, p3, 0xc

    .line 255
    .line 256
    :cond_7
    if-le v1, p0, :cond_8

    .line 257
    .line 258
    sub-int/2addr v1, p0

    .line 259
    add-int/2addr v0, v1

    .line 260
    :cond_8
    if-eqz v0, :cond_a

    .line 261
    .line 262
    div-int/2addr p1, v0

    .line 263
    goto :goto_a

    .line 264
    :goto_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    .line 266
    .line 267
    throw p0

    .line 268
    :cond_9
    move p1, v0

    .line 269
    :cond_a
    :goto_a
    return p1
.end method

.method public final updateBackGroundUsageDetails()V
    .locals 9

    .line 1
    new-instance v6, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v6, p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    check-cast p0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v7, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v8, v0

    .line 44
    check-cast v8, Ljava/lang/String;

    .line 45
    .line 46
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 47
    .line 48
    check-cast v0, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 55
    .line 56
    iget-wide v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 57
    .line 58
    const-wide/16 v1, 0x0

    .line 59
    .line 60
    cmp-long v1, v3, v1

    .line 61
    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    iget-wide v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 65
    .line 66
    move-object v0, v6

    .line 67
    move-object v5, v8

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(JJLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-wide v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 76
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    move-object v0, v6

    .line 82
    move-object v5, v8

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(JJLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_2

    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-ge p0, v0, :cond_2

    .line 99
    .line 100
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 101
    .line 102
    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v0, Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    add-int/lit8 p0, p0, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    return-void
.end method

.method public final updateForeGroundUsageData()V
    .locals 10

    .line 1
    new-instance v7, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v7, p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    check-cast p0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v8, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v9, v0

    .line 44
    check-cast v9, Ljava/lang/String;

    .line 45
    .line 46
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 47
    .line 48
    check-cast v0, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 55
    .line 56
    iget-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 57
    .line 58
    const-wide/16 v1, 0x0

    .line 59
    .line 60
    cmp-long v1, v4, v1

    .line 61
    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    iget v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 65
    .line 66
    iget-wide v2, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 67
    .line 68
    move-object v0, v7

    .line 69
    move-object v6, v9

    .line 70
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(IJJLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 78
    .line 79
    iget-wide v2, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    move-object v0, v7

    .line 86
    move-object v6, v9

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(IJJLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_2

    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ge p0, v0, :cond_2

    .line 103
    .line 104
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 105
    .line 106
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v0, Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    add-int/lit8 p0, p0, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    return-void
.end method
