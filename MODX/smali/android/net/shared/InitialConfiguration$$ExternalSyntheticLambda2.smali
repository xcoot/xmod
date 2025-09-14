.class public final synthetic Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iget-object p0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Ljava/util/function/Predicate;

    .line 10
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$-X6K-ILFjKgXxX_05B2mmIHvhrU(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    check-cast p0, Landroid/net/IpPrefix;

    .line 17
    check-cast p1, Landroid/net/RouteInfo;

    .line 19
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$5lGZQwr6G8-juwLej8cPw15pvTI(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    check-cast p0, Ljava/net/InetAddress;

    .line 26
    check-cast p1, Landroid/net/IpPrefix;

    .line 28
    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$ywVtbC09SwFWcOHhEoJjbnmuAY8(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z

    .line 31
    move-result p0

    .line 32
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
