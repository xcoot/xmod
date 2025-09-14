.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 2
    .line 3
    const-string p1, "AuthStateReader"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const-string v0, "extra data is"

    .line 2
    .line 3
    const-string/jumbo v1, "uri is"

    .line 4
    .line 5
    .line 6
    const-string v2, "id is"

    .line 7
    .line 8
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 9
    .line 10
    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mTmpDir:Ljava/io/File;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 14
    .line 15
    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v5, "read authentication state"

    .line 18
    .line 19
    .line 20
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    .line 25
    .line 26
    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 27
    .line 28
    iget-object v6, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mPath:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v6, -0x1

    .line 38
    if-eq v4, v6, :cond_0

    .line 39
    .line 40
    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 41
    .line 42
    new-array v4, v4, [B

    .line 43
    .line 44
    iput-object v4, v7, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 50
    .line 51
    iget-object v7, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v8, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    .line 56
    .line 57
    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    move-object v4, v5

    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :catch_0
    move-exception v0

    .line 73
    move-object v4, v5

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-object v4, v5

    .line 76
    goto :goto_3

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eq v2, v6, :cond_1

    .line 82
    .line 83
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 84
    .line 85
    new-array v2, v2, [B

    .line 86
    .line 87
    iput-object v2, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    .line 88
    .line 89
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 93
    .line 94
    iget-object v4, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v7, Ljava/lang/String;

    .line 97
    .line 98
    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    .line 99
    .line 100
    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eq v1, v6, :cond_2

    .line 115
    .line 116
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 117
    .line 118
    new-array v1, v1, [B

    .line 119
    .line 120
    iput-object v1, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    .line 121
    .line 122
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 126
    .line 127
    iget-object v2, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 128
    .line 129
    new-instance v4, Ljava/lang/String;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    .line 132
    .line 133
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :cond_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 146
    .line 147
    const-string v1, "An authentication state loaded"

    .line 148
    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .line 151
    .line 152
    :try_start_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :catchall_1
    move-exception p0

    .line 157
    goto :goto_6

    .line 158
    :catchall_2
    move-exception p0

    .line 159
    goto :goto_5

    .line 160
    :catch_2
    move-exception v0

    .line 161
    :goto_1
    :try_start_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 162
    .line 163
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 164
    .line 165
    const-string v1, "Failed to read authentication state"

    .line 166
    .line 167
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 168
    .line 169
    .line 170
    :goto_2
    :try_start_5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :catch_3
    :goto_3
    :try_start_6
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 175
    .line 176
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    .line 177
    .line 178
    const-string v0, "File does not exist"

    .line 179
    .line 180
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :goto_4
    :try_start_7
    monitor-exit v3

    .line 185
    return-void

    .line 186
    :goto_5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 187
    .line 188
    .line 189
    throw p0

    .line 190
    :goto_6
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 191
    throw p0
.end method
