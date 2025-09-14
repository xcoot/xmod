.class public abstract Lcom/android/server/notification/NotificationHistoryProtoHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v1, v2, :cond_9

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq v1, v3, :cond_5

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-wide v1, 0x20b00000003L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    :try_start_0
    invoke-static {v0, p0}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesPackageAndSbnKeyFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    .line 53
    .line 54
    if-ge v3, v5, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :catch_0
    move-exception v3

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    iget-object v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getExtraTitle()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    xor-int/2addr v3, v5

    .line 81
    iget-object v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_2

    .line 88
    .line 89
    iget-object v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    iget v6, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    .line 107
    .line 108
    if-ge v5, v6, :cond_4

    .line 109
    .line 110
    if-nez v3, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1, v4}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    iget v5, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    .line 127
    .line 128
    if-ge v3, v5, :cond_4

    .line 129
    .line 130
    invoke-virtual {p1, v4}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :goto_2
    :try_start_1
    const-string v4, "NotifHistoryProto"

    .line 138
    .line 139
    const-string v5, "Error reading notification"

    .line 140
    .line 141
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_5
    const-wide v3, 0x10b00000001L

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    const-wide v5, 0x10500000001L

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-eqz p0, :cond_6

    .line 168
    .line 169
    new-instance p0, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    :goto_4
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eq v1, v2, :cond_8

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    const/4 v5, 0x2

    .line 195
    if-eq v1, v5, :cond_7

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_7
    const-wide v5, 0x20900000002L

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_8
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_9
    iget-object v0, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 217
    .line 218
    if-nez v0, :cond_b

    .line 219
    .line 220
    iget-object v0, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    .line 221
    .line 222
    if-nez v0, :cond_b

    .line 223
    .line 224
    iget p2, p2, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    .line 225
    .line 226
    const v0, 0x7fffffff

    .line 227
    .line 228
    .line 229
    if-ge p2, v0, :cond_a

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_a
    invoke-virtual {p1, p0}, Landroid/app/NotificationHistory;->addPooledStrings(Ljava/util/List;)V

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_b
    :goto_5
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 237
    .line 238
    .line 239
    :goto_6
    return-void
.end method

