.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 10
    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 12
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/util/SparseArray;

    .line 22
    const/4 v0, 0x1

    .line 23
    if-nez p0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 28
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    iget-object p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p0

    .line 38
    xor-int/2addr v0, p0

    .line 39
    :goto_0
    return v0

    .line 40
    :pswitch_0
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 42
    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 44
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Landroid/util/SparseArray;

    .line 54
    const/4 v0, 0x1

    .line 55
    if-nez p0, :cond_1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget v1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 60
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 64
    iget-object p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p0

    .line 70
    xor-int/2addr v0, p0

    .line 71
    :goto_1
    return v0

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
