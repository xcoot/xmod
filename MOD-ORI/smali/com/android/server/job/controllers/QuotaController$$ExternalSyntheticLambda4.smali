.class public final synthetic Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/job/controllers/QuotaController;

.field public final synthetic f$1:Ljava/util/function/Predicate;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;Landroid/util/proto/ProtoOutputStream;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/controllers/QuotaController;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Predicate;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/util/proto/ProtoOutputStream;

    .line 13
    .line 14
    check-cast p1, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 31
    .line 32
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-wide v4, 0x20b00000004L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    const-wide v6, 0x10b00000001L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p0, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 54
    .line 55
    .line 56
    const-wide v6, 0x10500000002L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    iget v8, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 62
    .line 63
    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 64
    .line 65
    .line 66
    const-wide v6, 0x10e00000003L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 76
    .line 77
    .line 78
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 79
    .line 80
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    const-wide v7, 0x10800000004L

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 90
    .line 91
    .line 92
    const/high16 v6, 0x1000000

    .line 93
    .line 94
    invoke-virtual {v3, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    const-wide v7, 0x10800000005L

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 104
    .line 105
    .line 106
    const-wide v6, 0x10300000006L

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v8

    .line 115
    invoke-virtual {p0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 116
    .line 117
    .line 118
    const-wide v6, 0x10800000007L

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 128
    .line 129
    .line 130
    iget-boolean v3, v3, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    .line 131
    .line 132
    const-wide v6, 0x10800000008L

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 141
    .line 142
    .line 143
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/controllers/QuotaController;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Predicate;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 154
    .line 155
    check-cast p1, Landroid/util/ArraySet;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const/4 v2, 0x0

    .line 161
    :goto_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-ge v2, v3, :cond_9

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 172
    .line 173
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_2

    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_2
    const-string v4, "#"

    .line 182
    .line 183
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, p0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 187
    .line 188
    .line 189
    const-string v4, " from "

    .line 190
    .line 191
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 195
    .line 196
    invoke-static {p0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 197
    .line 198
    .line 199
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 200
    .line 201
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_3

    .line 206
    .line 207
    const-string v4, " (TOP)"

    .line 208
    .line 209
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_3
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v4, ", "

    .line 230
    .line 231
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_4

    .line 239
    .line 240
    const-string/jumbo v5, "within EJ quota"

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_4
    iget-boolean v5, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 248
    .line 249
    if-eqz v5, :cond_5

    .line 250
    .line 251
    const-string/jumbo v5, "out of EJ quota"

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_5
    const/high16 v5, 0x1000000

    .line 259
    .line 260
    invoke-virtual {v3, v5}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v5, :cond_6

    .line 265
    .line 266
    const-string/jumbo v5, "within regular quota"

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_6
    const-string/jumbo v5, "not within quota"

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :goto_3
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-eqz v4, :cond_7

    .line 287
    .line 288
    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 289
    .line 290
    iget-object v3, v3, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v0, v4, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v3

    .line 296
    invoke-virtual {p0, v3, v4}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 297
    .line 298
    .line 299
    const-string/jumbo v3, "ms remaining in EJ quota"

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_7
    iget-boolean v4, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 307
    .line 308
    if-eqz v4, :cond_8

    .line 309
    .line 310
    const-string/jumbo v3, "should be stopped after min execution time"

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_8
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 318
    .line 319
    .line 320
    move-result-wide v3

    .line 321
    invoke-virtual {p0, v3, v4}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 322
    .line 323
    .line 324
    const-string/jumbo v3, "ms remaining in quota"

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    :goto_4
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 334
    .line 335
    .line 336
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 337
    .line 338
    goto/16 :goto_2

    .line 339
    .line 340
    :cond_9
    return-void

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
