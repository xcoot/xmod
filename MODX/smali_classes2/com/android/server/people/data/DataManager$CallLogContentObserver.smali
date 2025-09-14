.class public final Lcom/android/server/people/data/DataManager$CallLogContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

.field public mLastCallTimestamp:J

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/android/server/people/data/CallLogQueryHelper;

    .line 14
    .line 15
    invoke-direct {p1, p2, p0}, Lcom/android/server/people/data/CallLogQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    const-wide/32 v0, 0x493e0

    .line 25
    .line 26
    .line 27
    sub-long/2addr p1, v0

    .line 28
    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/people/data/Event;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/people/data/Event;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onChange(Z)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    .line 4
    .line 5
    iget-wide v2, v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v4, "CallLogQueryHelper"

    .line 11
    .line 12
    const-string/jumbo v5, "normalized_number"

    .line 13
    .line 14
    .line 15
    const-string v6, "date"

    .line 16
    .line 17
    const-string v7, "duration"

    .line 18
    .line 19
    const-string/jumbo v8, "type"

    .line 20
    .line 21
    .line 22
    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    const-string v12, "date > ?"

    .line 27
    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    filled-new-array {v2}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v13

    .line 36
    :try_start_0
    iget-object v3, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    sget-object v10, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 43
    .line 44
    const-string v14, "date DESC"

    .line 45
    .line 46
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    :try_start_1
    const-string v0, "Cursor is null when querying call log."

    .line 53
    .line 54
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :catchall_0
    move-exception v0

    .line 70
    move-object v2, v0

    .line 71
    move-object/from16 v16, v3

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_1
    const/4 v9, 0x0

    .line 76
    :goto_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-eqz v10, :cond_3

    .line 81
    .line 82
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v11

    .line 98
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v13

    .line 106
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 111
    .line 112
    .line 113
    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 114
    move-object/from16 v16, v3

    .line 115
    .line 116
    :try_start_4
    iget-wide v2, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    .line 117
    .line 118
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    iput-wide v2, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    .line 123
    .line 124
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_2

    .line 129
    .line 130
    const-wide/16 v2, 0x0

    .line 131
    .line 132
    cmp-long v2, v11, v2

    .line 133
    .line 134
    if-lez v2, :cond_2

    .line 135
    .line 136
    sget-object v2, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 137
    .line 138
    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-ltz v3, :cond_2

    .line 143
    .line 144
    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->get(I)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    new-instance v3, Lcom/android/server/people/data/Event$Builder;

    .line 149
    .line 150
    invoke-direct {v3, v11, v12, v2}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    .line 151
    .line 152
    .line 153
    long-to-int v2, v13

    .line 154
    iput v2, v3, Lcom/android/server/people/data/Event$Builder;->mDurationSeconds:I

    .line 155
    .line 156
    new-instance v2, Lcom/android/server/people/data/Event;

    .line 157
    .line 158
    invoke-direct {v2, v3}, Lcom/android/server/people/data/Event;-><init>(Lcom/android/server/people/data/Event$Builder;)V

    .line 159
    .line 160
    .line 161
    iget-object v3, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 162
    .line 163
    invoke-interface {v3, v10, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    .line 165
    .line 166
    const/4 v9, 0x1

    .line 167
    :cond_2
    move-object/from16 v3, v16

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :goto_2
    move-object v2, v0

    .line 171
    goto :goto_3

    .line 172
    :catchall_1
    move-exception v0

    .line 173
    goto :goto_2

    .line 174
    :catchall_2
    move-exception v0

    .line 175
    move-object/from16 v16, v3

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_3
    move-object/from16 v16, v3

    .line 179
    .line 180
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    .line 181
    .line 182
    .line 183
    move v2, v9

    .line 184
    goto :goto_6

    .line 185
    :goto_3
    if-eqz v16, :cond_4

    .line 186
    .line 187
    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :catchall_3
    move-exception v0

    .line 192
    move-object v3, v0

    .line 193
    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_4
    throw v2
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0

    .line 197
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v3, "Query call log failed: "

    .line 200
    .line 201
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :goto_6
    if-eqz v2, :cond_5

    .line 217
    .line 218
    iget-object v0, v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    .line 219
    .line 220
    iget-wide v2, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    .line 221
    .line 222
    iput-wide v2, v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    .line 223
    .line 224
    :cond_5
    return-void
.end method
