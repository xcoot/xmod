.class public final Lcom/android/server/HeimdAllFsService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static THRESHOLD_COMPRESS_TRIGGER:D = 0.1

.field public static THRESHOLD_COMPRESS_UNUSED_MS:J = 0x5265c000L

.field public static THRESHOLD_DECOMPRESS_TRIGGER:D = 0.15

.field public static final heimdAllFSSupported:[Ljava/lang/Boolean;

.field public static mDryrun:Z

.field public static mForceCompressService:Ljava/lang/String;

.field public static mForceDefragService:Z

.field public static mForceService:Z

.field public static mIsUserTrial:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

.field public mHeimdallFsThread:Lcom/android/server/HeimdAllFsService$1;

.field public volatile mInstalld:Landroid/os/IInstalld;

.field public mPackagesInfo:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0, v0, v0}, [Ljava/lang/Boolean;

    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:[Ljava/lang/Boolean;

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 11
    const-string v1, ""

    .line 13
    sput-object v1, Lcom/android/server/HeimdAllFsService;->mForceCompressService:Ljava/lang/String;

    .line 15
    sput-boolean v0, Lcom/android/server/HeimdAllFsService;->mForceDefragService:Z

    .line 17
    sput-boolean v0, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    .line 19
    sput-boolean v0, Lcom/android/server/HeimdAllFsService;->mIsUserTrial:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Lcom/android/server/HeimdAllFsService$1;

    .line 9
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 11
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    .line 13
    const-string/jumbo v0, "installd"

    .line 16
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    .line 26
    const-string/jumbo p0, "persist.sys.heimdallfs.dryrun"

    .line 29
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string/jumbo v0, "true"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p0

    .line 40
    sput-boolean p0, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    .line 42
    const-string/jumbo p0, "persist.sys.heimdallfs.force"

    .line 45
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p0

    .line 53
    sput-boolean p0, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 55
    const-string/jumbo p0, "persist.sys.heimdallfs.force.compress.mode"

    .line 58
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    sput-object p0, Lcom/android/server/HeimdAllFsService;->mForceCompressService:Ljava/lang/String;

    .line 64
    const-string/jumbo p0, "persist.sys.heimdallfs.force.defrag.mode"

    .line 67
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p0

    .line 75
    sput-boolean p0, Lcom/android/server/HeimdAllFsService;->mForceDefragService:Z

    .line 77
    const-string/jumbo p0, "com.salab.issuetracker"

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    move-result-object p1

    .line 84
    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 88
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    if-eqz p0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 92
    :catch_0
    :cond_0
    sput-boolean v0, Lcom/android/server/HeimdAllFsService;->mIsUserTrial:Z

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    const-string p1, "DEBUG: TRUE Dry-run: "

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    sget-boolean p1, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    .line 103
    const-string v0, "TRUE"

    .line 105
    const-string v1, "FALSE"

    .line 107
    if-eqz p1, :cond_1

    .line 109
    move-object p1, v0

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    move-object p1, v1

    .line 112
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string p1, " Last-run: "

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo p1, "sys.heimdallfs.todayinfo"

    .line 123
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string p1, " mForceService: "

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    sget-boolean p1, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 137
    if-eqz p1, :cond_2

    .line 139
    move-object p1, v0

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    move-object p1, v1

    .line 142
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string p1, " mForceDefragService: "

    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    sget-boolean p1, Lcom/android/server/HeimdAllFsService;->mForceDefragService:Z

    .line 152
    if-eqz p1, :cond_3

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    move-object v0, v1

    .line 156
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string p1, " mForceCompressService: "

    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    sget-object p1, Lcom/android/server/HeimdAllFsService;->mForceCompressService:Ljava/lang/String;

    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string p1, " mIsUserTrial: "

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    sget-boolean p1, Lcom/android/server/HeimdAllFsService;->mIsUserTrial:Z

    .line 176
    const-string v0, "HeimdAllFS"

    .line 178
    invoke-static {v0, p0, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 181
    return-void
.end method

.method public static getFunctionOrder()Lcom/android/server/HeimdAllFsService$FunctionOrder;
    .locals 2

    .line 1
    const-string v0, "COMPRESS"

    .line 3
    const-class v1, Lcom/android/server/HeimdAllFsService$FunctionOrder;

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/HeimdAllFsService$FunctionOrder;

    .line 11
    return-object v0
.end method

.method public static isServiceActivate(Lcom/android/server/HeimdAllFsService$FunctionOrder;)Z
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "HeimdAllFS"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo p0, "isServiceActivate: Force mode true"

    .line 11
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return v1

    .line 15
    :cond_0
    sget-object v0, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:[Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v3

    .line 21
    aget-object v3, v0, v3

    .line 23
    if-eqz v3, :cond_1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    move-result p0

    .line 29
    aget-object p0, v0, p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_11

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eq v3, v1, :cond_2

    .line 45
    const-string/jumbo p0, "invalid action"

    .line 48
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v4

    .line 52
    :cond_2
    new-instance v3, Ljava/io/File;

    .line 54
    const-string v5, "/sys/fs/f2fs/userdata/features"

    .line 56
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_3

    .line 65
    move v5, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v3, Ljava/io/File;

    .line 69
    const-string v5, "/sys/fs/f2fs/userdata/feature_list/compression"

    .line 71
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_4

    .line 80
    const-string/jumbo v1, "getServiceLevel: [/sys/fs/f2fs/userdata/feature_list/compression] or legacy path does not exist"

    .line 83
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 89
    move-result p0

    .line 90
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 92
    aput-object v1, v0, p0

    .line 94
    goto/16 :goto_7

    .line 96
    :cond_4
    move v5, v4

    .line 97
    :goto_0
    const/4 v6, 0x0

    .line 98
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    .line 100
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 102
    invoke-direct {v7, v3, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 105
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 107
    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 113
    move-result-object v6

    .line 114
    if-eqz v6, :cond_8

    .line 116
    if-eqz v5, :cond_6

    .line 118
    const-string/jumbo v8, "compression"

    .line 121
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    move-result v8

    .line 125
    if-nez v8, :cond_7

    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    move-object v6, v3

    .line 130
    goto/16 :goto_6

    .line 132
    :catch_0
    move-object v6, v3

    .line 133
    goto :goto_3

    .line 134
    :cond_6
    :goto_1
    if-nez v5, :cond_5

    .line 136
    const-string/jumbo v8, "supported"

    .line 139
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_5

    .line 145
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 148
    move-result v5

    .line 149
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 151
    aput-object v6, v0, v5

    .line 153
    goto :goto_2

    .line 154
    :cond_8
    move v1, v4

    .line 155
    :goto_2
    if-nez v1, :cond_9

    .line 157
    const-string v5, "[/sys/fs/f2fs/userdata/feature_list/compression] does not have [compression] feature"

    .line 159
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :cond_9
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 165
    :catch_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 168
    goto :goto_4

    .line 169
    :catchall_1
    move-exception p0

    .line 170
    goto :goto_6

    .line 171
    :catchall_2
    move-exception p0

    .line 172
    move-object v7, v6

    .line 173
    goto :goto_6

    .line 174
    :catch_2
    move-object v7, v6

    .line 175
    :catch_3
    :goto_3
    :try_start_5
    const-string v1, "Error while reading [/sys/fs/f2fs/userdata/feature_list/compression]"

    .line 177
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 180
    if-eqz v6, :cond_a

    .line 182
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 185
    :catch_4
    :cond_a
    if-eqz v7, :cond_b

    .line 187
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 190
    :catch_5
    :cond_b
    move v1, v4

    .line 191
    :catch_6
    :goto_4
    if-nez v1, :cond_c

    .line 193
    goto :goto_5

    .line 194
    :cond_c
    const-string v3, "/sys/fs/f2fs/features/sec_heimdallfs"

    .line 196
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_e

    .line 202
    const-string v3, "/sys/fs/f2fs/features/sec_dnode_relocation"

    .line 204
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_d

    .line 210
    goto :goto_5

    .line 211
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 214
    move-result p0

    .line 215
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 217
    aput-object v1, v0, p0

    .line 219
    const-string p0, "[/sys/fs/f2fs/features/sec_dnode_relocation] does not have [dnode_relocation] feature"

    .line 221
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string p0, "[/sys/fs/f2fs/features/sec_heimdallfs] does not have [sec_heimdallfs] feature"

    .line 226
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    goto :goto_7

    .line 230
    :cond_e
    :goto_5
    move v4, v1

    .line 231
    goto :goto_7

    .line 232
    :goto_6
    if-eqz v6, :cond_f

    .line 234
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 237
    :catch_7
    :cond_f
    if-eqz v7, :cond_10

    .line 239
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 242
    :catch_8
    :cond_10
    throw p0

    .line 243
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 246
    move-result v1

    .line 247
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 249
    aput-object v3, v0, v1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    .line 253
    const-string/jumbo v3, "isServiceActivate: Defrag ["

    .line 256
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 262
    move-result v3

    .line 263
    aget-object v3, v0, v3

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    const-string v3, "]"

    .line 270
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v1

    .line 277
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 283
    move-result p0

    .line 284
    aget-object p0, v0, p0

    .line 286
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 289
    move-result v4

    .line 290
    :goto_7
    return v4
.end method

.method public static setTriggerThreshold()V
    .locals 7

    .line 1
    sget-wide v0, Lcom/android/server/HeimdAllFsService;->THRESHOLD_COMPRESS_TRIGGER:D

    .line 3
    const-string/jumbo v2, "debug.sys.heimdallfs.ut.compress.trigger.percentile"

    .line 6
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 12
    const/16 v5, 0x64

    .line 14
    const/4 v6, 0x1

    .line 15
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-lt v2, v6, :cond_0

    .line 21
    if-gt v2, v5, :cond_0

    .line 23
    int-to-double v0, v2

    .line 24
    div-double/2addr v0, v3

    .line 25
    :catch_0
    :cond_0
    sput-wide v0, Lcom/android/server/HeimdAllFsService;->THRESHOLD_COMPRESS_TRIGGER:D

    .line 27
    sget-wide v0, Lcom/android/server/HeimdAllFsService;->THRESHOLD_DECOMPRESS_TRIGGER:D

    .line 29
    const-string/jumbo v2, "debug.sys.heimdallfs.ut.decompress.trigger.percentile"

    .line 32
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    if-lt v2, v6, :cond_1

    .line 42
    if-gt v2, v5, :cond_1

    .line 44
    int-to-double v0, v2

    .line 45
    div-double/2addr v0, v3

    .line 46
    :catch_1
    :cond_1
    sput-wide v0, Lcom/android/server/HeimdAllFsService;->THRESHOLD_DECOMPRESS_TRIGGER:D

    .line 48
    sget-wide v0, Lcom/android/server/HeimdAllFsService;->THRESHOLD_COMPRESS_UNUSED_MS:J

    .line 50
    const-string/jumbo v2, "debug.sys.heimdallfs.ut.compress.trigger.time"

    .line 53
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 60
    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    const-wide/32 v4, 0x5265c00

    .line 64
    mul-long/2addr v2, v4

    .line 65
    const-wide/16 v4, 0x0

    .line 67
    cmp-long v4, v2, v4

    .line 69
    if-ltz v4, :cond_2

    .line 71
    const-wide v4, 0x202fbf000L

    .line 76
    cmp-long v4, v2, v4

    .line 78
    if-gtz v4, :cond_2

    .line 80
    move-wide v0, v2

    .line 81
    :catch_2
    :cond_2
    sput-wide v0, Lcom/android/server/HeimdAllFsService;->THRESHOLD_COMPRESS_UNUSED_MS:J

    .line 83
    const-string/jumbo v0, "debug.sys.heimdallfs.force.compress.mode"

    .line 86
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lcom/android/server/HeimdAllFsService;->mForceCompressService:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "debug.sys.heimdallfs.force"

    .line 95
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    const-string/jumbo v1, "true"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v0

    .line 106
    sput-boolean v0, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 108
    const-string v0, "HeimdAllFS"

    .line 110
    const-string v1, "Change threshold for UT debug"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    const-string v2, " THRESHOLD_COMPRESS_TRIGGER: "

    .line 119
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    sget-wide v2, Lcom/android/server/HeimdAllFsService;->THRESHOLD_COMPRESS_TRIGGER:D

    .line 124
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, " THRESHOLD_DECOMPRESS_TRIGGER: "

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget-wide v2, Lcom/android/server/HeimdAllFsService;->THRESHOLD_DECOMPRESS_TRIGGER:D

    .line 134
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 137
    const-string v2, " THRESHOLD_COMPRESS_UNUSED_MS: "

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    sget-wide v2, Lcom/android/server/HeimdAllFsService;->THRESHOLD_COMPRESS_UNUSED_MS:J

    .line 144
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    const-string v2, " mForceCompressService: "

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    sget-object v2, Lcom/android/server/HeimdAllFsService;->mForceCompressService:Ljava/lang/String;

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v2, " mForceService: "

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    sget-boolean v2, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 164
    invoke-static {v0, v1, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 167
    return-void
.end method


# virtual methods
.method public final doCompressAction(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "HeimdAllFS"

    .line 3
    const-string/jumbo v1, "doCompressAction: "

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    if-eqz p2, :cond_0

    .line 13
    const-string v1, "Comp"

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "Decomp"

    .line 18
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ": "

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-boolean v1, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    .line 38
    if-eqz v1, :cond_1

    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    .line 43
    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->compressFile(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    const-string p0, "Error: Exception!! "

    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    goto :goto_1

    .line 53
    :catch_1
    const-string p0, "Error: Compress/Decompress RemoteException, "

    .line 55
    invoke-static {p0, p1, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_1
    return-void
.end method

.method public final doCompressPackages(Ljava/util/List;Z)V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    if-eqz p2, :cond_0

    .line 7
    const-string v1, "Compress"

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "Decompress"

    .line 12
    :goto_0
    const-string/jumbo v2, "doCompressPackages Start!! : "

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "HeimdAllFS"

    .line 21
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v1, "Get Package Info!!"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    .line 31
    const-string/jumbo v3, "usagestats"

    .line 34
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    move-object v3, v1

    .line 39
    check-cast v3, Landroid/app/usage/UsageStatsManager;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    move-result-wide v4

    .line 45
    sget-wide v6, Lcom/android/server/HeimdAllFsService;->THRESHOLD_COMPRESS_UNUSED_MS:J

    .line 47
    sub-long v6, v4, v6

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {v9, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 66
    move-result-object v4

    .line 67
    const-wide/16 v5, 0x0

    .line 69
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    const-string v6, "Get times : "

    .line 76
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 82
    move-result-wide v6

    .line 83
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    const-string v6, " Start Time : "

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 94
    move-result-wide v6

    .line 95
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-boolean v5, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 107
    if-eqz v5, :cond_1

    .line 109
    const-string/jumbo v5, "force getAppUsageStats"

    .line 112
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 118
    move-result-wide v5

    .line 119
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 122
    move-result-wide v7

    .line 123
    const/4 v4, 0x2

    .line 124
    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    .line 127
    move-result-object v1

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 132
    move-result-wide v5

    .line 133
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 136
    move-result-wide v7

    .line 137
    const/4 v4, 0x2

    .line 138
    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    .line 141
    move-result-object v1

    .line 142
    :goto_1
    new-instance v3, Ljava/util/TreeMap;

    .line 144
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 147
    if-eqz v1, :cond_5

    .line 149
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object v1

    .line 153
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_5

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Landroid/app/usage/UsageStats;

    .line 165
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeAnyComponentUsed()J

    .line 168
    move-result-wide v5

    .line 169
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    .line 172
    move-result-wide v7

    .line 173
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 176
    move-result-wide v5

    .line 177
    sget-boolean v7, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 179
    if-nez v7, :cond_3

    .line 181
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 184
    move-result-wide v7

    .line 185
    cmp-long v7, v5, v7

    .line 187
    if-gtz v7, :cond_3

    .line 189
    goto :goto_2

    .line 190
    :cond_3
    new-instance v7, Ljava/sql/Timestamp;

    .line 192
    invoke-direct {v7, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    .line 197
    const-string v10, "Used package : "

    .line 199
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 205
    move-result-object v10

    .line 206
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v10, " - "

    .line 211
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v7

    .line 227
    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v3, v7}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_4

    .line 240
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 243
    move-result-object v7

    .line 244
    invoke-virtual {v3, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-result-object v7

    .line 248
    check-cast v7, Ljava/lang/Long;

    .line 250
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    move-result-object v8

    .line 254
    invoke-virtual {v7, v8}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 257
    move-result v7

    .line 258
    if-gez v7, :cond_2

    .line 260
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 263
    move-result-object v4

    .line 264
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 275
    move-result-object v4

    .line 276
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    goto/16 :goto_2

    .line 285
    :cond_5
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 288
    move-result-object v1

    .line 289
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 292
    move-result-object v1

    .line 293
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_6

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    move-result-object v4

    .line 303
    check-cast v4, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 308
    move-result-object v5

    .line 309
    check-cast v5, Ljava/lang/String;

    .line 311
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 314
    move-result-object v4

    .line 315
    check-cast v4, Ljava/lang/Long;

    .line 317
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 320
    move-result-wide v6

    .line 321
    new-instance v4, Ljava/sql/Timestamp;

    .line 323
    invoke-direct {v4, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    .line 328
    const-string v9, "De/Compress Package Name: "

    .line 330
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v5, ", Last Time Used: "

    .line 338
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 344
    const-string v5, "-"

    .line 346
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object v4

    .line 356
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    goto :goto_3

    .line 360
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 362
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 368
    move-result-object p1

    .line 369
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    move-result v4

    .line 373
    if-eqz v4, :cond_b

    .line 375
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    move-result-object v4

    .line 379
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 381
    if-eqz p2, :cond_9

    .line 383
    sget-boolean v5, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 385
    if-nez v5, :cond_8

    .line 387
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 389
    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    move-result-object v5

    .line 393
    if-nez v5, :cond_9

    .line 395
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 397
    const-string/jumbo v6, "compressCandidate App : "

    .line 400
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 405
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object v5

    .line 412
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    goto :goto_4

    .line 419
    :cond_9
    if-nez p2, :cond_7

    .line 421
    sget-boolean v5, Lcom/android/server/HeimdAllFsService;->mForceService:Z

    .line 423
    if-nez v5, :cond_a

    .line 425
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 427
    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    move-result-object v5

    .line 431
    if-eqz v5, :cond_7

    .line 433
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 435
    const-string/jumbo v6, "de-compressCandidate App : "

    .line 438
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 443
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object v5

    .line 450
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    goto :goto_4

    .line 457
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 460
    move-result-object p1

    .line 461
    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 464
    move-result v1

    .line 465
    if-eqz v1, :cond_11

    .line 467
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 470
    move-result-object v1

    .line 471
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 473
    iget-object v3, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Lcom/android/server/HeimdAllFsService$1;

    .line 475
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 478
    move-result v3

    .line 479
    if-nez v3, :cond_d

    .line 481
    goto/16 :goto_a

    .line 483
    :cond_d
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 485
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 487
    invoke-virtual {p0, v3, p2}, Lcom/android/server/HeimdAllFsService;->doCompressAction(Ljava/lang/String;Z)V

    .line 490
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 492
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 494
    const/4 v4, 0x0

    .line 495
    if-eqz v3, :cond_e

    .line 497
    array-length v5, v3

    .line 498
    move v6, v4

    .line 499
    :goto_5
    if-ge v6, v5, :cond_e

    .line 501
    aget-object v7, v3, v6

    .line 503
    invoke-virtual {p0, v7, p2}, Lcom/android/server/HeimdAllFsService;->doCompressAction(Ljava/lang/String;Z)V

    .line 506
    add-int/lit8 v6, v6, 0x1

    .line 508
    goto :goto_5

    .line 509
    :cond_e
    new-instance v3, Ljava/io/File;

    .line 511
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 513
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 515
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/io/File;

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    .line 522
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 528
    move-result-object v6

    .line 529
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string v6, "/oat"

    .line 534
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    move-result-object v5

    .line 541
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 547
    move-result v1

    .line 548
    const/4 v5, 0x0

    .line 549
    if-eqz v1, :cond_10

    .line 551
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 553
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    move-result-object v1

    .line 570
    new-array v3, v4, [Ljava/lang/String;

    .line 572
    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 575
    move-result-object v1

    .line 576
    new-array v3, v4, [Ljava/nio/file/FileVisitOption;

    .line 578
    const/4 v4, 0x2

    .line 579
    invoke-static {v1, v4, v3}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    .line 582
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    :try_start_1
    new-instance v3, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;

    .line 585
    const/4 v4, 0x0

    .line 586
    invoke-direct {v3, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 589
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 592
    move-result-object v3

    .line 593
    new-instance v4, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;

    .line 595
    const/4 v6, 0x2

    .line 596
    invoke-direct {v4, v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 599
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 602
    move-result-object v3

    .line 603
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 606
    move-result-object v4

    .line 607
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 610
    move-result-object v3

    .line 611
    check-cast v3, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    :try_start_2
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 616
    move-object v5, v3

    .line 617
    goto :goto_8

    .line 618
    :catch_0
    move-object v5, v3

    .line 619
    goto :goto_7

    .line 620
    :catchall_0
    move-exception v3

    .line 621
    if-eqz v1, :cond_f

    .line 623
    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 626
    goto :goto_6

    .line 627
    :catchall_1
    move-exception v1

    .line 628
    :try_start_4
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 631
    :cond_f
    :goto_6
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 632
    :catch_1
    :goto_7
    const-string v1, "Error while reading oat path"

    .line 634
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_10
    :goto_8
    if-eqz v5, :cond_c

    .line 639
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 642
    move-result-object v1

    .line 643
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 646
    move-result v3

    .line 647
    if-eqz v3, :cond_c

    .line 649
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 652
    move-result-object v3

    .line 653
    check-cast v3, Ljava/nio/file/Path;

    .line 655
    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 658
    move-result-object v3

    .line 659
    invoke-virtual {p0, v3, p2}, Lcom/android/server/HeimdAllFsService;->doCompressAction(Ljava/lang/String;Z)V

    .line 662
    goto :goto_9

    .line 663
    :cond_11
    :goto_a
    return-void
.end method

.method public final getPackagesOnUserdata()Ljava/util/List;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_8

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 43
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 45
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 47
    const-string v7, "/data/"

    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_0

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 57
    const-string v7, "Package Info = "

    .line 59
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 71
    const-string v7, "HeimdAllFS"

    .line 73
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    const-string v8, "Package source Dir = "

    .line 80
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 85
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 87
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    const-string v8, "Incremental Delivery? = "

    .line 101
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 108
    invoke-static {v8}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 111
    move-result v8

    .line 112
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v6

    .line 119
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v6, Ljava/io/File;

    .line 124
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 128
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    .line 133
    const-string v9, "OAT Dir = "

    .line 135
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v9, "/oat"

    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v8

    .line 154
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v8, Ljava/io/File;

    .line 159
    new-instance v10, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v10

    .line 178
    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 184
    move-result v8

    .line 185
    const/4 v10, 0x0

    .line 186
    if-eqz v8, :cond_2

    .line 188
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v6

    .line 207
    new-array v8, v1, [Ljava/lang/String;

    .line 209
    invoke-static {v6, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 212
    move-result-object v6

    .line 213
    new-array v8, v1, [Ljava/nio/file/FileVisitOption;

    .line 215
    const/4 v9, 0x2

    .line 216
    invoke-static {v6, v9, v8}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    .line 219
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :try_start_1
    new-instance v8, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;

    .line 222
    const/4 v9, 0x5

    .line 223
    invoke-direct {v8, v9}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 226
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 229
    move-result-object v8

    .line 230
    new-instance v9, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;

    .line 232
    const/4 v11, 0x6

    .line 233
    invoke-direct {v9, v11}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 236
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 239
    move-result-object v8

    .line 240
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 243
    move-result-object v9

    .line 244
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 247
    move-result-object v8

    .line 248
    check-cast v8, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    invoke-interface {v6}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    goto :goto_3

    .line 254
    :catchall_0
    move-exception v8

    .line 255
    if-eqz v6, :cond_1

    .line 257
    :try_start_3
    invoke-interface {v6}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    goto :goto_1

    .line 261
    :catchall_1
    move-exception v6

    .line 262
    :try_start_4
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 265
    goto :goto_1

    .line 266
    :catch_0
    move-object v8, v10

    .line 267
    goto :goto_2

    .line 268
    :cond_1
    :goto_1
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 269
    :catch_1
    :goto_2
    const-string v6, "Error while reading oat path"

    .line 271
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    goto :goto_3

    .line 275
    :cond_2
    move-object v8, v10

    .line 276
    :goto_3
    if-eqz v8, :cond_3

    .line 278
    new-instance v6, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda8;

    .line 280
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-interface {v8, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 286
    :cond_3
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 288
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 290
    invoke-static {v6}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 293
    move-result v6

    .line 294
    if-eqz v6, :cond_4

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    .line 298
    const-string v8, "Incremental Delivery APK: SKIP! : "

    .line 300
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 305
    invoke-static {v6, v5, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    goto/16 :goto_0

    .line 310
    :cond_4
    iget-object v6, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    .line 312
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 314
    const-string/jumbo v9, "com.android.aimodel"

    .line 317
    :try_start_5
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 320
    move-result-object v6

    .line 321
    const/16 v11, 0x80

    .line 323
    invoke-virtual {v6, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 326
    move-result-object v6

    .line 327
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 329
    if-nez v6, :cond_5

    .line 331
    goto :goto_4

    .line 332
    :cond_5
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 335
    move-result-object v8

    .line 336
    if-eqz v8, :cond_6

    .line 338
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 345
    move-result-object v10
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 346
    goto :goto_4

    .line 347
    :catch_2
    move-exception v6

    .line 348
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 351
    :cond_6
    :goto_4
    const-string/jumbo v6, "true"

    .line 354
    if-ne v10, v6, :cond_7

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    .line 358
    const-string v8, "AI model APK: SKIP! : "

    .line 360
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 365
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object v6

    .line 372
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    goto/16 :goto_0

    .line 380
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 382
    const-string/jumbo v8, "not AI model APK: SKIP! : "

    .line 385
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 390
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v6

    .line 397
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    goto/16 :goto_0

    .line 405
    :cond_8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    return-object v2
.end method

.method public final scanCompressedFileAction(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Scan Compressed File!! ("

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "): "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "HeimdAllFS"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    .line 30
    invoke-interface {p0, p2, p1}, Landroid/os/IInstalld;->scanApkStats(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string p0, "Error: scanApkStats RemoteException, "

    .line 36
    invoke-static {p0, p2, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void
.end method

.method public final startCompress(Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    new-instance v0, Landroid/os/StatFs;

    .line 7
    const-string v3, "/data/"

    .line 9
    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v4, "compress"

    .line 15
    sget-object v5, Lcom/android/server/HeimdAllFsService;->mForceCompressService:Ljava/lang/String;

    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v4

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x1

    .line 23
    const-string v8, "HeimdAllFS"

    .line 25
    if-nez v4, :cond_3

    .line 27
    sget-object v4, Lcom/android/server/HeimdAllFsService;->mForceCompressService:Ljava/lang/String;

    .line 29
    const-string/jumbo v9, "decompress"

    .line 32
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 41
    move-result-wide v10

    .line 42
    long-to-double v10, v10

    .line 43
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    .line 46
    move-result-wide v12

    .line 47
    long-to-double v12, v12

    .line 48
    sget-wide v14, Lcom/android/server/HeimdAllFsService;->THRESHOLD_COMPRESS_TRIGGER:D

    .line 50
    mul-double/2addr v12, v14

    .line 51
    cmpg-double v4, v10, v12

    .line 53
    if-gez v4, :cond_0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    sget-object v4, Lcom/android/server/HeimdAllFsService;->mForceCompressService:Ljava/lang/String;

    .line 58
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_2

    .line 64
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 67
    move-result-wide v9

    .line 68
    long-to-double v9, v9

    .line 69
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    .line 72
    move-result-wide v11

    .line 73
    long-to-double v11, v11

    .line 74
    sget-wide v13, Lcom/android/server/HeimdAllFsService;->THRESHOLD_DECOMPRESS_TRIGGER:D

    .line 76
    mul-double/2addr v11, v13

    .line 77
    cmpl-double v4, v9, v11

    .line 79
    if-lez v4, :cond_1

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    const-string v9, "Do nothing!! available : "

    .line 86
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 92
    move-result-wide v9

    .line 93
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    const-string v9, ", total : "

    .line 98
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    .line 104
    move-result-wide v9

    .line 105
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto/16 :goto_6

    .line 117
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    const-string v9, "Decompress!! "

    .line 121
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 127
    move-result-wide v9

    .line 128
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v1, v2, v6}, Lcom/android/server/HeimdAllFsService;->doCompressPackages(Ljava/util/List;Z)V

    .line 141
    goto/16 :goto_6

    .line 143
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 145
    const-string v9, "Compress!! "

    .line 147
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 153
    move-result-wide v9

    .line 154
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v1, v2, v7}, Lcom/android/server/HeimdAllFsService;->doCompressPackages(Ljava/util/List;Z)V

    .line 167
    const-string v0, "/data/log"

    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 172
    move-result-object v4

    .line 173
    const-string/jumbo v9, "doCompressFilesInDir Start!! /data/log"

    .line 176
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_0
    new-array v9, v6, [Ljava/lang/String;

    .line 181
    invoke-static {v0, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 184
    move-result-object v0

    .line 185
    new-array v9, v6, [Ljava/nio/file/FileVisitOption;

    .line 187
    invoke-static {v0, v9}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    .line 190
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :try_start_1
    new-instance v0, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;

    .line 193
    const/4 v10, 0x3

    .line 194
    invoke-direct {v0, v10}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 197
    invoke-interface {v9, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 200
    move-result-object v0

    .line 201
    new-instance v10, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;

    .line 203
    const/4 v11, 0x4

    .line 204
    invoke-direct {v10, v11}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 207
    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 210
    move-result-object v0

    .line 211
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 214
    move-result-object v10

    .line 215
    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-interface {v9}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    goto :goto_4

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    move-object v10, v0

    .line 227
    if-eqz v9, :cond_4

    .line 229
    :try_start_3
    invoke-interface {v9}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    goto :goto_2

    .line 233
    :catchall_1
    move-exception v0

    .line 234
    move-object v9, v0

    .line 235
    :try_start_4
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 238
    goto :goto_2

    .line 239
    :catch_0
    const/4 v0, 0x0

    .line 240
    goto :goto_3

    .line 241
    :cond_4
    :goto_2
    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 242
    :catch_1
    :goto_3
    const-string v9, "Error while reading dir: /data/log"

    .line 244
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_4
    if-eqz v0, :cond_6

    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 252
    move-result-object v0

    .line 253
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_6

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    move-result-object v9

    .line 263
    check-cast v9, Ljava/nio/file/Path;

    .line 265
    iget-object v10, v1, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Lcom/android/server/HeimdAllFsService$1;

    .line 267
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 270
    move-result v10

    .line 271
    if-nez v10, :cond_5

    .line 273
    goto :goto_6

    .line 274
    :cond_5
    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 277
    move-result-object v9

    .line 278
    invoke-virtual {v1, v9, v7}, Lcom/android/server/HeimdAllFsService;->doCompressAction(Ljava/lang/String;Z)V

    .line 281
    goto :goto_5

    .line 282
    :cond_6
    :goto_6
    const-string v0, "HeimdAllFS Comp/Decomp process complete"

    .line 284
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 290
    move-result-object v4

    .line 291
    const-string v9, ""

    .line 293
    move v10, v6

    .line 294
    move v12, v10

    .line 295
    move-object v0, v9

    .line 296
    move-object v11, v0

    .line 297
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 300
    move-result v13

    .line 301
    if-ge v10, v13, :cond_10

    .line 303
    iget-object v13, v1, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Lcom/android/server/HeimdAllFsService$1;

    .line 305
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 308
    move-result v13

    .line 309
    if-nez v13, :cond_7

    .line 311
    goto/16 :goto_e

    .line 313
    :cond_7
    iget-object v13, v1, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Lcom/android/server/HeimdAllFsService$1;

    .line 315
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result v13

    .line 319
    if-nez v13, :cond_8

    .line 321
    const-string v2, "Break!!"

    .line 323
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    goto/16 :goto_e

    .line 328
    :cond_8
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    move-result-object v13

    .line 332
    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 334
    iget-object v13, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 336
    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 338
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 341
    move-result v13

    .line 342
    if-nez v13, :cond_9

    .line 344
    goto/16 :goto_d

    .line 346
    :cond_9
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 352
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 354
    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 356
    invoke-static {v13}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_b

    .line 362
    const-string v0, "Incremental APK in bigdata scan!!"

    .line 364
    invoke-static {v0, v13, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_a
    move-object v0, v13

    .line 368
    goto/16 :goto_d

    .line 370
    :cond_b
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_c

    .line 376
    const/4 v0, 0x3

    .line 377
    move-object v11, v13

    .line 378
    goto :goto_8

    .line 379
    :cond_c
    const/4 v0, 0x2

    .line 380
    :goto_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 383
    move-result v15

    .line 384
    sub-int/2addr v15, v7

    .line 385
    if-ne v10, v15, :cond_d

    .line 387
    or-int/lit8 v0, v0, 0x4

    .line 389
    move v12, v7

    .line 390
    :cond_d
    invoke-virtual {v1, v0, v13}, Lcom/android/server/HeimdAllFsService;->scanCompressedFileAction(ILjava/lang/String;)V

    .line 393
    and-int/lit8 v15, v0, -0x2

    .line 395
    new-instance v0, Ljava/io/File;

    .line 397
    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    new-instance v5, Ljava/io/File;

    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    .line 404
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 410
    move-result-object v14

    .line 411
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v14, "/oat"

    .line 416
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    move-result-object v7

    .line 423
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 429
    move-result v5

    .line 430
    if-eqz v5, :cond_f

    .line 432
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 434
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    move-result-object v0

    .line 451
    new-array v5, v6, [Ljava/lang/String;

    .line 453
    invoke-static {v0, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 456
    move-result-object v0

    .line 457
    new-array v5, v6, [Ljava/nio/file/FileVisitOption;

    .line 459
    const/4 v7, 0x2

    .line 460
    invoke-static {v0, v7, v5}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    .line 463
    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 464
    :try_start_6
    new-instance v0, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;

    .line 466
    const/4 v7, 0x7

    .line 467
    invoke-direct {v0, v7}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 470
    invoke-interface {v5, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 473
    move-result-object v0

    .line 474
    new-instance v7, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;

    .line 476
    const/4 v14, 0x1

    .line 477
    invoke-direct {v7, v14}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 480
    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 483
    move-result-object v0

    .line 484
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 487
    move-result-object v7

    .line 488
    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 491
    move-result-object v0

    .line 492
    check-cast v0, Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 494
    :try_start_7
    invoke-interface {v5}, Ljava/util/stream/Stream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 497
    goto :goto_b

    .line 498
    :catchall_2
    move-exception v0

    .line 499
    move-object v7, v0

    .line 500
    if-eqz v5, :cond_e

    .line 502
    :try_start_8
    invoke-interface {v5}, Ljava/util/stream/Stream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 505
    goto :goto_9

    .line 506
    :catchall_3
    move-exception v0

    .line 507
    move-object v5, v0

    .line 508
    :try_start_9
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 511
    goto :goto_9

    .line 512
    :catch_2
    const/4 v0, 0x0

    .line 513
    goto :goto_a

    .line 514
    :cond_e
    :goto_9
    throw v7
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 515
    :catch_3
    :goto_a
    const-string v5, "Error while reading oat path"

    .line 517
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    goto :goto_b

    .line 521
    :cond_f
    const/4 v0, 0x0

    .line 522
    :goto_b
    if-eqz v0, :cond_a

    .line 524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 527
    move-result-object v0

    .line 528
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    move-result v5

    .line 532
    if-eqz v5, :cond_a

    .line 534
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    move-result-object v5

    .line 538
    check-cast v5, Ljava/nio/file/Path;

    .line 540
    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 543
    move-result-object v5

    .line 544
    invoke-virtual {v1, v15, v5}, Lcom/android/server/HeimdAllFsService;->scanCompressedFileAction(ILjava/lang/String;)V

    .line 547
    goto :goto_c

    .line 548
    :goto_d
    add-int/lit8 v10, v10, 0x1

    .line 550
    const/4 v7, 0x1

    .line 551
    goto/16 :goto_7

    .line 553
    :cond_10
    :goto_e
    if-nez v12, :cond_11

    .line 555
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    move-result v2

    .line 559
    if-nez v2, :cond_11

    .line 561
    const-string v2, "Last commit APK!!"

    .line 563
    invoke-static {v2, v0, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x4

    .line 567
    invoke-virtual {v1, v0, v11}, Lcom/android/server/HeimdAllFsService;->scanCompressedFileAction(ILjava/lang/String;)V

    .line 570
    :cond_11
    return-void
.end method

.method public final waitForFinished()V
    .locals 2

    .line 1
    const-string v0, "HeimdAllFS"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    const-string/jumbo v1, "waitForFinished, HeimdAllLatch await"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 21
    :cond_0
    const-string/jumbo p0, "waitForFinished, HeimdAllLatch await End"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string p0, "Interrupt while waiting for heimdallFsLatch:CountDownLatch(1)"

    .line 30
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return-void
.end method
