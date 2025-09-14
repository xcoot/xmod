.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/function/Function;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$0:I

    .line 6
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$1:Ljava/util/function/Function;

    .line 8
    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$2:Ljava/util/ArrayList;

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$0:I

    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$1:Ljava/util/function/Function;

    .line 5
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->f$2:Ljava/util/ArrayList;

    .line 7
    check-cast p1, Landroid/app/blob/BlobHandle;

    .line 9
    check-cast p2, Lcom/android/server/blob/BlobMetadata;

    .line 11
    invoke-virtual {p2, v0}, Lcom/android/server/blob/BlobMetadata;->hasACommitterInUser(I)Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_2

    .line 17
    iget-object v2, p2, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, p2, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 22
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ge v4, v3, :cond_1

    .line 29
    iget-object v5, p2, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 31
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 37
    iget v5, v5, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 39
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 42
    move-result v5

    .line 43
    if-ne v0, v5, :cond_0

    .line 45
    monitor-exit v2

    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    monitor-exit v2

    .line 53
    goto :goto_3

    .line 54
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_2
    :goto_2
    new-instance v11, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;

    .line 63
    check-cast v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

    .line 65
    invoke-direct {v2, v0, v1, p1, v11}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;-><init>(ILcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;)V

    .line 68
    iget-object v0, p2, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 70
    monitor-enter v0

    .line 71
    :try_start_1
    iget-object v1, p2, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 73
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 76
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    new-instance v0, Landroid/app/blob/BlobInfo;

    .line 79
    iget-wide v4, p2, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 81
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    .line 84
    move-result-wide v6

    .line 85
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->getLabel()Ljava/lang/CharSequence;

    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {p2}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 92
    move-result-wide v9

    .line 93
    move-object v3, v0

    .line 94
    invoke-direct/range {v3 .. v11}, Landroid/app/blob/BlobInfo;-><init>(JJLjava/lang/CharSequence;JLjava/util/List;)V

    .line 97
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_3
    return-void

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    throw p0
.end method
