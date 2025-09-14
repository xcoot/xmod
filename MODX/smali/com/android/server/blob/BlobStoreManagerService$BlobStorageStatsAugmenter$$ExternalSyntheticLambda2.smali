.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/os/UserHandle;

    .line 10
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    .line 14
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 17
    move-result v0

    .line 18
    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, p1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 23
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_1

    .line 30
    iget-object v4, p1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 32
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 38
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 40
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    move-result v4

    .line 44
    if-eq v0, v4, :cond_0

    .line 46
    monitor-exit v1

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 57
    move-result-wide v0

    .line 58
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 61
    :goto_1
    return-void

    .line 62
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 66
    check-cast v0, Ljava/lang/String;

    .line 68
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    check-cast p1, Lcom/android/server/blob/BlobStoreSession;

    .line 72
    iget-object v1, p1, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    .line 83
    move-result-wide v0

    .line 84
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 87
    :cond_2
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
