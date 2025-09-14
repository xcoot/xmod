.class public final synthetic Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;ILandroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/ValidateNotificationPeople;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    .line 8
    .line 9
    iget v4, v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$3:I

    .line 10
    .line 11
    iget-object v0, v1, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 12
    .line 13
    const-string v5, "ValidateNoPeople"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo v0, "skipping - no zen info available"

    .line 18
    .line 19
    .line 20
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const-string v8, ""

    .line 40
    .line 41
    const-string v9, "@"

    .line 42
    .line 43
    invoke-static {v2, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v6}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v15, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_2

    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/String;

    .line 99
    .line 100
    const-string v14, ";"

    .line 101
    .line 102
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    array-length v8, v0

    .line 107
    const/4 v9, 0x1

    .line 108
    if-le v8, v9, :cond_3

    .line 109
    .line 110
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v10, "contact_id = "

    .line 120
    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    aget-object v10, v0, v16

    .line 127
    .line 128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    const/4 v12, 0x0

    .line 136
    const/4 v13, 0x0

    .line 137
    const/4 v10, 0x0

    .line 138
    move-object v9, v2

    .line 139
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 140
    .line 141
    .line 142
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    if-eqz v8, :cond_4

    .line 144
    .line 145
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_4

    .line 150
    .line 151
    const-string v9, "data1"

    .line 152
    .line 153
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    const-string v10, "There is a contact has been updated."

    .line 162
    .line 163
    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    new-instance v10, Ljava/lang/StringBuffer;

    .line 167
    .line 168
    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .line 170
    .line 171
    aget-object v0, v0, v16

    .line 172
    .line 173
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    move-object v9, v0

    .line 192
    goto :goto_2

    .line 193
    :cond_4
    if-nez v8, :cond_5

    .line 194
    .line 195
    const-string v0, "Failed to query the contact."

    .line 196
    .line 197
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_5
    const-string v0, "There is a contact has been deleted."

    .line 202
    .line 203
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .line 205
    .line 206
    :goto_1
    if-eqz v8, :cond_3

    .line 207
    .line 208
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :catchall_1
    move-exception v0

    .line 213
    goto :goto_4

    .line 214
    :goto_2
    if-eqz v8, :cond_6

    .line 215
    .line 216
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :catchall_2
    move-exception v0

    .line 221
    move-object v8, v0

    .line 222
    :try_start_4
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    :cond_6
    :goto_3
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 226
    :goto_4
    const-string v8, "Problem getting content resolver or performing contacts query."

    .line 227
    .line 228
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_7
    :goto_5
    new-instance v0, Landroid/app/NotificationManager$Policy;

    .line 234
    .line 235
    iget v8, v6, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 236
    .line 237
    iget v9, v6, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 238
    .line 239
    iget v10, v6, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 240
    .line 241
    iget v11, v6, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 242
    .line 243
    iget v12, v6, Landroid/app/NotificationManager$Policy;->state:I

    .line 244
    .line 245
    iget v13, v6, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 246
    .line 247
    iget v14, v6, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    .line 248
    .line 249
    iget v2, v6, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    .line 250
    .line 251
    invoke-virtual {v6}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v17

    .line 255
    move-object v7, v0

    .line 256
    move/from16 v16, v2

    .line 257
    .line 258
    invoke-direct/range {v7 .. v17}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

    .line 259
    .line 260
    .line 261
    iget-object v1, v1, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 262
    .line 263
    const/4 v2, 0x5

    .line 264
    invoke-virtual {v1, v0, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;II)V

    .line 265
    .line 266
    .line 267
    const-string v0, "The contacts of policy has been updated."

    .line 268
    .line 269
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :goto_6
    return-void
.end method