.method public static readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    new-instance v3, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 6
    .line 7
    invoke-direct {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-wide v6, 0x10500000006L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v8, 0x10500000007L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    :goto_1
    :pswitch_0
    move-object/from16 v19, v5

    .line 29
    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :pswitch_1
    const-wide v6, 0x10900000014L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setExtraTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :pswitch_2
    const-wide v6, 0x10300000013L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    invoke-virtual {v3, v6, v7}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setWhen(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_3
    const-wide v6, 0x10900000012L

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_2
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUri(Landroid/net/Uri;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_4
    const-wide v6, 0x10800000011L

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChecked(Z)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_5
    const-wide v6, 0x10500000010L

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setType(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_6
    const-wide v6, 0x1090000000fL

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setSbnKey(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_7
    const-wide v6, 0x1050000000eL

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    add-int/lit8 v0, v0, -0x1

    .line 128
    .line 129
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :pswitch_8
    const-wide v6, 0x1090000000dL

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 149
    .line 150
    .line 151
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :pswitch_9
    const-wide v10, 0x10b0000000cL

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 161
    .line 162
    .line 163
    move-result-wide v10

    .line 164
    const/4 v0, 0x0

    .line 165
    move v12, v0

    .line 166
    move v13, v12

    .line 167
    move v14, v13

    .line 168
    const/4 v15, 0x0

    .line 169
    const/16 v16, 0x0

    .line 170
    .line 171
    const/16 v17, 0x0

    .line 172
    .line 173
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 174
    .line 175
    .line 176
    move-result v18

    .line 177
    packed-switch v18, :pswitch_data_1

    .line 178
    .line 179
    .line 180
    :pswitch_a
    move-object/from16 v19, v5

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :pswitch_b
    move-object/from16 v19, v5

    .line 184
    .line 185
    const-wide v4, 0x10900000008L

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v16

    .line 194
    goto :goto_4

    .line 195
    :pswitch_c
    move-object/from16 v19, v5

    .line 196
    .line 197
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    move v13, v4

    .line 202
    goto :goto_4

    .line 203
    :pswitch_d
    move-object/from16 v19, v5

    .line 204
    .line 205
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    move v14, v4

    .line 210
    goto :goto_4

    .line 211
    :pswitch_e
    move-object/from16 v19, v5

    .line 212
    .line 213
    const-wide v4, 0x10c00000005L

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    goto :goto_4

    .line 223
    :pswitch_f
    move-object/from16 v19, v5

    .line 224
    .line 225
    const-wide v4, 0x10900000004L

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v17

    .line 234
    goto :goto_4

    .line 235
    :pswitch_10
    move-object/from16 v19, v5

    .line 236
    .line 237
    const-wide v4, 0x10500000003L

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    move v12, v4

    .line 247
    goto :goto_4

    .line 248
    :pswitch_11
    move-object/from16 v19, v5

    .line 249
    .line 250
    const-wide v4, 0x10900000002L

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :pswitch_12
    move-object/from16 v19, v5

    .line 260
    .line 261
    const-wide v4, 0x10e00000001L

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    :goto_4
    move-object/from16 v5, v19

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :pswitch_13
    move-object/from16 v19, v5

    .line 274
    .line 275
    const/4 v4, 0x3

    .line 276
    if-ne v0, v4, :cond_1

    .line 277
    .line 278
    if-eqz v15, :cond_4

    .line 279
    .line 280
    :try_start_0
    invoke-static {v15, v13, v14}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 285
    .line 286
    .line 287
    goto :goto_7

    .line 288
    :catch_0
    move-exception v0

    .line 289
    goto :goto_6

    .line 290
    :cond_1
    const/4 v4, 0x2

    .line 291
    if-ne v0, v4, :cond_3

    .line 292
    .line 293
    if-eqz v12, :cond_4

    .line 294
    .line 295
    if-eqz v17, :cond_2

    .line 296
    .line 297
    move-object/from16 v0, v17

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_2
    move-object/from16 v0, v19

    .line 301
    .line 302
    :goto_5
    invoke-static {v0, v12}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_3
    const/4 v4, 0x4

    .line 311
    if-ne v0, v4, :cond_4

    .line 312
    .line 313
    if-eqz v16, :cond_4

    .line 314
    .line 315
    invoke-static/range {v16 .. v16}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .line 321
    .line 322
    goto :goto_7

    .line 323
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v5, "loadIcon IllegalArgumentException "

    .line 326
    .line 327
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const-string v4, "NotifHistoryProto"

    .line 338
    .line 339
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    const-string v0, ""

    .line 343
    .line 344
    const v4, 0x1080b7e

    .line 345
    .line 346
    .line 347
    invoke-static {v0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 352
    .line 353
    .line 354
    :cond_4
    :goto_7
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_8

    .line 358
    .line 359
    :pswitch_14
    move-object/from16 v19, v5

    .line 360
    .line 361
    const-wide v4, 0x1090000000bL

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 371
    .line 372
    .line 373
    goto/16 :goto_8

    .line 374
    .line 375
    :pswitch_15
    move-object/from16 v19, v5

    .line 376
    .line 377
    const-wide v4, 0x1090000000aL

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 387
    .line 388
    .line 389
    goto/16 :goto_8

    .line 390
    .line 391
    :pswitch_16
    move-object/from16 v19, v5

    .line 392
    .line 393
    const-wide v4, 0x10300000009L

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 399
    .line 400
    .line 401
    move-result-wide v4

    .line 402
    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 403
    .line 404
    .line 405
    goto :goto_8

    .line 406
    :pswitch_17
    move-object/from16 v19, v5

    .line 407
    .line 408
    const-wide v4, 0x10500000008L

    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 418
    .line 419
    .line 420
    goto :goto_8

    .line 421
    :pswitch_18
    move-object/from16 v19, v5

    .line 422
    .line 423
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 428
    .line 429
    .line 430
    goto :goto_8

    .line 431
    :pswitch_19
    move-object/from16 v19, v5

    .line 432
    .line 433
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    add-int/lit8 v0, v0, -0x1

    .line 438
    .line 439
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 446
    .line 447
    .line 448
    goto :goto_8

    .line 449
    :pswitch_1a
    move-object/from16 v19, v5

    .line 450
    .line 451
    const-wide v4, 0x10900000005L

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 461
    .line 462
    .line 463
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    goto :goto_8

    .line 467
    :pswitch_1b
    move-object/from16 v19, v5

    .line 468
    .line 469
    const-wide v4, 0x10500000004L

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    add-int/lit8 v0, v0, -0x1

    .line 479
    .line 480
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Ljava/lang/String;

    .line 485
    .line 486
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 487
    .line 488
    .line 489
    goto :goto_8

    .line 490
    :pswitch_1c
    move-object/from16 v19, v5

    .line 491
    .line 492
    const-wide v4, 0x10900000003L

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v3, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 502
    .line 503
    .line 504
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    :goto_8
    move-object/from16 v5, v19

    .line 508
    .line 509
    goto/16 :goto_0

    .line 510
    .line 511
    :pswitch_1d
    const-wide v4, 0x10500000002L

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    add-int/lit8 v0, v0, -0x1

    .line 521
    .line 522
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    move-object v5, v0

    .line 527
    check-cast v5, Ljava/lang/String;

    .line 528
    .line 529
    invoke-virtual {v3, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 530
    .line 531
    .line 532
    goto/16 :goto_0

    .line 533
    .line 534
    :pswitch_1e
    const-wide v4, 0x10900000001L

    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    invoke-virtual {v3, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 544
    .line 545
    .line 546
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    goto/16 :goto_0

    .line 550
    .line 551
    :pswitch_1f
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    return-object v0

    .line 556
    nop

    .line 557
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_13
        :pswitch_a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V
    .locals 15

    .line 1
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    invoke-direct {v1, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5
    .line 6
    .line 7
    const-wide v2, 0x10500000002L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    move/from16 v0, p2

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 15
    .line 16
    .line 17
    const-wide v4, 0x10b00000001L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    array-length v6, v0

    .line 31
    const-wide v7, 0x10500000001L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    move v7, v6

    .line 41
    :goto_0
    array-length v8, v0

    .line 42
    if-ge v7, v8, :cond_0

    .line 43
    .line 44
    const-wide v8, 0x20900000002L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    aget-object v10, v0, v7

    .line 50
    .line 51
    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    :goto_1
    if-ge v6, v5, :cond_7

    .line 69
    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 79
    .line 80
    const-string v8, "NotifHistoryProto"

    .line 81
    .line 82
    const-string/jumbo v9, "notification conversation id ("

    .line 83
    .line 84
    .line 85
    const-string/jumbo v10, "notification package name ("

    .line 86
    .line 87
    .line 88
    const-wide v11, 0x20b00000003L

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v11

    .line 97
    :try_start_0
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-static {v0, v13}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    const-string v14, ") not found in string cache"

    .line 106
    .line 107
    if-ltz v13, :cond_1

    .line 108
    .line 109
    add-int/lit8 v13, v13, 0x1

    .line 110
    .line 111
    :try_start_1
    invoke-virtual {v1, v2, v3, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto/16 :goto_a

    .line 117
    .line 118
    :catch_0
    move-exception v0

    .line 119
    move-object p0, v4

    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    const-wide v2, 0x10900000001L

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_2
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 161
    .line 162
    .line 163
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    if-ltz v2, :cond_2

    .line 165
    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    move-object p0, v4

    .line 169
    const-wide v3, 0x10500000004L

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    :try_start_2
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :catch_1
    move-exception v0

    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :cond_2
    move-object p0, v4

    .line 182
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const-wide v3, 0x10900000003L

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_3
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-ltz v2, :cond_3

    .line 203
    .line 204
    add-int/lit8 v2, v2, 0x1

    .line 205
    .line 206
    const-wide v3, 0x10500000006L

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_3
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    const-wide v3, 0x10900000005L

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_4
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-nez v2, :cond_5

    .line 236
    .line 237
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-ltz v0, :cond_4

    .line 246
    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 248
    .line 249
    const-wide v2, 0x1050000000eL

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    const-wide v2, 0x1090000000dL

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_5
    :goto_5
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    const-wide v2, 0x10500000007L

    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    const-wide v2, 0x10500000008L

    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    .line 317
    .line 318
    .line 319
    move-result-wide v2

    .line 320
    const-wide v9, 0x10300000009L

    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    const-wide v2, 0x1090000000aL

    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const-wide v2, 0x1090000000bL

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getSbnKey()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const-wide v2, 0x1090000000fL

    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getType()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    const-wide v2, 0x10500000010L

    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getChecked()Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    const-wide v2, 0x10800000011L

    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    const-wide v2, 0x10900000012L

    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    if-eqz v0, :cond_6

    .line 398
    .line 399
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_6

    .line 407
    :cond_6
    const-string/jumbo v0, "null"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :goto_6
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getWhen()J

    .line 414
    .line 415
    .line 416
    move-result-wide v2

    .line 417
    const-wide v9, 0x10300000013L

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7}, Landroid/app/NotificationHistory$HistoricalNotification;->getExtraTitle()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const-wide v2, 0x10900000014L

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-static {v1, v7}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    .line 439
    .line 440
    :goto_7
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 441
    .line 442
    .line 443
    goto :goto_9

    .line 444
    :goto_8
    :try_start_3
    const-string v2, "Error writing notification -"

    .line 445
    .line 446
    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    .line 448
    .line 449
    goto :goto_7

    .line 450
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 451
    .line 452
    move-object v4, p0

    .line 453
    const-wide v2, 0x10500000002L

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    goto/16 :goto_1

    .line 459
    .line 460
    :goto_a
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_7
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 465
    .line 466
    .line 467
    return-void
.end method

.method public static writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 5

    .line 1
    const-wide v0, 0x10b0000000cL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-wide v3, 0x10e00000001L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x2

    .line 35
    if-eq v2, v3, :cond_2

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    if-eq v2, v3, :cond_0

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-wide v2, 0x10900000008L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_3

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-wide v3, 0x10c00000005L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getDataLength()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const-wide v3, 0x10500000006L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const-wide v2, 0x10500000007L

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const-wide v3, 0x10500000003L

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v2, :cond_3

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-wide v2, 0x10900000004L

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :goto_1
    :try_start_1
    const-string v2, "NotifHistoryProto"

    .line 170
    .line 171
    const-string v3, "Error writing notification icon -"

    .line 172
    .line 173
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :goto_2
    return-void

    .line 178
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 179
    .line 180
    .line 181
    throw p1
.end method
