.class public final Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBegin:J

.field public mDeviceInfo:Ljava/util/List;

.field public mDumpFilesList:Ljava/util/ArrayList;

.field public mDumpResult:Z

.field public mEnd:J

.field public mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field public mHeader:Ljava/lang/StringBuilder;

.field public mHeaderDate:Ljava/text/SimpleDateFormat;

.field public mIsFullDump:Z

.field public mObserver:Lcom/android/server/enterprise/auditlog/Admin;

.field public mPackageName:Ljava/lang/String;

.field public mPfd:Landroid/os/ParcelFileDescriptor;

.field public mTemporaryDirectory:Ljava/io/File;

.field public mTemporaryPath:Ljava/lang/String;


# direct methods
.method public static safeClose(Ljava/io/Closeable;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "Dumper"

    .line 9
    .line 10
    const-string v1, "Failed to close resource."

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final appendFileNodeToTemporaryFile(Ljava/io/File;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "Dumper"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "/temp.gz"

    .line 34
    .line 35
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Ljava/io/FileOutputStream;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-direct {p0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 49
    .line 50
    .line 51
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 52
    .line 53
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    const/high16 p1, 0x10000

    .line 57
    .line 58
    :try_start_2
    new-array p1, p1, [B

    .line 59
    .line 60
    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-lez v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    move-object v0, v3

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception p1

    .line 74
    move-object v0, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 77
    .line 78
    .line 79
    :catch_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 80
    .line 81
    .line 82
    :catch_2
    return v4

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :catch_3
    move-exception p1

    .line 86
    goto :goto_1

    .line 87
    :catchall_2
    move-exception p1

    .line 88
    move-object p0, v0

    .line 89
    goto :goto_2

    .line 90
    :catch_4
    move-exception p1

    .line 91
    move-object p0, v0

    .line 92
    :goto_1
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v4, "Failed to append file: "

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 119
    .line 120
    .line 121
    :catch_5
    :cond_2
    if-eqz p0, :cond_3

    .line 122
    .line 123
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 124
    .line 125
    .line 126
    :catch_6
    :cond_3
    return v2

    .line 127
    :goto_2
    if-eqz v0, :cond_4

    .line 128
    .line 129
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 130
    .line 131
    .line 132
    :catch_7
    :cond_4
    if-eqz p0, :cond_5

    .line 133
    .line 134
    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 135
    .line 136
    .line 137
    :catch_8
    :cond_5
    throw p1

    .line 138
    :cond_6
    :goto_3
    const-string p0, "Invalid temporary directory, cannot create file"

    .line 139
    .line 140
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return v2
.end method

.method public final concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .locals 3

    .line 1
    const-string v0, "Dumper"

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    const-string p1, "Failed to append tempHeaderFile"

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 56
    .line 57
    iget-boolean v2, p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 58
    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v2, p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_1

    .line 83
    .line 84
    const-string p1, "Failed to append file node"

    .line 85
    .line 86
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    new-instance p1, Ljava/io/File;

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p0, "/temp.gz"

    .line 114
    .line 115
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    move-object v1, p1

    .line 126
    goto :goto_2

    .line 127
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string/jumbo p2, "concatenateFiles.Exception: "

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p0, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_2
    return-object v1
.end method

.method public final createHeader()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    const-string/jumbo v1, "yyyy-MM-dd \'at\' HH:mm:ss z"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "----------------------------------------------\n"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "\n"

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "Dump Log Generated: "

    .line 75
    .line 76
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    .line 80
    .line 81
    new-instance v4, Ljava/util/Date;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final createHeaderTempFile(Ljava/io/File;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    .line 6
    .line 7
    :try_start_1
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    .line 8
    .line 9
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    .line 16
    .line 17
    :try_start_2
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_3
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 37
    .line 38
    .line 39
    :catch_1
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    move-object v0, p1

    .line 42
    goto :goto_0

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :catchall_2
    move-exception p0

    .line 46
    move-object v1, v0

    .line 47
    :goto_0
    if-eqz v0, :cond_0

    .line 48
    .line 49
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 53
    .line 54
    .line 55
    :catch_2
    :cond_0
    if-eqz v1, :cond_1

    .line 56
    .line 57
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 58
    .line 59
    .line 60
    :catch_3
    :cond_1
    throw p0
.end method

.method public final fullDump()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string/jumbo v2, "failed to close fileStreamFull at fullDump"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v3, "failed to close outStream at fullDump"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v4, "failed to close fileStream at fullDump"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v5, "failed to close gizp stream at fullDump"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v6, "failed to close bufferedReader at fullDump"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v7, "run.IOException "

    .line 19
    .line 20
    .line 21
    const-string v8, "Dumper"

    .line 22
    .line 23
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v9, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 30
    .line 31
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    .line 32
    .line 33
    iget-object v13, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object v13

    .line 39
    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 40
    .line 41
    .line 42
    :try_start_1
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    .line 43
    .line 44
    new-instance v14, Ljava/io/BufferedOutputStream;

    .line 45
    .line 46
    invoke-direct {v14, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v13, v14}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 50
    .line 51
    .line 52
    :try_start_2
    iget-object v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 53
    .line 54
    if-eqz v14, :cond_5

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    const/4 v15, 0x0

    .line 59
    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v16

    .line 63
    if-eqz v16, :cond_4

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v16

    .line 69
    move-object/from16 v11, v16

    .line 70
    .line 71
    check-cast v11, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 72
    .line 73
    iget-boolean v10, v11, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 74
    .line 75
    if-nez v10, :cond_1

    .line 76
    .line 77
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    move-object v1, v2

    .line 86
    move-object v10, v9

    .line 87
    :goto_1
    move-object v9, v14

    .line 88
    :goto_2
    move-object/from16 v17, v15

    .line 89
    .line 90
    :goto_3
    const/4 v11, 0x0

    .line 91
    const/4 v14, 0x0

    .line 92
    :goto_4
    move-object v2, v0

    .line 93
    goto/16 :goto_1f

    .line 94
    .line 95
    :catch_0
    move-exception v0

    .line 96
    move-object v10, v9

    .line 97
    :goto_5
    move-object v9, v14

    .line 98
    :goto_6
    move-object/from16 v17, v15

    .line 99
    .line 100
    :goto_7
    const/4 v11, 0x0

    .line 101
    const/4 v14, 0x0

    .line 102
    const/4 v15, 0x0

    .line 103
    goto/16 :goto_18

    .line 104
    .line 105
    :cond_1
    iget-object v10, v11, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 106
    .line 107
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_0

    .line 112
    .line 113
    new-instance v10, Ljava/io/FileInputStream;

    .line 114
    .line 115
    iget-object v11, v11, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 116
    .line 117
    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .line 119
    .line 120
    :try_start_4
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    .line 121
    .line 122
    invoke-direct {v9, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 123
    .line 124
    .line 125
    :try_start_5
    new-instance v11, Ljava/io/InputStreamReader;

    .line 126
    .line 127
    const-string v14, "UTF-8"

    .line 128
    .line 129
    invoke-direct {v11, v9, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v14, Ljava/io/BufferedReader;

    .line 133
    .line 134
    invoke-direct {v14, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_8
    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    if-eqz v11, :cond_3

    .line 142
    .line 143
    iget-object v15, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 144
    .line 145
    iget-object v15, v15, Lcom/android/server/enterprise/auditlog/Filter;->mPattern:Ljava/util/regex/Pattern;

    .line 146
    .line 147
    invoke-virtual {v15, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    if-eqz v15, :cond_2

    .line 156
    .line 157
    new-instance v15, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v11, "\n"

    .line 166
    .line 167
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-virtual {v13, v11}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 179
    .line 180
    .line 181
    goto :goto_8

    .line 182
    :catchall_1
    move-exception v0

    .line 183
    move-object v1, v2

    .line 184
    move-object/from16 v17, v14

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catch_1
    move-exception v0

    .line 188
    move-object/from16 v17, v14

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_3
    move-object v15, v14

    .line 192
    move-object v14, v9

    .line 193
    move-object v9, v10

    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :catchall_2
    move-exception v0

    .line 197
    move-object v1, v2

    .line 198
    goto :goto_2

    .line 199
    :catch_2
    move-exception v0

    .line 200
    goto :goto_6

    .line 201
    :catchall_3
    move-exception v0

    .line 202
    move-object v1, v2

    .line 203
    goto :goto_1

    .line 204
    :catch_3
    move-exception v0

    .line 205
    goto :goto_5

    .line 206
    :cond_4
    move-object/from16 v17, v15

    .line 207
    .line 208
    const/4 v10, 0x0

    .line 209
    const/4 v11, 0x0

    .line 210
    goto/16 :goto_10

    .line 211
    .line 212
    :cond_5
    if-eqz v9, :cond_9

    .line 213
    .line 214
    :try_start_7
    new-instance v0, Ljava/io/File;

    .line 215
    .line 216
    iget-object v9, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 217
    .line 218
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_6

    .line 228
    .line 229
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 232
    .line 233
    .line 234
    goto :goto_d

    .line 235
    :catchall_4
    move-exception v0

    .line 236
    move-object v1, v2

    .line 237
    const/4 v9, 0x0

    .line 238
    const/4 v10, 0x0

    .line 239
    const/4 v11, 0x0

    .line 240
    :goto_9
    const/4 v14, 0x0

    .line 241
    :goto_a
    const/16 v17, 0x0

    .line 242
    .line 243
    goto/16 :goto_4

    .line 244
    .line 245
    :catch_4
    move-exception v0

    .line 246
    const/4 v9, 0x0

    .line 247
    const/4 v10, 0x0

    .line 248
    const/4 v11, 0x0

    .line 249
    :goto_b
    const/4 v14, 0x0

    .line 250
    :goto_c
    const/4 v15, 0x0

    .line 251
    const/16 v17, 0x0

    .line 252
    .line 253
    goto/16 :goto_18

    .line 254
    .line 255
    :cond_6
    :goto_d
    new-instance v9, Ljava/io/File;

    .line 256
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 263
    .line 264
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v10, "/header"

    .line 272
    .line 273
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 281
    .line 282
    .line 283
    :try_start_8
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v1, v9, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    if-eqz v0, :cond_8

    .line 293
    .line 294
    new-instance v10, Ljava/io/FileInputStream;

    .line 295
    .line 296
    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 297
    .line 298
    .line 299
    const/high16 v11, 0x10000

    .line 300
    .line 301
    :try_start_9
    new-array v11, v11, [B

    .line 302
    .line 303
    :goto_e
    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    if-lez v14, :cond_7

    .line 308
    .line 309
    const/4 v15, 0x0

    .line 310
    invoke-virtual {v12, v11, v15, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 311
    .line 312
    .line 313
    goto :goto_e

    .line 314
    :catchall_5
    move-exception v0

    .line 315
    move-object v1, v2

    .line 316
    move-object v11, v9

    .line 317
    move-object v14, v10

    .line 318
    const/4 v9, 0x0

    .line 319
    const/4 v10, 0x0

    .line 320
    goto :goto_a

    .line 321
    :catch_5
    move-exception v0

    .line 322
    move-object v11, v9

    .line 323
    move-object v14, v10

    .line 324
    const/4 v9, 0x0

    .line 325
    const/4 v10, 0x0

    .line 326
    goto :goto_c

    .line 327
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 328
    .line 329
    .line 330
    move-object v11, v9

    .line 331
    const/4 v9, 0x0

    .line 332
    :goto_f
    const/4 v14, 0x0

    .line 333
    const/16 v17, 0x0

    .line 334
    .line 335
    goto :goto_10

    .line 336
    :catchall_6
    move-exception v0

    .line 337
    move-object v1, v2

    .line 338
    move-object v11, v9

    .line 339
    const/4 v9, 0x0

    .line 340
    const/4 v10, 0x0

    .line 341
    goto :goto_9

    .line 342
    :catch_6
    move-exception v0

    .line 343
    move-object v11, v9

    .line 344
    const/4 v9, 0x0

    .line 345
    const/4 v10, 0x0

    .line 346
    goto :goto_b

    .line 347
    :cond_8
    move-object v11, v9

    .line 348
    const/4 v9, 0x0

    .line 349
    const/4 v10, 0x0

    .line 350
    goto :goto_f

    .line 351
    :cond_9
    const/4 v9, 0x0

    .line 352
    const/4 v10, 0x0

    .line 353
    const/4 v11, 0x0

    .line 354
    goto :goto_f

    .line 355
    :goto_10
    if-eqz v11, :cond_a

    .line 356
    .line 357
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 358
    .line 359
    .line 360
    :cond_a
    :try_start_a
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 364
    .line 365
    .line 366
    goto :goto_11

    .line 367
    :catch_7
    move-exception v0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    :goto_11
    if-eqz v17, :cond_b

    .line 388
    .line 389
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 390
    .line 391
    .line 392
    goto :goto_12

    .line 393
    :catch_8
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    :cond_b
    :goto_12
    if-eqz v14, :cond_c

    .line 397
    .line 398
    :try_start_c
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 399
    .line 400
    .line 401
    goto :goto_13

    .line 402
    :catch_9
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    :cond_c
    :goto_13
    if-eqz v9, :cond_d

    .line 406
    .line 407
    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 408
    .line 409
    .line 410
    goto :goto_14

    .line 411
    :catch_a
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    :cond_d
    :goto_14
    :try_start_e
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 415
    .line 416
    .line 417
    goto :goto_15

    .line 418
    :catch_b
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    :goto_15
    if-eqz v10, :cond_14

    .line 422
    .line 423
    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 424
    .line 425
    .line 426
    goto/16 :goto_1e

    .line 427
    .line 428
    :catch_c
    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    goto/16 :goto_1e

    .line 432
    .line 433
    :catchall_7
    move-exception v0

    .line 434
    move-object v1, v2

    .line 435
    const/4 v9, 0x0

    .line 436
    const/4 v10, 0x0

    .line 437
    const/4 v11, 0x0

    .line 438
    :goto_16
    const/4 v13, 0x0

    .line 439
    goto/16 :goto_9

    .line 440
    .line 441
    :catch_d
    move-exception v0

    .line 442
    const/4 v9, 0x0

    .line 443
    const/4 v10, 0x0

    .line 444
    const/4 v11, 0x0

    .line 445
    :goto_17
    const/4 v13, 0x0

    .line 446
    goto/16 :goto_b

    .line 447
    .line 448
    :catchall_8
    move-exception v0

    .line 449
    move-object v1, v2

    .line 450
    const/4 v9, 0x0

    .line 451
    const/4 v10, 0x0

    .line 452
    const/4 v11, 0x0

    .line 453
    const/4 v12, 0x0

    .line 454
    goto :goto_16

    .line 455
    :catch_e
    move-exception v0

    .line 456
    const/4 v9, 0x0

    .line 457
    const/4 v10, 0x0

    .line 458
    const/4 v11, 0x0

    .line 459
    const/4 v12, 0x0

    .line 460
    goto :goto_17

    .line 461
    :goto_18
    :try_start_10
    iput-boolean v15, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 462
    .line 463
    new-instance v15, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 466
    .line 467
    .line 468
    move-object/from16 v16, v2

    .line 469
    .line 470
    :try_start_11
    const-string/jumbo v2, "fullDump.Exception: "

    .line 471
    .line 472
    .line 473
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    iget-object v1, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v2, v0, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 497
    .line 498
    .line 499
    if-eqz v11, :cond_e

    .line 500
    .line 501
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 502
    .line 503
    .line 504
    :cond_e
    if-eqz v13, :cond_f

    .line 505
    .line 506
    :try_start_12
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    .line 510
    .line 511
    .line 512
    goto :goto_19

    .line 513
    :catch_f
    move-exception v0

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    :cond_f
    :goto_19
    if-eqz v17, :cond_10

    .line 534
    .line 535
    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    .line 536
    .line 537
    .line 538
    goto :goto_1a

    .line 539
    :catch_10
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    :cond_10
    :goto_1a
    if-eqz v9, :cond_11

    .line 543
    .line 544
    :try_start_14
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    .line 545
    .line 546
    .line 547
    goto :goto_1b

    .line 548
    :catch_11
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    :cond_11
    :goto_1b
    if-eqz v10, :cond_12

    .line 552
    .line 553
    :try_start_15
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    .line 554
    .line 555
    .line 556
    goto :goto_1c

    .line 557
    :catch_12
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    :cond_12
    :goto_1c
    if-eqz v12, :cond_13

    .line 561
    .line 562
    :try_start_16
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_13

    .line 563
    .line 564
    .line 565
    goto :goto_1d

    .line 566
    :catch_13
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    :cond_13
    :goto_1d
    if-eqz v14, :cond_14

    .line 570
    .line 571
    :try_start_17
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_14

    .line 572
    .line 573
    .line 574
    goto :goto_1e

    .line 575
    :catch_14
    move-object/from16 v1, v16

    .line 576
    .line 577
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    :cond_14
    :goto_1e
    return-void

    .line 581
    :catchall_9
    move-exception v0

    .line 582
    move-object/from16 v1, v16

    .line 583
    .line 584
    goto/16 :goto_4

    .line 585
    .line 586
    :catchall_a
    move-exception v0

    .line 587
    move-object v1, v2

    .line 588
    goto/16 :goto_4

    .line 589
    .line 590
    :goto_1f
    if-eqz v11, :cond_15

    .line 591
    .line 592
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 593
    .line 594
    .line 595
    :cond_15
    if-eqz v13, :cond_16

    .line 596
    .line 597
    :try_start_18
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_15

    .line 601
    .line 602
    .line 603
    goto :goto_20

    .line 604
    :catch_15
    move-exception v0

    .line 605
    new-instance v11, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    :cond_16
    :goto_20
    if-eqz v17, :cond_17

    .line 625
    .line 626
    :try_start_19
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_16

    .line 627
    .line 628
    .line 629
    goto :goto_21

    .line 630
    :catch_16
    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    :cond_17
    :goto_21
    if-eqz v9, :cond_18

    .line 634
    .line 635
    :try_start_1a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_17

    .line 636
    .line 637
    .line 638
    goto :goto_22

    .line 639
    :catch_17
    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    :cond_18
    :goto_22
    if-eqz v10, :cond_19

    .line 643
    .line 644
    :try_start_1b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_18

    .line 645
    .line 646
    .line 647
    goto :goto_23

    .line 648
    :catch_18
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    :cond_19
    :goto_23
    if-eqz v12, :cond_1a

    .line 652
    .line 653
    :try_start_1c
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_19

    .line 654
    .line 655
    .line 656
    goto :goto_24

    .line 657
    :catch_19
    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .line 659
    .line 660
    :cond_1a
    :goto_24
    if-eqz v14, :cond_1b

    .line 661
    .line 662
    :try_start_1d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1a

    .line 663
    .line 664
    .line 665
    goto :goto_25

    .line 666
    :catch_1a
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .line 668
    .line 669
    :cond_1b
    :goto_25
    throw v2
.end method

.method public final readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    move-object p1, v0

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, v2

    .line 27
    :goto_0
    move-object v4, v3

    .line 28
    :goto_1
    move-object v5, v4

    .line 29
    goto/16 :goto_b

    .line 30
    .line 31
    :catch_0
    move-exception p1

    .line 32
    move-object v1, v0

    .line 33
    move-object v2, v1

    .line 34
    move-object v3, v2

    .line 35
    move-object v4, v3

    .line 36
    move-object v5, v4

    .line 37
    move-object v6, v5

    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :cond_0
    :goto_2
    new-instance v1, Ljava/io/File;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, "Tmp"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    :try_start_2
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    .line 81
    .line 82
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 83
    .line 84
    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 88
    .line 89
    .line 90
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    .line 91
    .line 92
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 93
    .line 94
    .line 95
    :try_start_4
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    .line 96
    .line 97
    invoke-direct {p1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 98
    .line 99
    .line 100
    :try_start_5
    new-instance v5, Ljava/io/InputStreamReader;

    .line 101
    .line 102
    const-string v6, "UTF-8"

    .line 103
    .line 104
    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 105
    .line 106
    .line 107
    :try_start_6
    new-instance v6, Ljava/io/BufferedReader;

    .line 108
    .line 109
    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 110
    .line 111
    .line 112
    :catch_1
    :cond_1
    :goto_3
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    const-string v7, " "

    .line 119
    .line 120
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 124
    const/4 v8, 0x0

    .line 125
    :try_start_8
    aget-object v7, v7, v8

    .line 126
    .line 127
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v7
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 135
    :try_start_9
    iget-wide v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    .line 136
    .line 137
    cmp-long v9, v7, v9

    .line 138
    .line 139
    if-lez v9, :cond_2

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_2
    iget-wide v10, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 143
    .line 144
    cmp-long v7, v7, v10

    .line 145
    .line 146
    if-ltz v7, :cond_1

    .line 147
    .line 148
    if-gtz v9, :cond_1

    .line 149
    .line 150
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 151
    .line 152
    const-string v8, "\n"

    .line 153
    .line 154
    if-eqz v7, :cond_3

    .line 155
    .line 156
    :try_start_a
    iget-object v7, v7, Lcom/android/server/enterprise/auditlog/Filter;->mPattern:Ljava/util/regex/Pattern;

    .line 157
    .line 158
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_1

    .line 167
    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :catchall_1
    move-exception p0

    .line 192
    move-object v0, v6

    .line 193
    goto/16 :goto_b

    .line 194
    .line 195
    :catch_2
    move-exception v0

    .line 196
    move-object v12, v1

    .line 197
    move-object v1, p1

    .line 198
    move-object p1, v0

    .line 199
    move-object v0, v6

    .line 200
    :goto_4
    move-object v6, v12

    .line 201
    goto/16 :goto_9

    .line 202
    .line 203
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_4
    :goto_5
    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 230
    .line 231
    .line 232
    invoke-static {p1}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_a

    .line 245
    .line 246
    :catchall_2
    move-exception p0

    .line 247
    goto/16 :goto_b

    .line 248
    .line 249
    :catch_3
    move-exception v6

    .line 250
    move-object v12, v1

    .line 251
    move-object v1, p1

    .line 252
    move-object p1, v6

    .line 253
    goto :goto_4

    .line 254
    :catchall_3
    move-exception p0

    .line 255
    move-object v5, v0

    .line 256
    goto/16 :goto_b

    .line 257
    .line 258
    :catch_4
    move-exception v5

    .line 259
    move-object v6, v1

    .line 260
    move-object v1, p1

    .line 261
    move-object p1, v5

    .line 262
    move-object v5, v0

    .line 263
    goto :goto_9

    .line 264
    :catchall_4
    move-exception p0

    .line 265
    move-object p1, v0

    .line 266
    move-object v5, p1

    .line 267
    goto :goto_b

    .line 268
    :catch_5
    move-exception p1

    .line 269
    move-object v5, v0

    .line 270
    :goto_6
    move-object v6, v1

    .line 271
    move-object v1, v5

    .line 272
    goto :goto_9

    .line 273
    :catchall_5
    move-exception p0

    .line 274
    move-object p1, v0

    .line 275
    move-object v4, p1

    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :catch_6
    move-exception p1

    .line 279
    move-object v4, v0

    .line 280
    :goto_7
    move-object v5, v4

    .line 281
    goto :goto_6

    .line 282
    :catchall_6
    move-exception p0

    .line 283
    move-object p1, v0

    .line 284
    move-object v3, p1

    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :catch_7
    move-exception p1

    .line 288
    move-object v3, v0

    .line 289
    :goto_8
    move-object v4, v3

    .line 290
    goto :goto_7

    .line 291
    :catch_8
    move-exception p1

    .line 292
    move-object v2, v0

    .line 293
    move-object v3, v2

    .line 294
    goto :goto_8

    .line 295
    :goto_9
    :try_start_b
    const-string v7, "Dumper"

    .line 296
    .line 297
    const-string/jumbo v8, "readFileLineByLine.IOException"

    .line 298
    .line 299
    .line 300
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v7, p1, p0}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 310
    .line 311
    .line 312
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 328
    .line 329
    .line 330
    move-object v1, v6

    .line 331
    :goto_a
    return-object v1

    .line 332
    :catchall_7
    move-exception p0

    .line 333
    move-object p1, v1

    .line 334
    :goto_b
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 335
    .line 336
    .line 337
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 338
    .line 339
    .line 340
    invoke-static {p1}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 341
    .line 342
    .line 343
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 344
    .line 345
    .line 346
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    .line 350
    .line 351
    .line 352
    throw p0
.end method

.method public final removeTempFile()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, "/temp.gz"

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_1
    return-void
.end method

.method public final run()V
    .locals 7

    .line 1
    const-string/jumbo v0, "run.IOException"

    .line 2
    .line 3
    .line 4
    const-string v1, "Dumper"

    .line 5
    .line 6
    const-string/jumbo v2, "run.Exception "

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeader()V

    .line 10
    .line 11
    .line 12
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    cmp-long v3, v3, v5

    .line 17
    .line 18
    if-ltz v3, :cond_1

    .line 19
    .line 20
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 21
    .line 22
    cmp-long v3, v3, v5

    .line 23
    .line 24
    if-gez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v2

    .line 32
    goto :goto_5

    .line 33
    :catch_0
    move-exception v3

    .line 34
    goto :goto_3

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/Admin;

    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 59
    .line 60
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    .line 61
    .line 62
    invoke-virtual {v0, v1, p0}, Lcom/android/server/enterprise/auditlog/Admin;->notifyDumpFinished(ZZ)V

    .line 63
    .line 64
    .line 65
    goto :goto_4

    .line 66
    :goto_3
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 87
    .line 88
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :goto_4
    return-void

    .line 106
    :goto_5
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 107
    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_6
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/Admin;

    .line 118
    .line 119
    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    .line 120
    .line 121
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    .line 122
    .line 123
    invoke-virtual {v0, v1, p0}, Lcom/android/server/enterprise/auditlog/Admin;->notifyDumpFinished(ZZ)V

    .line 124
    .line 125
    .line 126
    throw v2
.end method

.method public final selectDumpInterval()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string/jumbo v2, "failed to close input stream file at selectDumpInterval"

    .line 4
    .line 5
    .line 6
    const-string v3, "Dumper"

    .line 7
    .line 8
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    move v7, v5

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    const/4 v11, 0x0

    .line 28
    if-eqz v10, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    check-cast v10, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 35
    .line 36
    iget-wide v12, v10, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 37
    .line 38
    iget-wide v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    .line 39
    .line 40
    cmp-long v12, v12, v14

    .line 41
    .line 42
    if-gez v12, :cond_0

    .line 43
    .line 44
    move/from16 v16, v7

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const-string/jumbo v12, "com.android.server.enterprise.auditlog"

    .line 48
    .line 49
    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 53
    .line 54
    .line 55
    move-result v13

    .line 56
    if-eqz v13, :cond_1

    .line 57
    .line 58
    iget-object v7, v10, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 59
    .line 60
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    new-instance v9, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 65
    .line 66
    invoke-direct {v9, v8, v12}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-boolean v5, v9, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 70
    .line 71
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move v7, v11

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-wide v13, v10, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 77
    .line 78
    move/from16 v16, v7

    .line 79
    .line 80
    iget-wide v6, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    .line 81
    .line 82
    cmp-long v6, v13, v6

    .line 83
    .line 84
    if-gez v6, :cond_2

    .line 85
    .line 86
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :goto_1
    move/from16 v7, v16

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, v10, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 99
    .line 100
    invoke-direct {v6, v0, v12}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-boolean v5, v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWasWritten:Z

    .line 104
    .line 105
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-object v5, v0

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    const/4 v5, 0x0

    .line 111
    const/4 v6, 0x0

    .line 112
    :goto_2
    new-instance v0, Ljava/io/File;

    .line 113
    .line 114
    iget-object v7, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 130
    .line 131
    .line 132
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 133
    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v10, "/header"

    .line 149
    .line 150
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0, v4}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    .line 164
    .line 165
    .line 166
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 167
    if-eqz v4, :cond_6

    .line 168
    .line 169
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    .line 170
    .line 171
    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 172
    .line 173
    .line 174
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    .line 175
    .line 176
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    .line 184
    .line 185
    const/high16 v0, 0x10000

    .line 186
    .line 187
    :try_start_3
    new-array v0, v0, [B

    .line 188
    .line 189
    :goto_3
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    if-lez v12, :cond_5

    .line 194
    .line 195
    invoke-virtual {v10, v0, v11, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    move-object v1, v0

    .line 201
    move-object v15, v10

    .line 202
    goto/16 :goto_d

    .line 203
    .line 204
    :catch_0
    move-exception v0

    .line 205
    move-object v15, v10

    .line 206
    goto :goto_a

    .line 207
    :cond_5
    move-object v15, v7

    .line 208
    goto :goto_8

    .line 209
    :catchall_1
    move-exception v0

    .line 210
    move-object v1, v0

    .line 211
    :goto_4
    const/4 v15, 0x0

    .line 212
    goto/16 :goto_d

    .line 213
    .line 214
    :catch_1
    move-exception v0

    .line 215
    :goto_5
    const/4 v15, 0x0

    .line 216
    goto :goto_a

    .line 217
    :catchall_2
    move-exception v0

    .line 218
    move-object v1, v0

    .line 219
    :goto_6
    const/4 v7, 0x0

    .line 220
    goto :goto_4

    .line 221
    :catch_2
    move-exception v0

    .line 222
    :goto_7
    const/4 v7, 0x0

    .line 223
    goto :goto_5

    .line 224
    :cond_6
    const/4 v10, 0x0

    .line 225
    const/4 v15, 0x0

    .line 226
    :goto_8
    if-eqz v8, :cond_7

    .line 227
    .line 228
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 229
    .line 230
    .line 231
    :cond_7
    if-eqz v5, :cond_8

    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 234
    .line 235
    .line 236
    :cond_8
    if-eqz v6, :cond_9

    .line 237
    .line 238
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 239
    .line 240
    .line 241
    :cond_9
    if-eqz v9, :cond_a

    .line 242
    .line 243
    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 244
    .line 245
    .line 246
    :cond_a
    if-eqz v4, :cond_b

    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 249
    .line 250
    .line 251
    :cond_b
    if-eqz v15, :cond_c

    .line 252
    .line 253
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 254
    .line 255
    .line 256
    goto :goto_9

    .line 257
    :catch_3
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    :cond_c
    :goto_9
    if-eqz v10, :cond_13

    .line 261
    .line 262
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 263
    .line 264
    .line 265
    goto :goto_c

    .line 266
    :catch_4
    move-exception v0

    .line 267
    move-object v1, v0

    .line 268
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    goto :goto_c

    .line 276
    :catchall_3
    move-exception v0

    .line 277
    move-object v1, v0

    .line 278
    const/4 v4, 0x0

    .line 279
    goto :goto_6

    .line 280
    :catch_5
    move-exception v0

    .line 281
    const/4 v4, 0x0

    .line 282
    goto :goto_7

    .line 283
    :goto_a
    :try_start_6
    const-string v10, "SelectDumpInterval.Exception"

    .line 284
    .line 285
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    iget-object v1, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v10, v0, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 295
    .line 296
    .line 297
    if-eqz v8, :cond_d

    .line 298
    .line 299
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 300
    .line 301
    .line 302
    :cond_d
    if-eqz v5, :cond_e

    .line 303
    .line 304
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 305
    .line 306
    .line 307
    :cond_e
    if-eqz v6, :cond_f

    .line 308
    .line 309
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 310
    .line 311
    .line 312
    :cond_f
    if-eqz v9, :cond_10

    .line 313
    .line 314
    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 315
    .line 316
    .line 317
    :cond_10
    if-eqz v4, :cond_11

    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 320
    .line 321
    .line 322
    :cond_11
    if-eqz v7, :cond_12

    .line 323
    .line 324
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 325
    .line 326
    .line 327
    goto :goto_b

    .line 328
    :catch_6
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    :cond_12
    :goto_b
    if-eqz v15, :cond_13

    .line 332
    .line 333
    :try_start_8
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 334
    .line 335
    .line 336
    :cond_13
    :goto_c
    return-void

    .line 337
    :catchall_4
    move-exception v0

    .line 338
    move-object v1, v0

    .line 339
    :goto_d
    if-eqz v8, :cond_14

    .line 340
    .line 341
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 342
    .line 343
    .line 344
    :cond_14
    if-eqz v5, :cond_15

    .line 345
    .line 346
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 347
    .line 348
    .line 349
    :cond_15
    if-eqz v6, :cond_16

    .line 350
    .line 351
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 352
    .line 353
    .line 354
    :cond_16
    if-eqz v9, :cond_17

    .line 355
    .line 356
    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 357
    .line 358
    .line 359
    :cond_17
    if-eqz v4, :cond_18

    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 362
    .line 363
    .line 364
    :cond_18
    if-eqz v7, :cond_19

    .line 365
    .line 366
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 367
    .line 368
    .line 369
    goto :goto_e

    .line 370
    :catch_7
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    :cond_19
    :goto_e
    if-eqz v15, :cond_1a

    .line 374
    .line 375
    :try_start_a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 376
    .line 377
    .line 378
    goto :goto_f

    .line 379
    :catch_8
    move-exception v0

    .line 380
    move-object v2, v0

    .line 381
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    :cond_1a
    :goto_f
    throw v1
.end method
