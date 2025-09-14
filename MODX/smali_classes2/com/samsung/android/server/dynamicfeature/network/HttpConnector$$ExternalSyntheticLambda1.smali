.class public final synthetic Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

.field public final synthetic f$1:Lcom/samsung/android/server/dynamicfeature/DFeature;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;Lcom/samsung/android/server/dynamicfeature/DFeature;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v2, "Cannot close handle : "

    .line 9
    .line 10
    const-string v3, "dynamicfeature_HttpConnector"

    .line 11
    .line 12
    const-string/jumbo v4, "sendErrorReport failed: "

    .line 13
    .line 14
    .line 15
    const-string v5, "Error on connection : "

    .line 16
    .line 17
    const-string v6, "error report payload : "

    .line 18
    .line 19
    const-string v7, "error report url is "

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v11, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->server_url:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v11, "error-report"

    .line 34
    .line 35
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/4 v11, 0x1

    .line 39
    invoke-virtual {v1, v11}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->getParams(Z)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    new-instance v12, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    new-instance v7, Lorg/json/JSONObject;

    .line 66
    .line 67
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v12, "namespace"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 74
    .line 75
    const-string v13, ""

    .line 76
    .line 77
    if-nez p0, :cond_0

    .line 78
    .line 79
    move-object v14, v13

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    :try_start_1
    iget-object v14, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 82
    .line 83
    :goto_0
    invoke-virtual {v7, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const-string/jumbo v12, "name"

    .line 87
    .line 88
    .line 89
    if-nez p0, :cond_1

    .line 90
    .line 91
    move-object v14, v13

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-object v14, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 94
    .line 95
    :goto_1
    invoke-virtual {v7, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string/jumbo v12, "version"

    .line 99
    .line 100
    .line 101
    if-nez p0, :cond_2

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget p0, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 105
    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    :goto_2
    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    const-string p0, "errorMessage"

    .line 114
    .line 115
    invoke-virtual {v7, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    filled-new-array {p0}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v10}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string/jumbo v6, "utf-8"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    array-length v6, v0

    .line 180
    invoke-virtual {v8, v0, v9, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    iput p0, v1, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mLastResultCode:I

    .line 188
    .line 189
    const/16 v0, 0xc8

    .line 190
    .line 191
    if-eq p0, v0, :cond_3

    .line 192
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    goto :goto_6

    .line 211
    :catch_0
    move-exception p0

    .line 212
    goto :goto_4

    .line 213
    :cond_3
    const-string p0, "Error committed "

    .line 214
    .line 215
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .line 217
    .line 218
    move v9, v11

    .line 219
    :goto_3
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :catch_1
    move-exception p0

    .line 224
    invoke-static {v2, p0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :goto_4
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    .line 246
    .line 247
    if-eqz v8, :cond_4

    .line 248
    .line 249
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 250
    .line 251
    .line 252
    :cond_4
    :goto_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    return-object p0

    .line 257
    :goto_6
    if-eqz v8, :cond_5

    .line 258
    .line 259
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 260
    .line 261
    .line 262
    goto :goto_7

    .line 263
    :catch_2
    move-exception v0

    .line 264
    invoke-static {v2, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_5
    :goto_7
    throw p0
.end method
