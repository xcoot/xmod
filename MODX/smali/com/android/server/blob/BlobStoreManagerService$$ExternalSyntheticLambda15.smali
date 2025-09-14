.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:Landroid/app/blob/BlobHandle;

.field public final synthetic f$2:Lcom/android/server/blob/BlobMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;->f$1:Landroid/app/blob/BlobHandle;

    .line 8
    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;->f$2:Lcom/android/server/blob/BlobMetadata;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;->f$1:Landroid/app/blob/BlobHandle;

    .line 5
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;->f$2:Lcom/android/server/blob/BlobMetadata;

    .line 7
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 22
    monitor-exit v2

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v3, 0x1

    .line 27
    invoke-virtual {p0, v3}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 36
    iget-object p0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 38
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 44
    monitor-exit v2

    .line 45
    :goto_0
    return-void

    .line 46
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method
