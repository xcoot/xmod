.class public final synthetic Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Landroid/net/LinkAddress;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;->f$0:Landroid/net/LinkAddress;

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
    iget v0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;->f$0:Landroid/net/LinkAddress;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/net/LinkAddress;

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$hXTWt6UzxsyVBxaxeD9FOBlh3MI(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    check-cast p1, Landroid/net/IpPrefix;

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$LrgLnWopeQsqj9tKhvCHfzT_ECg(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
