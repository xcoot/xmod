.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final SAFE_LOGGABLE:Z


# instance fields
.field public mBufferedReader:Ljava/io/BufferedReader;

.field public mErrorLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

.field public mIsBase64PackageName:Z

.field public mLineCount:I

.field public mName:Ljava/lang/String;

.field public mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_HIGH:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    sput-boolean v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->SAFE_LOGGABLE:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    const-string v0, "line: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mErrorLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 5
    .line 6
    if-eqz v2, :cond_3

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mLineCount:I

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-virtual {p0, v3, v0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->log(ILjava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mErrorLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    :goto_0
    move-object v3, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    iget-object v3, v0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    monitor-exit v2

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v4, v0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_1
    if-nez v3, :cond_2

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    :try_start_2
    iget-object v0, v0, Lcom/samsung/android/server/util/CoreLogger;->mDumpTitle:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0, v3}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_3
    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catchall_2
    move-exception v0

    .line 84
    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    .line 85
    .line 86
    throw v0

    .line 87
    :cond_4
    :goto_4
    return-void
.end method

.method public final getPackageFeatureGroupDataInner()Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
    .locals 11

    .line 1
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mVersion:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mIsBase64PackageName:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mVersion:I

    .line 17
    .line 18
    const v3, 0x7895c0a4

    .line 19
    .line 20
    .line 21
    if-gt v0, v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v0, v2

    .line 27
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x6

    .line 35
    if-eqz v3, :cond_9

    .line 36
    .line 37
    iget v6, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mLineCount:I

    .line 38
    .line 39
    add-int/2addr v6, v2

    .line 40
    iput v6, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mLineCount:I

    .line 41
    .line 42
    const-string v6, ","

    .line 43
    .line 44
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    aget-object v7, v6, v1

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    const-string v8, "999999"

    .line 53
    .line 54
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_2

    .line 59
    .line 60
    move v0, v2

    .line 61
    goto :goto_5

    .line 62
    :cond_2
    array-length v8, v6

    .line 63
    const-string v9, "get: "

    .line 64
    .line 65
    if-gt v8, v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-boolean v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->SAFE_LOGGABLE:Z

    .line 72
    .line 73
    invoke-virtual {p0, v5, v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->log(ILjava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    return-object v4

    .line 77
    :cond_3
    aget-object v4, v6, v2

    .line 78
    .line 79
    iget-boolean v5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mIsBase64PackageName:Z

    .line 80
    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    sget-object v5, Lcom/samsung/android/server/util/CoreEncryptor;->sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    new-instance v5, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 94
    .line 95
    .line 96
    move-object v4, v5

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const-string v4, ""

    .line 99
    .line 100
    :cond_5
    :goto_2
    const/4 v5, 0x2

    .line 101
    if-le v8, v5, :cond_6

    .line 102
    .line 103
    aget-object v5, v6, v5

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    sget-object v5, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->EMPTY_STRING:Ljava/lang/String;

    .line 107
    .line 108
    :goto_3
    const/4 v10, 0x3

    .line 109
    if-le v8, v10, :cond_7

    .line 110
    .line 111
    aget-object v6, v6, v10

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    sget-object v6, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->EMPTY_STRING:Ljava/lang/String;

    .line 115
    .line 116
    :goto_4
    sget-object v8, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->EMPTY_STRING:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_8

    .line 123
    .line 124
    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    sget-boolean v8, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->SAFE_LOGGABLE:Z

    .line 129
    .line 130
    invoke-virtual {p0, v10, v3, v8}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->log(ILjava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 134
    .line 135
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->getPackageFeature(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3, v7, v4, v6}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    .line 144
    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_a
    const-string v0, "Invalid!"

    .line 149
    .line 150
    invoke-virtual {p0, v5, v0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->log(ILjava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    return-object v4
.end method

.method public final log(ILjava/lang/String;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mErrorLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "PackageFeature_"

    .line 11
    .line 12
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, "_"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mVersion:I

    .line 31
    .line 32
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mIsBase64PackageName:Z

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz p3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object v4, Lcom/samsung/android/server/util/CoreEncryptor;->sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    new-instance v4, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3, v2}, Landroid/util/Base64;->encode([BI)[B

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 65
    .line 66
    .line 67
    move-object v3, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move-object v3, v1

    .line 70
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    new-instance v0, Lcom/samsung/android/server/util/CoreLogger;

    .line 78
    .line 79
    const-string v5, "CoreLogger"

    .line 80
    .line 81
    const/16 v6, 0x14

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    move-object v4, v0

    .line 85
    move v8, v9

    .line 86
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/util/CoreLogger;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mErrorLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 90
    .line 91
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mErrorLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 92
    .line 93
    if-eqz p3, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    sget-object p3, Lcom/samsung/android/server/util/CoreEncryptor;->sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    .line 98
    if-eqz p2, :cond_4

    .line 99
    .line 100
    new-instance p3, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p2, v2}, Landroid/util/Base64;->encode([BI)[B

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([B)V

    .line 111
    .line 112
    .line 113
    move-object p2, p3

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    move-object p2, v1

    .line 116
    :goto_1
    const/4 p3, 0x0

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final open(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, ","

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aget-object v3, v2, v3

    .line 17
    .line 18
    iput-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mName:Ljava/lang/String;

    .line 19
    .line 20
    aget-object v2, v2, v0

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mVersion:I

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mIsBase64PackageName:Z

    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mName:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v2, "It hasn\'t been opened yet."

    .line 42
    .line 43
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v3, "open: "

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, ", "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x6

    .line 72
    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->log(ILjava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method
