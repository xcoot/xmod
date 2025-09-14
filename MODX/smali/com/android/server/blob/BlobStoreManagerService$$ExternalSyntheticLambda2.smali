.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 6
    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 8
    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 5
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda2;->f$2:I

    .line 7
    check-cast p1, Ljava/util/Map$Entry;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    .line 18
    invoke-virtual {p1, p0, v1}, Lcom/android/server/blob/BlobMetadata;->isACommitter(ILjava/lang/String;)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    iget-object v3, p1, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 26
    monitor-enter v3

    .line 27
    :try_start_0
    iget-object v4, p1, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 29
    new-instance v5, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;

    .line 31
    const/4 v6, 0x1

    .line 32
    invoke-direct {v5, p0, v1, v6}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;I)V

    .line 35
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 38
    monitor-exit v3

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p1, p0, v1}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(ILjava/lang/String;)V

    .line 46
    invoke-virtual {p1, v2}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 55
    const/4 p0, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 p0, 0x0

    .line 58
    :goto_1
    return p0
.end method
