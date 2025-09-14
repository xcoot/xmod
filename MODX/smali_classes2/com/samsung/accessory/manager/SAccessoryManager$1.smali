.class public final Lcom/samsung/accessory/manager/SAccessoryManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public authenticationReady()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "SAccessoryManager_SAccessoryManager"

    .line 7
    .line 8
    const-string v1, "init dock state = "

    .line 9
    .line 10
    const-string v2, "Service start and check pdids: "

    .line 11
    .line 12
    const/16 v3, 0x400

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :try_start_0
    new-array v5, v3, [C

    .line 16
    .line 17
    new-instance v6, Ljava/io/FileReader;

    .line 18
    .line 19
    const-string v7, "/sys/class/sec/ccic/usbpd_ids"

    .line 20
    .line 21
    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v6, v5, v4, v3}, Ljava/io/FileReader;->read([CII)I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    new-instance v8, Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v8, v5, v4, v7}, Ljava/lang/String;-><init>([CII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iput-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 40
    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-array v2, v3, [C

    .line 60
    .line 61
    new-instance v5, Ljava/io/FileReader;

    .line 62
    .line 63
    const-string v6, "/sys/class/sec/ccic/usbpd_type"

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .line 67
    .line 68
    :try_start_3
    invoke-virtual {v5, v2, v4, v3}, Ljava/io/FileReader;->read([CII)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    new-instance v6, Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v6, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    .line 103
    .line 104
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    goto :goto_0

    .line 110
    :catchall_1
    move-exception v1

    .line 111
    move v2, v4

    .line 112
    :goto_0
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 113
    .line 114
    .line 115
    throw v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 116
    :catch_0
    move v2, v4

    .line 117
    goto :goto_2

    .line 118
    :catch_1
    move v2, v4

    .line 119
    goto :goto_1

    .line 120
    :catchall_2
    move-exception v1

    .line 121
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 122
    .line 123
    .line 124
    throw v1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 125
    :catch_2
    :goto_1
    const-string v1, "This kernel does not have ccic dock support"

    .line 126
    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :catch_3
    :goto_2
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v1, :cond_0

    .line 133
    .line 134
    const-string v3, ":"

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    goto :goto_3

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 142
    :goto_3
    const-string v3, "b001b7ff"

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const/4 v5, 0x1

    .line 149
    if-eqz v1, :cond_2

    .line 150
    .line 151
    array-length v6, v1

    .line 152
    const/4 v7, 0x2

    .line 153
    if-ne v6, v7, :cond_2

    .line 154
    .line 155
    aget-object v6, v1, v4

    .line 156
    .line 157
    const-string v7, "04e8"

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_2

    .line 164
    .line 165
    aget-object v1, v1, v5

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    new-array v6, v6, [B

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    array-length v6, v1

    .line 178
    const/4 v7, 0x4

    .line 179
    if-ne v6, v7, :cond_1

    .line 180
    .line 181
    aget-byte v6, v1, v4

    .line 182
    .line 183
    aget-byte v4, v3, v4

    .line 184
    .line 185
    if-ne v6, v4, :cond_1

    .line 186
    .line 187
    aget-byte v1, v1, v5

    .line 188
    .line 189
    aget-byte v4, v3, v5

    .line 190
    .line 191
    if-lt v1, v4, :cond_1

    .line 192
    .line 193
    const/4 v4, 0x5

    .line 194
    aget-byte v3, v3, v4

    .line 195
    .line 196
    if-gt v1, v3, :cond_1

    .line 197
    .line 198
    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v2, "This device is not support usb authentication usb_pdids: "

    .line 205
    .line 206
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :cond_2
    :goto_4
    iput-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    .line 222
    .line 223
    return-void
.end method

.method public getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    monitor-exit v0

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    const/4 p0, 0x7

    .line 26
    return p0

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p1, 0xd

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 p1, 0xc

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/16 p1, 0xb

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    const/16 p1, 0xa

    .line 25
    .line 26
    :goto_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public start(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "SM-F900"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v2, "SAccessoryManager_SAccessoryManager"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    sget-boolean v0, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    .line 29
    .line 30
    const-string v0, "F900, set auth state true"

    .line 31
    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    sget-boolean v0, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    .line 48
    .line 49
    const-string v0, "F900, set aute state false"

    .line 50
    .line 51
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    .line 56
    .line 57
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 58
    .line 59
    const/4 v0, 0x4

    .line 60
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 65
    .line 66
    .line 67
    return-void
.end method
