.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->f$0:I

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->f$0:I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 13
    .line 14
    if-ne v1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0

    .line 28
    :pswitch_0
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->f$0:I

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 31
    .line 32
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 33
    .line 34
    iget v1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 35
    .line 36
    if-ne v1, v0, :cond_1

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    :goto_1
    return p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
