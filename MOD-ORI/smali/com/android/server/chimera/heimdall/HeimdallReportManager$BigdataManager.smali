.class public final Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBigdataInfoList:Ljava/util/ArrayList;

.field public final mSemHqmManager:Landroid/os/SemHqmManager;

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/HeimdallReportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallReportManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "HqmManagerService"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/os/SemHqmManager;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mBigdataInfoList:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance p1, Ljava/io/File;

    .line 24
    .line 25
    const-string v0, "/data/misc/pageboost/heimdall_last_bigdata_string"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    .line 44
    .line 45
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 53
    .line 54
    .line 55
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    new-instance v4, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;

    .line 62
    .line 63
    invoke-direct {v4, v3}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v4, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0, v4}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->addBigdataInfoList(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    const-string p0, "Big data backup file is deleted during importing."

    .line 83
    .line 84
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const-string p0, "Big data backup file is NOT deleted during importing."

    .line 89
    .line 90
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    const-string p0, "Import BigdataInfoList"

    .line 94
    .line 95
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    .line 97
    .line 98
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 99
    .line 100
    .line 101
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 102
    .line 103
    .line 104
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_9

    .line 108
    :catch_0
    move-exception p0

    .line 109
    goto :goto_8

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    goto :goto_6

    .line 112
    :catchall_2
    move-exception p0

    .line 113
    goto :goto_4

    .line 114
    :goto_2
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :catchall_3
    move-exception p1

    .line 119
    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    :goto_3
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 123
    :goto_4
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catchall_4
    move-exception p1

    .line 128
    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :goto_5
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 132
    :goto_6
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 133
    .line 134
    .line 135
    goto :goto_7

    .line 136
    :catchall_5
    move-exception p1

    .line 137
    :try_start_d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :goto_7
    throw p0
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 141
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_9

    .line 149
    :catch_1
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_9
    return-void
.end method


# virtual methods
.method public final addBigdataInfoList(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mBigdataInfoList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "add BigdataInfo to list. "

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;

    .line 20
    .line 21
    iget-object v3, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v3, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->versionName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->versionName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iget p0, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->globalKillCnt:I

    .line 42
    .line 43
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->globalKillCnt:I

    .line 44
    .line 45
    add-int/2addr p0, v0

    .line 46
    iput p0, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->globalKillCnt:I

    .line 47
    .line 48
    iget p0, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->specKillCnt:I

    .line 49
    .line 50
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->specKillCnt:I

    .line 51
    .line 52
    add-int/2addr p0, v0

    .line 53
    iput p0, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->specKillCnt:I

    .line 54
    .line 55
    iget p0, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->realKillCnt:I

    .line 56
    .line 57
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->realKillCnt:I

    .line 58
    .line 59
    add-int/2addr p0, v0

    .line 60
    iput p0, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->realKillCnt:I

    .line 61
    .line 62
    iget p0, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->memoryUsage:I

    .line 63
    .line 64
    iget p1, p1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->memoryUsage:I

    .line 65
    .line 66
    if-ge p0, p1, :cond_1

    .line 67
    .line 68
    iput p1, v1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->memoryUsage:I

    .line 69
    .line 70
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->-$$Nest$mtoJsonData(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->mBigdataInfoList:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->-$$Nest$mtoJsonData(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method
