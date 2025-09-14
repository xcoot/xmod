.class public final Lcom/android/server/people/data/ContactsQueryHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContactUri:Landroid/net/Uri;

.field public final mContext:Landroid/content/Context;

.field public mIsStarred:Z

.field public mLastUpdatedTimestamp:J

.field public mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    const-string v2, "ContactsQueryHelper"

    .line 3
    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    :try_start_0
    iget-object v0, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    const/4 v11, 0x0

    .line 14
    move-object v7, p1

    .line 15
    move-object v8, p2

    .line 16
    move-object v9, p3

    .line 17
    move-object/from16 v10, p4

    .line 18
    .line 19
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    .line 21
    .line 22
    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-nez v6, :cond_1

    .line 24
    .line 25
    :try_start_1
    const-string v0, "Cursor is null when querying contact."

    .line 26
    .line 27
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move v7, v5

    .line 38
    move v8, v7

    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :catch_1
    move-exception v0

    .line 42
    move v7, v5

    .line 43
    move v8, v7

    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :catch_2
    move-exception v0

    .line 47
    move v7, v5

    .line 48
    move v8, v7

    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_0
    :goto_0
    return v5

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object v9, v0

    .line 54
    move v7, v5

    .line 55
    move v8, v7

    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_1
    move v7, v5

    .line 59
    move v8, v7

    .line 60
    :goto_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    const-string v0, "_id"

    .line 67
    .line 68
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v9

    .line 76
    const-string v0, "lookup"

    .line 77
    .line 78
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v9, v10, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    .line 91
    .line 92
    const-string/jumbo v0, "starred"

    .line 93
    .line 94
    .line 95
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    move v0, v3

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move v0, v5

    .line 108
    :goto_2
    iput-boolean v0, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    .line 109
    .line 110
    const-string v0, "has_phone_number"

    .line 111
    .line 112
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    move v7, v3

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    move v7, v5

    .line 125
    :goto_3
    const-string v0, "contact_last_updated_timestamp"

    .line 126
    .line 127
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-ltz v0, :cond_4

    .line 132
    .line 133
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 134
    .line 135
    .line 136
    move-result-wide v9

    .line 137
    iput-wide v9, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    move-object v9, v0

    .line 142
    goto :goto_5

    .line 143
    :cond_4
    :goto_4
    move v8, v3

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 146
    .line 147
    .line 148
    goto :goto_a

    .line 149
    :catch_3
    move-exception v0

    .line 150
    goto :goto_7

    .line 151
    :catch_4
    move-exception v0

    .line 152
    goto :goto_8

    .line 153
    :catch_5
    move-exception v0

    .line 154
    goto :goto_9

    .line 155
    :goto_5
    if-eqz v6, :cond_6

    .line 156
    .line 157
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 158
    .line 159
    .line 160
    goto :goto_6

    .line 161
    :catchall_2
    move-exception v0

    .line 162
    move-object v6, v0

    .line 163
    :try_start_6
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    :goto_6
    throw v9
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 167
    :goto_7
    const-string v6, "Exception when querying contacts."

    .line 168
    .line 169
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    goto :goto_a

    .line 173
    :goto_8
    const-string v6, "Illegal Argument exception when querying contacts."

    .line 174
    .line 175
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .line 177
    .line 178
    goto :goto_a

    .line 179
    :goto_9
    const-string v6, "SQLite exception when querying contacts."

    .line 180
    .line 181
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .line 183
    .line 184
    :goto_a
    if-eqz v8, :cond_b

    .line 185
    .line 186
    if-eqz v4, :cond_b

    .line 187
    .line 188
    if-eqz v7, :cond_b

    .line 189
    .line 190
    const-string v0, "data4"

    .line 191
    .line 192
    filled-new-array {v0}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    const-string v9, "lookup = ?"

    .line 197
    .line 198
    filled-new-array {v4}, [Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    :try_start_7
    iget-object v4, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 209
    .line 210
    const/4 v11, 0x0

    .line 211
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 212
    .line 213
    .line 214
    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 215
    if-nez v4, :cond_8

    .line 216
    .line 217
    :try_start_8
    const-string v0, "Cursor is null when querying contact phone number."

    .line 218
    .line 219
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 220
    .line 221
    .line 222
    if-eqz v4, :cond_7

    .line 223
    .line 224
    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 225
    .line 226
    .line 227
    goto :goto_b

    .line 228
    :catch_6
    move-exception v0

    .line 229
    goto :goto_f

    .line 230
    :cond_7
    :goto_b
    move v3, v5

    .line 231
    goto :goto_10

    .line 232
    :catchall_3
    move-exception v0

    .line 233
    move-object v1, v0

    .line 234
    goto :goto_d

    .line 235
    :cond_8
    :goto_c
    :try_start_a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_9

    .line 240
    .line 241
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-ltz v2, :cond_8

    .line 246
    .line 247
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    iput-object v2, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 252
    .line 253
    goto :goto_c

    .line 254
    :cond_9
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 255
    .line 256
    .line 257
    goto :goto_10

    .line 258
    :goto_d
    if-eqz v4, :cond_a

    .line 259
    .line 260
    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 261
    .line 262
    .line 263
    goto :goto_e

    .line 264
    :catchall_4
    move-exception v0

    .line 265
    move-object v2, v0

    .line 266
    :try_start_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 267
    .line 268
    .line 269
    :cond_a
    :goto_e
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 270
    :goto_f
    const-string v1, "Exception when querying phone number."

    .line 271
    .line 272
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .line 274
    .line 275
    goto :goto_b

    .line 276
    :goto_10
    return v3

    .line 277
    :cond_b
    return v8
.end method
