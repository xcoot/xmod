.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(IZLjava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;->f$0:I

    .line 6
    iput-boolean p2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;->f$1:Z

    .line 8
    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    iget-boolean v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;->f$1:Z

    .line 5
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/blob/BlobMetadata;->isALeaseeInUser(IILjava/lang/String;)Z

    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(IILjava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 35
    move-result-wide v0

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 39
    :cond_2
    :goto_0
    return-void
.end method
