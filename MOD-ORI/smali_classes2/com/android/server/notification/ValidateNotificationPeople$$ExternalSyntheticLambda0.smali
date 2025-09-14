.class public final synthetic Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 8
    .line 9
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v3, ";"

    .line 15
    .line 16
    new-instance v12, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v7, ""

    .line 30
    .line 31
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v7, "@"

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "contact_id"

    .line 65
    .line 66
    const-string v6, "display_name"

    .line 67
    .line 68
    const-string v13, "data1"

    .line 69
    .line 70
    filled-new-array {v5, v6, v13}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const-string v11, "ValidateNoPeople"

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    .line 94
    .line 95
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 96
    const/4 v9, 0x0

    .line 97
    const/4 v10, 0x0

    .line 98
    const/16 v16, 0x0

    .line 99
    .line 100
    move-object v7, v4

    .line 101
    move-object v8, v14

    .line 102
    move-object/from16 v17, v2

    .line 103
    .line 104
    move-object v2, v11

    .line 105
    move-object/from16 v11, v16

    .line 106
    .line 107
    :try_start_1
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 108
    .line 109
    .line 110
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    if-eqz v6, :cond_2

    .line 112
    .line 113
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_1

    .line 118
    .line 119
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    if-eqz v8, :cond_0

    .line 140
    .line 141
    const/4 v10, 0x1

    .line 142
    aget-object v9, v9, v10

    .line 143
    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_0

    .line 149
    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_1

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    move-object v7, v0

    .line 184
    goto :goto_2

    .line 185
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :catchall_1
    move-exception v0

    .line 190
    goto :goto_4

    .line 191
    :cond_2
    :try_start_4
    const-string/jumbo v0, "phoneCursor is NULL"

    .line 192
    .line 193
    .line 194
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    .line 196
    .line 197
    if-eqz v6, :cond_7

    .line 198
    .line 199
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :goto_2
    if-eqz v6, :cond_3

    .line 204
    .line 205
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :catchall_2
    move-exception v0

    .line 210
    move-object v6, v0

    .line 211
    :try_start_7
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    :cond_3
    :goto_3
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 215
    :catchall_3
    move-exception v0

    .line 216
    move-object/from16 v17, v2

    .line 217
    .line 218
    move-object v2, v11

    .line 219
    :goto_4
    const-string v6, "Problem getting content resolver or performing contacts query."

    .line 220
    .line 221
    invoke-static {v2, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .line 223
    .line 224
    :goto_5
    move-object/from16 v2, v17

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_4
    move-object v2, v11

    .line 229
    iget-object v0, v1, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 230
    .line 231
    if-nez v0, :cond_5

    .line 232
    .line 233
    const-string/jumbo v0, "skipping - no zen info available"

    .line 234
    .line 235
    .line 236
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-nez v0, :cond_6

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_6
    new-instance v2, Landroid/app/NotificationManager$Policy;

    .line 248
    .line 249
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 250
    .line 251
    iget v6, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 252
    .line 253
    iget v7, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 254
    .line 255
    iget v8, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 256
    .line 257
    iget v9, v0, Landroid/app/NotificationManager$Policy;->state:I

    .line 258
    .line 259
    iget v10, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 260
    .line 261
    iget v11, v0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    .line 262
    .line 263
    iget v13, v0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    .line 264
    .line 265
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v14

    .line 269
    move-object v4, v2

    .line 270
    invoke-direct/range {v4 .. v14}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, v1, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 274
    .line 275
    const/4 v1, 0x5

    .line 276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;II)V

    .line 281
    .line 282
    .line 283
    :cond_7
    :goto_6
    return-void
.end method
