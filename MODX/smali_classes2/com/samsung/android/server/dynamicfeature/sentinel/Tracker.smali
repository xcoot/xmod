.class public final Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public serviceCallback:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.DROPBOX_ENTRY_ADDED"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_9

    .line 12
    .line 13
    const-string/jumbo v0, "tag"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string v0, "crash"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string v0, "anr"

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_9

    .line 38
    .line 39
    :cond_1
    const-string v0, "DropBoxManager report this: \""

    .line 40
    .line 41
    const-string v1, "\" event"

    .line 42
    .line 43
    const-string v2, "dynamicfeature_Tracker"

    .line 44
    .line 45
    invoke-static {v0, p2, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p2, ":"

    .line 49
    .line 50
    const-string v0, "activity"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/app/ActivityManager;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    const-string p0, "AMS is null"

    .line 61
    .line 62
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    const-string p0, "ProcessErrorStateInfo list is null"

    .line 74
    .line 75
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string/jumbo v1, "none"

    .line 89
    .line 90
    .line 91
    move-object v3, v1

    .line 92
    move-object v4, v3

    .line 93
    move-object v5, v4

    .line 94
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_9

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 105
    .line 106
    iget-object v7, v6, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v7, :cond_4

    .line 109
    .line 110
    move-object v1, v7

    .line 111
    :cond_4
    const/4 v7, 0x0

    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_5

    .line 119
    .line 120
    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    aget-object v8, v8, v7

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    move-object v8, v1

    .line 128
    :goto_1
    invoke-virtual {p1, v8, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catch_0
    const-string v8, "app version is invalid"

    .line 136
    .line 137
    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_2
    iget-object v8, v6, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 141
    .line 142
    const/16 v9, 0x270f

    .line 143
    .line 144
    const/16 v10, 0x2710

    .line 145
    .line 146
    const-string v11, "\'"

    .line 147
    .line 148
    const-string v12, "\""

    .line 149
    .line 150
    if-eqz v8, :cond_7

    .line 151
    .line 152
    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-le v8, v10, :cond_7

    .line 161
    .line 162
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    :cond_7
    iget-object v8, v6, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 167
    .line 168
    if-eqz v8, :cond_8

    .line 169
    .line 170
    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-le v8, v10, :cond_8

    .line 179
    .line 180
    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    :cond_8
    new-instance v7, Lorg/json/JSONObject;

    .line 185
    .line 186
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .line 188
    .line 189
    :try_start_1
    const-string v8, "cond"

    .line 190
    .line 191
    iget v9, v6, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 192
    .line 193
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    const-string/jumbo v8, "proc"

    .line 197
    .line 198
    .line 199
    iget-object v9, v6, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    .line 203
    .line 204
    const-string/jumbo v8, "short"

    .line 205
    .line 206
    .line 207
    iget-object v6, v6, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    const-string/jumbo v6, "version"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    const-string/jumbo v6, "stack"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    const-string v6, "client_version"

    .line 225
    .line 226
    const-string v8, "0.1.1"

    .line 227
    .line 228
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    .line 230
    .line 231
    const-string/jumbo v6, "reason"

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :catch_1
    move-exception v6

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string/jumbo v9, "unknown error while:"

    .line 242
    .line 243
    .line 244
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;->serviceCallback:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 262
    .line 263
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-virtual {v6, v8}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;->onSignalFire(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    const-string v7, "dynamicfeature"

    .line 275
    .line 276
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_9
    :goto_4
    return-void
.end method
