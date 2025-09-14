.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 6
    iput-wide p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$1:J

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 3
    iget-wide v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$1:J

    .line 5
    check-cast p1, Ljava/util/Map$Entry;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/blob/BlobMetadata;

    .line 16
    iget-wide v3, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 18
    cmp-long p1, v3, v1

    .line 20
    if-nez p1, :cond_0

    .line 22
    invoke-virtual {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method
