.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/ActiveAdmin;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/ActiveAdmin;ILandroid/content/ComponentName;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$1:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 7
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$2:I

    .line 9
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$3:Landroid/content/ComponentName;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$1:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 10
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$2:I

    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$3:Landroid/content/ComponentName;

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearProfileOwnerLocked(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 17
    invoke-virtual {v0, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(ILandroid/content/ComponentName;)V

    .line 20
    const-string p0, "android.app.action.PROFILE_OWNER_CHANGED"

    .line 22
    invoke-virtual {v0, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendOwnerChangedBroadcast(ILjava/lang/String;)V

    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 28
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$1:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 30
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$2:I

    .line 32
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda42;->f$3:Landroid/content/ComponentName;

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearDeviceOwnerLocked(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 37
    invoke-virtual {v0, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(ILandroid/content/ComponentName;)V

    .line 40
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxAnalyticsHelper:Lcom/android/server/devicepolicy/KnoxAnalyticsHelper;

    .line 47
    iget-object v0, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 49
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/devicepolicy/KnoxAnalyticsHelper;->sendOwnerChangedBroadcastWithExtra(ILjava/lang/String;Z)V

    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
