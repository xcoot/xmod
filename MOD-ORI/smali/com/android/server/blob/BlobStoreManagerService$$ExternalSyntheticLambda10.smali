.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;->f$1:I

    .line 9
    .line 10
    check-cast p1, Ljava/util/Map$Entry;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/android/server/blob/BlobMetadata;->removeDataForUser(I)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 38
    .line 39
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;->f$1:I

    .line 40
    .line 41
    check-cast p1, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    .line 51
    .line 52
    const/4 v1, -0x1

    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne p0, v1, :cond_1

    .line 55
    .line 56
    iget-object p0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 57
    .line 58
    iget-wide v0, p1, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/blob/BlobMetadata;->removeDataForUser(I)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    invoke-virtual {p1, p0}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object p0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 79
    .line 80
    iget-wide v0, p1, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 81
    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v2, p0

    .line 91
    :goto_1
    return v2

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
