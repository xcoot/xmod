.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;->f$1:Landroid/os/UserHandle;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;->f$3:Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;->f$1:Landroid/os/UserHandle;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;->f$2:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;->f$3:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v3, -0x1

    .line 16
    invoke-virtual {p1, v3, v1, v0}, Lcom/android/server/blob/BlobMetadata;->isALeaseeInUser(IILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v3, v1, v0}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(IILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method
