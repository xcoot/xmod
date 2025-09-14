.class public final synthetic Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;
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
    iput p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    check-cast p1, Ljava/util/Map$Entry;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p1

    .line 20
    const v0, 0x186a0

    .line 23
    div-int/2addr p1, v0

    .line 24
    if-ne p1, p0, :cond_0

    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0

    .line 30
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result p1

    .line 40
    const v0, 0x186a0

    .line 43
    div-int/2addr p1, v0

    .line 44
    if-ne p1, p0, :cond_1

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
