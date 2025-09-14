.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/ActiveAdmin;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/server/devicepolicy/EnforcingAdmin;

.field public final synthetic f$6:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/ActiveAdmin;IZILcom/android/server/devicepolicy/EnforcingAdmin;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$1:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$2:I

    .line 10
    iput-boolean p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$3:Z

    .line 12
    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$4:I

    .line 14
    iput-object p6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$5:Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 16
    iput-object p7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$6:Landroid/content/ComponentName;

    .line 18
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$1:Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 5
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$2:I

    .line 7
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$3:Z

    .line 9
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$4:I

    .line 11
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$5:Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 13
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda60;->f$6:Landroid/content/ComponentName;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v6, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 20
    iget v7, v6, Landroid/app/admin/PasswordPolicy;->quality:I

    .line 22
    if-eq v7, v2, :cond_2

    .line 24
    iput v2, v6, Landroid/app/admin/PasswordPolicy;->quality:I

    .line 26
    invoke-static {}, Landroid/app/admin/flags/Flags;->unmanagedModeMigration()Z

    .line 29
    move-result v2

    .line 30
    const/4 v7, 0x0

    .line 31
    if-eqz v2, :cond_1

    .line 33
    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 38
    move-result v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v2, v4

    .line 41
    :goto_0
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 43
    sget-object v9, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 45
    invoke-virtual {v8, v9, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iput v7, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 51
    :goto_1
    invoke-virtual {v0, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetInactivePasswordRequirementsIfRPlus(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 54
    invoke-virtual {v0, v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordValidityCheckpointLocked(IZ)Ljava/util/Set;

    .line 57
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordQualityCacheForUserGroup(I)V

    .line 60
    invoke-virtual {v0, v4, v7, v7, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 63
    :cond_2
    invoke-virtual {v0, p0, v4, v3, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->logPasswordQualitySetIfSecurityLogEnabled(Landroid/content/ComponentName;IZLandroid/app/admin/PasswordPolicy;)V

    .line 66
    return-void
.end method
