.class public final Lcom/android/server/people/data/ConversationInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContactPhoneNumber:Ljava/lang/String;

.field public mContactUri:Landroid/net/Uri;

.field public mConversationFlags:I

.field public mCreationTimestamp:J

.field public mCurrStatuses:Ljava/util/Map;

.field public mLastEventTimestamp:J

.field public mLocusId:Landroid/content/LocusId;

.field public mNotificationChannelId:Ljava/lang/String;

.field public mParentNotificationChannelId:Ljava/lang/String;

.field public mShortcutFlags:I

.field public mShortcutId:Ljava/lang/String;


# direct methods
.method public static readFromBackupPayload([B)Lcom/android/server/people/data/ConversationInfo;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/DataInputStream;

    .line 7
    .line 8
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    new-instance v4, Landroid/content/LocusId;

    .line 32
    .line 33
    invoke-direct {v4, v3}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :cond_0
    move-object v4, p0

    .line 41
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v3, p0

    .line 57
    :goto_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move-object v5, p0

    .line 69
    :goto_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-nez v9, :cond_3

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move-object v8, p0

    .line 89
    :goto_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-nez v10, :cond_4

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    move-object v9, p0

    .line 101
    :goto_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    .line 102
    .line 103
    .line 104
    move-result-wide v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v12
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_5

    .line 110
    :catch_1
    const/4 v12, 0x0

    .line 111
    :goto_5
    const/4 v13, 0x1

    .line 112
    if-ne v12, v13, :cond_5

    .line 113
    .line 114
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    .line 115
    .line 116
    .line 117
    move-result-wide v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    goto :goto_6

    .line 119
    :cond_5
    const-wide/16 v12, 0x0

    .line 120
    .line 121
    :goto_6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    new-instance p0, Lcom/android/server/people/data/ConversationInfo;

    .line 125
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v4, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 132
    .line 133
    iput-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 134
    .line 135
    iput-object v8, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 136
    .line 137
    iput-object v5, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v9, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 140
    .line 141
    iput-wide v10, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 142
    .line 143
    iput-wide v12, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 144
    .line 145
    iput v6, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 146
    .line 147
    iput v7, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 148
    .line 149
    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 150
    .line 151
    return-object p0

    .line 152
    :goto_7
    const-string v1, "ConversationInfo"

    .line 153
    .line 154
    const-string v2, "Failed to read conversation info fields from backup payload."

    .line 155
    .line 156
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .line 158
    .line 159
    return-object p0
.end method

.method public static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/ConversationInfo;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-wide v6, v3

    .line 13
    move-object v8, v5

    .line 14
    move-object v9, v8

    .line 15
    move-object v10, v9

    .line 16
    move-object v11, v10

    .line 17
    move-object v12, v11

    .line 18
    move-object v13, v12

    .line 19
    move v3, v2

    .line 20
    move-wide v4, v6

    .line 21
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 22
    .line 23
    .line 24
    move-result v14

    .line 25
    const/4 v15, -0x1

    .line 26
    if-eq v14, v15, :cond_2

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 29
    .line 30
    .line 31
    move-result v14

    .line 32
    move-object/from16 v16, v1

    .line 33
    .line 34
    move/from16 v17, v2

    .line 35
    .line 36
    packed-switch v14, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Could not read undefined field: "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "ConversationInfo"

    .line 58
    .line 59
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    move-object/from16 v1, v16

    .line 63
    .line 64
    move/from16 v2, v17

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_0
    const-wide v1, 0x1030000000aL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    goto :goto_1

    .line 77
    :pswitch_1
    const-wide v1, 0x10300000009L

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    goto :goto_1

    .line 87
    :pswitch_2
    const-wide v1, 0x10900000008L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    goto :goto_1

    .line 97
    :pswitch_3
    const-wide v1, 0x10900000007L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    goto :goto_1

    .line 107
    :pswitch_4
    const-wide v1, 0x10500000006L

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    goto :goto_1

    .line 117
    :pswitch_5
    const-wide v1, 0x10500000005L

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    move-object/from16 v1, v16

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :pswitch_6
    const-wide v1, 0x10900000004L

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    goto :goto_1

    .line 139
    :pswitch_7
    const-wide v1, 0x10900000003L

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    goto :goto_1

    .line 153
    :pswitch_8
    const-wide v1, 0x10b00000002L

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v1

    .line 162
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    if-eq v14, v15, :cond_1

    .line 167
    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    const/4 v15, 0x1

    .line 173
    if-ne v14, v15, :cond_0

    .line 174
    .line 175
    new-instance v9, Landroid/content/LocusId;

    .line 176
    .line 177
    move/from16 v18, v3

    .line 178
    .line 179
    const-wide v14, 0x10900000001L

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-direct {v9, v3}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move/from16 v3, v18

    .line 192
    .line 193
    :cond_0
    const/4 v15, -0x1

    .line 194
    goto :goto_2

    .line 195
    :cond_1
    move/from16 v18, v3

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :pswitch_9
    move/from16 v18, v3

    .line 203
    .line 204
    const-wide v14, 0x10900000001L

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    move-object/from16 v1, v16

    .line 214
    .line 215
    move/from16 v2, v17

    .line 216
    .line 217
    move/from16 v3, v18

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_2
    move-object/from16 v16, v1

    .line 222
    .line 223
    move/from16 v17, v2

    .line 224
    .line 225
    move/from16 v18, v3

    .line 226
    .line 227
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/android/server/people/data/ConversationInfo;

    .line 231
    .line 232
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 233
    .line 234
    .line 235
    iput-object v8, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 236
    .line 237
    iput-object v9, v0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 238
    .line 239
    iput-object v10, v0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 240
    .line 241
    iput-object v11, v0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 242
    .line 243
    iput-object v12, v0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 244
    .line 245
    iput-object v13, v0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 246
    .line 247
    iput-wide v4, v0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 248
    .line 249
    iput-wide v6, v0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 250
    .line 251
    move/from16 v2, v17

    .line 252
    .line 253
    iput v2, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 254
    .line 255
    move/from16 v3, v18

    .line 256
    .line 257
    iput v3, v0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 258
    .line 259
    move-object/from16 v1, v16

    .line 260
    .line 261
    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 262
    .line 263
    return-object v0

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/people/data/ConversationInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 36
    .line 37
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 74
    .line 75
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-wide v3, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 80
    .line 81
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 92
    .line 93
    iget-wide v5, p1, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 94
    .line 95
    cmp-long v1, v3, v5

    .line 96
    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 100
    .line 101
    iget v3, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 102
    .line 103
    if-ne v1, v3, :cond_2

    .line 104
    .line 105
    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 106
    .line 107
    iget v3, p1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 108
    .line 109
    if-ne v1, v3, :cond_2

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 114
    .line 115
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_2

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    move v0, v2

    .line 123
    :goto_0
    return v0
.end method

.method public final hasConversationFlags(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final hasShortcutFlags(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 11

    .line 1
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 6
    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    iget-wide v3, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    iget v0, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    iget-object v10, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 38
    .line 39
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ConversationInfo {shortcutId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", locusId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", contactUri="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", phoneNumber="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", notificationChannelId="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", parentNotificationChannelId="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", lastEventTimestamp="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", creationTimestamp="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", statuses="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", shortcutFlags=0x"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, " ["

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/16 v2, 0x2000

    .line 113
    .line 114
    invoke-virtual {p0, v2}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_0

    .line 119
    .line 120
    const-string v2, "Liv"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_0
    const/16 v2, 0x4000

    .line 126
    .line 127
    invoke-virtual {p0, v2}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_1

    .line 132
    .line 133
    const-string v2, "Cac"

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    :cond_1
    const-string v2, "], conversationFlags=0x"

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget v2, p0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 144
    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_2

    .line 161
    .line 162
    const-string v1, "Imp"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    :cond_2
    const/4 v1, 0x2

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_3

    .line 173
    .line 174
    const-string v1, "Sil"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    :cond_3
    const/4 v1, 0x4

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_4

    .line 185
    .line 186
    const-string v1, "Bub"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    :cond_4
    const/16 v1, 0x40

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_5

    .line 198
    .line 199
    const-string v1, "Dem"

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    :cond_5
    const/16 v1, 0x8

    .line 205
    .line 206
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    const-string v1, "PIm"

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    :cond_6
    const/16 v1, 0x10

    .line 218
    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_7

    .line 224
    .line 225
    const-string v1, "Bot"

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    :cond_7
    const/16 v1, 0x20

    .line 231
    .line 232
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationInfo;->hasConversationFlags(I)Z

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    if-eqz p0, :cond_8

    .line 237
    .line 238
    const-string p0, "Sta"

    .line 239
    .line 240
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    :cond_8
    const-string p0, "]}"

    .line 244
    .line 245
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    return-object p0
.end method
