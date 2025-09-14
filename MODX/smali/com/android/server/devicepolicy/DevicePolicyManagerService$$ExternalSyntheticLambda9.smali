.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda9;
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
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 7
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 9
    sget-object p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 11
    return v0

    .line 12
    :pswitch_0
    check-cast p1, Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 14
    invoke-virtual {p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_1
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 21
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :pswitch_2
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 28
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isForTesting()Z

    .line 31
    move-result p0

    .line 32
    xor-int/2addr p0, v0

    .line 33
    return p0

    .line 34
    :pswitch_3
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 36
    sget-object p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
