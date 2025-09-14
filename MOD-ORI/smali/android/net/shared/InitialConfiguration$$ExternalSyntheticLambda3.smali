.class public final synthetic Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;
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
    iput p1, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/net/LinkAddress;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$YRvNq_1LvE5TxUPwVnWBxpL-sFE(Landroid/net/LinkAddress;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    check-cast p1, Landroid/net/IpPrefix;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$JLWMq8eblO7IxI5SOmNQMRBOH7g(Landroid/net/IpPrefix;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :pswitch_1
    check-cast p1, Landroid/net/LinkAddress;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$KVrbl46Ey9msvoRUX4iyAAYZh5s(Landroid/net/LinkAddress;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_2
    check-cast p1, Landroid/net/IpPrefix;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$2qMxQrPX0dtHbvHuDV489De1Fgc(Landroid/net/IpPrefix;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :pswitch_3
    check-cast p1, Landroid/net/LinkAddress;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$aMpq1yL99NDjdK12Fmmvc_TUcBQ(Landroid/net/LinkAddress;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
