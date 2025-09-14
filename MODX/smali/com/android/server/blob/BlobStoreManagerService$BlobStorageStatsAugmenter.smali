.class public final Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 8
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p2, v0, v2}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 14
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 17
    move-result v2

    .line 18
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 20
    invoke-virtual {p0, v2, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(ILjava/util/function/Consumer;)V

    .line 23
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;

    .line 25
    invoke-direct {v1, p2, p3, p4, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    .line 31
    iget-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 36
    move-result-wide v0

    .line 37
    add-long/2addr v0, p2

    .line 38
    iput-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 40
    return-void
.end method

.method public final augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 12
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;

    .line 14
    invoke-direct {v2, p2, v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/util/concurrent/atomic/AtomicLong;)V

    .line 17
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 19
    invoke-virtual {p0, v0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(ILjava/util/function/Consumer;)V

    .line 22
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;

    .line 24
    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;-><init>(IZLjava/util/concurrent/atomic/AtomicLong;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    .line 30
    iget-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 35
    move-result-wide v0

    .line 36
    add-long/2addr v0, p2

    .line 37
    iput-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 39
    return-void
.end method

.method public final augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 8
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, v0}, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 17
    move-result v2

    .line 18
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 20
    invoke-virtual {p0, v2, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachSessionInUser(ILjava/util/function/Consumer;)V

    .line 23
    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v1, p2, v0, v2}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    .line 32
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 37
    move-result-wide v3

    .line 38
    add-long/2addr v3, v1

    .line 39
    iput-wide v3, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 41
    return-void
.end method
