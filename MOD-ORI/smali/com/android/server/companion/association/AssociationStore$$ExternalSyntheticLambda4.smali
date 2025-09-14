.class public final synthetic Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;
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
    iput p2, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;->f$0:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;->f$0:I

    .line 4
    .line 5
    check-cast p1, Landroid/companion/AssociationInfo;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne p1, p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0

    .line 20
    :pswitch_0
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p1, p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_1
    return p0

    .line 30
    :pswitch_1
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, p0, :cond_2

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    :goto_2
    return p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
