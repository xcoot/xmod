.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:Lcom/android/server/devicepolicy/CallerIdentity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$3:Lcom/android/server/devicepolicy/CallerIdentity;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$2:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/devicepolicy/CallerIdentity;I)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$3:Lcom/android/server/devicepolicy/CallerIdentity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$3:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 10
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$1:Ljava/lang/String;

    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$2:Landroid/os/Bundle;

    .line 14
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 16
    iget v3, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 18
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 25
    const/16 v0, 0x28

    .line 27
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mComponentName:Landroid/content/ComponentName;

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setKnoxBundleValue(Landroid/os/Bundle;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 44
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 47
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$1:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$2:Landroid/os/Bundle;

    .line 51
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$3:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 53
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 55
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 57
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, v1, v2, p0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 64
    return-void

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 67
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$1:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$2:Landroid/os/Bundle;

    .line 71
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda44;->f$3:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 73
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 75
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 77
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v0, v1, v2, p0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
