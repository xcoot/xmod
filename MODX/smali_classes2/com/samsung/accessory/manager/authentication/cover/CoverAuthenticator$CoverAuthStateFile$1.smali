.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field public final synthetic val$extraData:[B

.field public final synthetic val$id:[B

.field public final synthetic val$uri:[B


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$id:[B

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$uri:[B

    .line 6
    .line 7
    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$extraData:[B

    .line 8
    .line 9
    const-string p1, "AuthStateUpdater"

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mTmpDir:Ljava/io/File;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "An authentication state changed, updating..."

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_1
    const-string v2, "journal"

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mTmpDir:Ljava/io/File;

    .line 23
    .line 24
    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Ljava/io/FileOutputStream;

    .line 29
    .line 30
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    .line 32
    .line 33
    :try_start_2
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$id:[B

    .line 34
    .line 35
    array-length v1, v1

    .line 36
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$id:[B

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$uri:[B

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    array-length v1, v1

    .line 49
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$uri:[B

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    move-object v1, v3

    .line 60
    goto :goto_5

    .line 61
    :catch_0
    move-exception v1

    .line 62
    goto :goto_2

    .line 63
    :catch_1
    move-object v1, v3

    .line 64
    goto :goto_3

    .line 65
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$extraData:[B

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    array-length v1, v1

    .line 70
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$extraData:[B

    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 79
    .line 80
    .line 81
    new-instance v1, Ljava/io/File;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mPath:Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 96
    .line 97
    const-string v2, "An authentication state updated"

    .line 98
    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    :goto_1
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :catchall_1
    move-exception p0

    .line 107
    goto :goto_6

    .line 108
    :catchall_2
    move-exception p0

    .line 109
    goto :goto_5

    .line 110
    :catch_2
    move-exception v2

    .line 111
    move-object v3, v1

    .line 112
    move-object v1, v2

    .line 113
    :goto_2
    :try_start_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 116
    .line 117
    const-string v2, "Failed to write authentication state"

    .line 118
    .line 119
    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_3
    :goto_3
    :try_start_5
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 124
    .line 125
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 126
    .line 127
    const-string v2, "File does not exist"

    .line 128
    .line 129
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    .line 131
    .line 132
    :try_start_6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 133
    .line 134
    .line 135
    :goto_4
    monitor-exit v0

    .line 136
    return-void

    .line 137
    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :goto_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 142
    throw p0
.end method
