.class public final synthetic Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/util/Pair;

    .line 14
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    check-cast p0, Landroid/credentials/selection/AuthenticationEntry;

    .line 18
    invoke-virtual {p0}, Landroid/credentials/selection/AuthenticationEntry;->getStatus()I

    .line 21
    move-result p0

    .line 22
    const/4 p1, 0x2

    .line 23
    if-ne p0, p1, :cond_0

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

    .line 29
    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    .line 31
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 33
    check-cast p0, Landroid/credentials/selection/AuthenticationEntry;

    .line 35
    invoke-virtual {p0}, Landroid/credentials/selection/AuthenticationEntry;->getStatus()I

    .line 38
    move-result p0

    .line 39
    const/4 v0, 0x1

    .line 40
    if-eq p0, v0, :cond_2

    .line 42
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 44
    check-cast p0, Landroid/credentials/selection/AuthenticationEntry;

    .line 46
    invoke-virtual {p0}, Landroid/credentials/selection/AuthenticationEntry;->getStatus()I

    .line 49
    move-result p0

    .line 50
    const/4 p1, 0x2

    .line 51
    if-ne p0, p1, :cond_1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    :cond_2
    :goto_1
    return v0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
