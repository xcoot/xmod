.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/concurrent/atomic/AtomicLong;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$1:I

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget v1, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$1:I

    .line 10
    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    move-object/from16 v2, p1

    .line 16
    check-cast v2, Lcom/android/server/blob/BlobStoreSession;

    .line 18
    iget v3, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 20
    if-ne v3, v1, :cond_0

    .line 22
    invoke-virtual {v2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 32
    check-cast v1, Ljava/util/List;

    .line 34
    iget v2, v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;->f$1:I

    .line 36
    move-object/from16 v0, p1

    .line 38
    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    .line 40
    iget-object v11, v0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 42
    monitor-enter v11

    .line 43
    :try_start_0
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    .line 45
    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 48
    iget-object v4, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 50
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 53
    move-result v4

    .line 54
    const/4 v5, 0x0

    .line 55
    move v6, v5

    .line 56
    :goto_0
    const-wide v7, 0x10300000002L

    .line 61
    const-wide v9, 0x10500000001L

    .line 66
    const-wide v12, 0x20b00000001L

    .line 71
    if-ge v6, v4, :cond_1

    .line 73
    iget-object v14, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 75
    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 78
    move-result-object v14

    .line 79
    check-cast v14, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 81
    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 84
    move-result-wide v12

    .line 85
    iget v15, v14, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 87
    invoke-virtual {v3, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 90
    iget-wide v9, v14, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    .line 92
    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 95
    iget-object v7, v14, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 97
    iget v7, v7, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 99
    const-wide v8, 0x10500000003L

    .line 104
    invoke-virtual {v3, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 107
    iget-object v7, v14, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 109
    iget-object v7, v7, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 111
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 114
    move-result v7

    .line 115
    const-wide v8, 0x10500000004L

    .line 120
    invoke-virtual {v3, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 123
    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto :goto_2

    .line 131
    :cond_1
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 134
    move-result-object v14

    .line 135
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    .line 137
    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 140
    iget-object v4, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 142
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 145
    move-result v4

    .line 146
    :goto_1
    if-ge v5, v4, :cond_2

    .line 148
    iget-object v6, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 150
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 153
    move-result-object v6

    .line 154
    check-cast v6, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 156
    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 159
    move-result-wide v7

    .line 160
    iget v15, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 162
    invoke-virtual {v3, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 165
    iget-wide v9, v6, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 167
    const-wide v12, 0x10300000002L

    .line 172
    invoke-virtual {v3, v12, v13, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 175
    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 180
    move-wide v7, v12

    .line 181
    const-wide v9, 0x10500000001L

    .line 186
    const-wide v12, 0x20b00000001L

    .line 191
    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 195
    move-result-object v10

    .line 196
    iget-wide v3, v0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 198
    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 201
    move-result-wide v5

    .line 202
    iget-object v0, v0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 204
    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    .line 207
    move-result-wide v7

    .line 208
    move-object v9, v14

    .line 209
    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJ[B[B)Landroid/util/StatsEvent;

    .line 212
    move-result-object v0

    .line 213
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void

    .line 218
    :goto_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    throw v0

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
