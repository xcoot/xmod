.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/DevicePolicyData;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILcom/android/server/devicepolicy/DevicePolicyData;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$2:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$1:Lcom/android/server/devicepolicy/DevicePolicyData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyData;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$1:Lcom/android/server/devicepolicy/DevicePolicyData;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$1:Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 10
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$2:I

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/4 v2, 0x0

    .line 16
    iput v2, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 18
    invoke-virtual {v0, p0, v2, v2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 24
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$2:I

    .line 26
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$1:Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 28
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 35
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 41
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V

    .line 46
    return-void

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 49
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$1:Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 51
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda28;->f$2:I

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    const/4 v2, 0x0

    .line 57
    iput v2, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 59
    iput v2, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    .line 61
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 74
    iput v2, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    .line 76
    :cond_0
    const/4 v3, -0x1

    .line 77
    iput v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 79
    invoke-virtual {v0, p0, v2, v2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 82
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    .line 84
    if-eqz v1, :cond_1

    .line 86
    const-string v1, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    .line 88
    const/4 v2, 0x1

    .line 89
    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandForLockscreenPoliciesLocked(IILjava/lang/String;)V

    .line 92
    :cond_1
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
