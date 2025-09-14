.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/util/ArraySet;

    .line 22
    iget v0, v0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 24
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eq p0, v0, :cond_0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 35
    move-result p0

    .line 36
    :goto_0
    if-ge v1, p0, :cond_1

    .line 38
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/os/RevocableFileDescriptor;

    .line 44
    invoke-virtual {v0}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 53
    const/4 v1, 0x1

    .line 54
    :goto_1
    return v1

    .line 55
    :pswitch_0
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 57
    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 59
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    move-result p1

    .line 63
    if-ne p0, p1, :cond_2

    .line 65
    const/4 p0, 0x1

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/4 p0, 0x0

    .line 68
    :goto_2
    return p0

    .line 69
    :pswitch_1
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 71
    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 73
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 76
    move-result p1

    .line 77
    if-ne p0, p1, :cond_3

    .line 79
    const/4 p0, 0x1

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    const/4 p0, 0x0

    .line 82
    :goto_3
    return p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
