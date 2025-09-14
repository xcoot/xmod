.class public final synthetic Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ContentDispatcher;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ContentDispatcher;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ContentDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ContentDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;->f$6:I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v6, "android.intent.action.VIEW"

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    const-string v6, "android"

    .line 31
    .line 32
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    if-ltz v3, :cond_0

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v6, 0x0

    .line 49
    :goto_0
    const-string v7, ""

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    iget-object v8, v0, Lcom/android/server/pm/ContentDispatcher;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v7, v8}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    :cond_1
    iget-object v8, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 76
    .line 77
    monitor-enter v8

    .line 78
    :try_start_0
    iget-object v9, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    if-eqz v9, :cond_4

    .line 89
    .line 90
    const-string v9, "android"

    .line 91
    .line 92
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-nez v9, :cond_4

    .line 97
    .line 98
    iget-object v9, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    .line 109
    .line 110
    iget-object v9, v9, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mPackageName:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-nez v9, :cond_2

    .line 117
    .line 118
    const-string v9, "android.content.pm.action.REQUEST_PERMISSIONS"

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-nez v9, :cond_2

    .line 129
    .line 130
    const-string v9, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-nez v9, :cond_2

    .line 141
    .line 142
    const-string v9, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-nez v9, :cond_2

    .line 153
    .line 154
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ContentDispatcher;->clearPdfTask(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    goto/16 :goto_4

    .line 160
    .line 161
    :cond_2
    if-eqz v5, :cond_3

    .line 162
    .line 163
    iget-object v9, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    check-cast v9, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    .line 174
    .line 175
    iget-object v9, v9, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mPackageName:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-nez v9, :cond_4

    .line 182
    .line 183
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ContentDispatcher;->clearPdfTask(I)V

    .line 184
    .line 185
    .line 186
    :cond_4
    :goto_1
    if-eqz v6, :cond_6

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ContentDispatcher;->clearPdfTask(I)V

    .line 189
    .line 190
    .line 191
    const-string/jumbo p0, "pdf"

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-nez p0, :cond_5

    .line 199
    .line 200
    const-string p0, "application/pdf"

    .line 201
    .line 202
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-nez p0, :cond_5

    .line 211
    .line 212
    monitor-exit v8

    .line 213
    goto :goto_3

    .line 214
    :cond_5
    iget-object p0, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    new-instance v4, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    .line 221
    .line 222
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 223
    .line 224
    .line 225
    iput v3, v4, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mCallingUid:I

    .line 226
    .line 227
    iput-object v1, v4, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mIntent:Landroid/content/Intent;

    .line 228
    .line 229
    iput-object v2, v4, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mPackageName:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p0, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_6
    iget-object v1, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 236
    .line 237
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_7

    .line 246
    .line 247
    iget-object v1, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 248
    .line 249
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-nez v1, :cond_7

    .line 258
    .line 259
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_7

    .line 264
    .line 265
    iget-object v1, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 266
    .line 267
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    .line 276
    .line 277
    iget-object v1, v1, Lcom/android/server/pm/ContentDispatcher$PdfInfo;->mPackageName:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_7

    .line 284
    .line 285
    iget-object v1, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 286
    .line 287
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    iget-object v0, v0, Lcom/android/server/pm/ContentDispatcher;->mPdfInfos:Landroid/util/ArrayMap;

    .line 292
    .line 293
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    check-cast p0, Lcom/android/server/pm/ContentDispatcher$PdfInfo;

    .line 302
    .line 303
    invoke-virtual {v1, v2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    :cond_7
    :goto_2
    monitor-exit v8

    .line 307
    :goto_3
    return-void

    .line 308
    :goto_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    throw p0
.end method
