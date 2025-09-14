.class public final synthetic Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Landroid/util/LongArrayQueue;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/android/server/utils/quota/UptcMap;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/util/ArrayMap;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/util/ArrayMap;

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 55
    .line 56
    invoke-virtual {p0, p1, p3, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {v0, p4, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Landroid/util/proto/ProtoOutputStream;

    .line 66
    .line 67
    check-cast p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 72
    .line 73
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {v1, p1, p3, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const-wide v2, 0x20b00000003L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    mul-int/lit8 v7, p1, 0x1f

    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    mul-int/lit8 v8, v8, 0x1f

    .line 106
    .line 107
    add-int/2addr v8, v7

    .line 108
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-nez v6, :cond_2

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    :goto_1
    const-wide v6, 0x10b00000001L

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v6

    .line 133
    const-wide v8, 0x10500000001L

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v8, v9, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 139
    .line 140
    .line 141
    const-wide v8, 0x10900000002L

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v8, v9, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-wide v8, 0x10900000003L

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v8, v9, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 158
    .line 159
    .line 160
    const-wide v6, 0x10800000002L

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 169
    .line 170
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    check-cast p0, Landroid/util/LongArrayQueue;

    .line 175
    .line 176
    const-wide p3, 0x10300000001L

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    if-eqz p0, :cond_3

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    add-int/lit8 p1, p1, -0x1

    .line 188
    .line 189
    :goto_2
    if-ltz p1, :cond_3

    .line 190
    .line 191
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 192
    .line 193
    .line 194
    move-result-wide v6

    .line 195
    invoke-virtual {p0, p1}, Landroid/util/LongArrayQueue;->get(I)J

    .line 196
    .line 197
    .line 198
    move-result-wide v8

    .line 199
    invoke-virtual {v0, p3, p4, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 203
    .line 204
    .line 205
    add-int/lit8 p1, p1, -0x1

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_3
    const-wide p0, 0x20b00000004L

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 214
    .line 215
    .line 216
    move-result-wide p0

    .line 217
    iget-wide v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 218
    .line 219
    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 220
    .line 221
    .line 222
    const-wide p3, 0x10300000002L

    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    iget-wide v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    .line 228
    .line 229
    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 230
    .line 231
    .line 232
    const-wide p3, 0x10500000003L

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    iget v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 238
    .line 239
    invoke-virtual {v0, p3, p4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 240
    .line 241
    .line 242
    const-wide p3, 0x10500000004L

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    iget v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 248
    .line 249
    invoke-virtual {v0, p3, p4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 250
    .line 251
    .line 252
    const-wide p3, 0x10300000005L

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    iget-wide v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 258
    .line 259
    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
