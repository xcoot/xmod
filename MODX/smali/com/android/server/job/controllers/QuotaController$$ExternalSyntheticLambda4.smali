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

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/controllers/QuotaController;

    .line 8
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Predicate;

    .line 10
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/util/proto/ProtoOutputStream;

    .line 14
    check-cast p1, Landroid/util/ArraySet;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_1

    .line 26
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 32
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-wide v4, 0x20b00000004L

    .line 44
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 47
    move-result-wide v4

    .line 48
    const-wide v6, 0x10b00000001L

    .line 53
    invoke-virtual {v3, p0, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 56
    const-wide v6, 0x10500000002L

    .line 61
    iget v8, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 63
    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 66
    const-wide v6, 0x10e00000003L

    .line 71
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 74
    move-result v8

    .line 75
    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 78
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 80
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v6

    .line 84
    const-wide v7, 0x10800000004L

    .line 89
    invoke-virtual {p0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 92
    const/high16 v6, 0x1000000

    .line 94
    invoke-virtual {v3, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 97
    move-result v6

    .line 98
    const-wide v7, 0x10800000005L

    .line 103
    invoke-virtual {p0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 106
    const-wide v6, 0x10300000006L

    .line 111
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 114
    move-result-wide v8

    .line 115
    invoke-virtual {p0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 118
    const-wide v6, 0x10800000007L

    .line 123
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 126
    move-result v8

    .line 127
    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 130
    iget-boolean v3, v3, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    .line 132
    const-wide v6, 0x10800000008L

    .line 137
    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 140
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 143
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/job/controllers/QuotaController;

    .line 149
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Predicate;

    .line 151
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 153
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 155
    check-cast p1, Landroid/util/ArraySet;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    const/4 v2, 0x0

    .line 161
    :goto_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 164
    move-result v3

    .line 165
    if-ge v2, v3, :cond_9

    .line 167
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 173
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_2

    .line 179
    goto/16 :goto_5

    .line 181
    :cond_2
    const-string v4, "#"

    .line 183
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3, p0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 189
    const-string v4, " from "

    .line 191
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 196
    invoke-static {p0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 199
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 201
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_3

    .line 207
    const-string v4, " (TOP)"

    .line 209
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 212
    :cond_3
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 215
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 218
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    .line 221
    move-result v4

    .line 222
    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 229
    const-string v4, ", "

    .line 231
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_4

    .line 240
    const-string/jumbo v5, "within EJ quota"

    .line 243
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    goto :goto_3

    .line 247
    :cond_4
    iget-boolean v5, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 249
    if-eqz v5, :cond_5

    .line 251
    const-string/jumbo v5, "out of EJ quota"

    .line 254
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 257
    goto :goto_3

    .line 258
    :cond_5
    const/high16 v5, 0x1000000

    .line 260
    invoke-virtual {v3, v5}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    .line 263
    move-result v5

    .line 264
    if-eqz v5, :cond_6

    .line 266
    const-string/jumbo v5, "within regular quota"

    .line 269
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 272
    goto :goto_3

    .line 273
    :cond_6
    const-string/jumbo v5, "not within quota"

    .line 276
    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 279
    :goto_3
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 285
    move-result v4

    .line 286
    if-eqz v4, :cond_7

    .line 288
    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 290
    iget-object v3, v3, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v4, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    .line 295
    move-result-wide v3

    .line 296
    invoke-virtual {p0, v3, v4}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 299
    const-string/jumbo v3, "ms remaining in EJ quota"

    .line 302
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 305
    goto :goto_4

    .line 306
    :cond_7
    iget-boolean v4, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 308
    if-eqz v4, :cond_8

    .line 310
    const-string/jumbo v3, "should be stopped after min execution time"

    .line 313
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 316
    goto :goto_4

    .line 317
    :cond_8
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 320
    move-result-wide v3

    .line 321
    invoke-virtual {p0, v3, v4}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 324
    const-string/jumbo v3, "ms remaining in quota"

    .line 327
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 330
    :goto_4
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 333
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 336
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 338
    goto/16 :goto_2

    .line 340
    :cond_9
    return-void

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
