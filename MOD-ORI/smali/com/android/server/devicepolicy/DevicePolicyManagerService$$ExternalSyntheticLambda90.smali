.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda90;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda90;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda90;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda90;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda90;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda90;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda90;->f$1:I

    .line 11
    .line 12
    check-cast p1, Landroid/content/ComponentName;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(ILandroid/content/ComponentName;Z)Landroid/app/admin/DeviceAdminInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda90;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 25
    .line 26
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda90;->f$1:I

    .line 27
    .line 28
    check-cast p1, Landroid/content/ComponentName;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(ILandroid/content/ComponentName;Z)Landroid/app/admin/DeviceAdminInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
