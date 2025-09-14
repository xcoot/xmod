.class public final synthetic Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$1:I

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
    iget v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$1:I

    .line 9
    .line 10
    check-cast p1, Landroid/companion/AssociationInfo;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v0, p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isRevoked()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$1:I

    .line 41
    .line 42
    check-cast p1, Landroid/companion/AssociationInfo;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne v0, p0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isPending()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    const/4 p0, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 p0, 0x0

    .line 69
    :goto_1
    return p0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
