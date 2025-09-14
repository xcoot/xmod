.class public final Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 7
    .line 8
    const-string p1, "BlocklistReader"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 15
    .line 16
    const-string p1, "BlocklistUpdater"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    sget-boolean p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    const-string p0, "SAccessoryManager_CertBlocklister"

    .line 38
    .line 39
    const-string v1, "Certificate blocklist not changed, return..."

    .line 40
    .line 41
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_1
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 54
    .line 55
    iput-object v1, v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    .line 56
    .line 57
    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const-string v2, "SAccessoryManager_CertBlocklister"

    .line 62
    .line 63
    const-string v3, "Certificate blocklist changed, updating..."

    .line 64
    .line 65
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_2
    const/4 v2, 0x0

    .line 69
    :try_start_1
    const-string v3, "journal"

    .line 70
    .line 71
    const-string v4, ""

    .line 72
    .line 73
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 74
    .line 75
    iget-object v5, v5, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    .line 76
    .line 77
    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const/4 v4, 0x1

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 84
    .line 85
    .line 86
    new-instance v4, Ljava/io/FileOutputStream;

    .line 87
    .line 88
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 89
    .line 90
    .line 91
    :try_start_2
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 92
    .line 93
    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 103
    .line 104
    .line 105
    new-instance v2, Ljava/io/File;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 115
    .line 116
    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    const-string p0, "SAccessoryManager_CertBlocklister"

    .line 120
    .line 121
    const-string v1, "Certificate blocklist updated"

    .line 122
    .line 123
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    move-object v2, v4

    .line 129
    goto :goto_4

    .line 130
    :catch_0
    move-exception p0

    .line 131
    move-object v2, v4

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :catchall_2
    move-exception p0

    .line 138
    goto :goto_4

    .line 139
    :catch_1
    move-exception p0

    .line 140
    :goto_2
    :try_start_4
    const-string v1, "SAccessoryManager_CertBlocklister"

    .line 141
    .line 142
    const-string v3, "Failed to write list"

    .line 143
    .line 144
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 145
    .line 146
    .line 147
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    .line 149
    .line 150
    :goto_3
    sget-object p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    .line 151
    .line 152
    if-eqz p0, :cond_4

    .line 153
    .line 154
    check-cast p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    .line 160
    .line 161
    const/4 v2, 0x1

    .line 162
    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 166
    .line 167
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :cond_4
    :goto_5
    monitor-exit v0

    .line 176
    :goto_6
    return-void

    .line 177
    :goto_7
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    throw p0

    .line 179
    :pswitch_0
    const-string v0, "mBlocklist = "

    .line 180
    .line 181
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 182
    .line 183
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    .line 184
    .line 185
    monitor-enter v1

    .line 186
    :try_start_6
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z

    .line 187
    .line 188
    if-eqz v2, :cond_5

    .line 189
    .line 190
    const-string v2, "SAccessoryManager_CertBlocklister"

    .line 191
    .line 192
    const-string v3, "Read a blocklist from file.."

    .line 193
    .line 194
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 195
    .line 196
    .line 197
    goto :goto_8

    .line 198
    :catchall_3
    move-exception p0

    .line 199
    goto :goto_a

    .line 200
    :cond_5
    :goto_8
    :try_start_7
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 201
    .line 202
    sget-object v3, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    iput-object v3, v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 209
    .line 210
    goto :goto_9

    .line 211
    :catch_2
    move-exception v2

    .line 212
    :try_start_8
    const-string v3, "SAccessoryManager_CertBlocklister"

    .line 213
    .line 214
    const-string v4, "Failed to read list"

    .line 215
    .line 216
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .line 218
    .line 219
    goto :goto_9

    .line 220
    :catch_3
    const-string v2, "SAccessoryManager_CertBlocklister"

    .line 221
    .line 222
    const-string v3, "File does not exist"

    .line 223
    .line 224
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    :goto_9
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->DBG:Z

    .line 228
    .line 229
    if-eqz v2, :cond_6

    .line 230
    .line 231
    const-string v2, "SAccessoryManager_CertBlocklister"

    .line 232
    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 239
    .line 240
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    :cond_6
    monitor-exit v1

    .line 253
    return-void

    .line 254
    :goto_a
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 255
    throw p0

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
