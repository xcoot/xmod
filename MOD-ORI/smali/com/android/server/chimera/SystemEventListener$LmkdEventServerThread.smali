.class public final Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mServerSocket:Landroid/net/LocalServerSocket;

.field public mSocket:Landroid/net/LocalSocket;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "SystemEventListener"

    .line 2
    .line 3
    const-string v1, "There is a client is accepted: "

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Landroid/net/LocalServerSocket;

    .line 6
    .line 7
    const-string/jumbo v3, "chimera"

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mServerSocket:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    iget-object v2, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v2, "Failed to execute socket service."

    .line 22
    .line 23
    invoke-static {v0, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v2, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v2, "Waiting Client connected..."

    .line 36
    .line 37
    invoke-static {v0, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :try_start_1
    iget-object v2, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSocket:Landroid/net/LocalSocket;

    .line 47
    .line 48
    const/16 v3, 0x100

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSocket:Landroid/net/LocalSocket;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSocket:Landroid/net/LocalSocket;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Ljava/io/InputStreamReader;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSocket:Landroid/net/LocalSocket;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Ljava/io/BufferedReader;

    .line 96
    .line 97
    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 98
    .line 99
    .line 100
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v3, ":"

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    .line 112
    array-length v3, v1

    .line 113
    const/4 v4, 0x1

    .line 114
    if-le v3, v4, :cond_0

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    aget-object v3, v1, v3

    .line 118
    .line 119
    if-eqz v3, :cond_2

    .line 120
    .line 121
    aget-object v3, v1, v4

    .line 122
    .line 123
    if-nez v3, :cond_1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_1
    const/4 v3, 0x2

    .line 127
    aget-object v3, v1, v3

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    const/4 v4, 0x3

    .line 138
    aget-object v4, v1, v4

    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    new-instance v5, Ljava/lang/Integer;

    .line 149
    .line 150
    const/4 v6, 0x4

    .line 151
    aget-object v1, v1, v6

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mHandler:Landroid/os/Handler;

    .line 165
    .line 166
    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v3, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mHandler:Landroid/os/Handler;

    .line 171
    .line 172
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :catch_1
    move-exception v1

    .line 177
    goto :goto_3

    .line 178
    :cond_2
    :goto_2
    const-string v1, "Received lmkd data error"

    .line 179
    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :goto_3
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 185
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v3, "Socket Exception: "

    .line 189
    .line 190
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_3
    return-void
.end method
