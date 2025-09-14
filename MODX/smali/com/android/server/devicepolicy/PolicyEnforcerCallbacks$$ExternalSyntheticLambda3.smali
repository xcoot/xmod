.class public final synthetic Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/admin/PolicyKey;

.field public final synthetic f$1:Ljava/lang/Boolean;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    iput p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    iput p3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 5
    packed-switch v2, :pswitch_data_0

    .line 8
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    .line 10
    iget v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    .line 12
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    .line 14
    instance-of v4, v2, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 16
    if-eqz v4, :cond_1

    .line 18
    check-cast v2, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 20
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    .line 22
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 28
    invoke-virtual {v2}, Landroid/app/admin/UserRestrictionPolicyKey;->getRestriction()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 40
    move v0, v1

    .line 41
    :cond_0
    invoke-virtual {v4, v3, v2, v0}, Lcom/android/server/pm/UserManagerInternal;->setUserRestriction(ILjava/lang/String;Z)V

    .line 44
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    return-object p0

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v1, "policyKey is not of type UserRestrictionPolicyKey, passed in policyKey is: "

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0

    .line 68
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    .line 70
    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    .line 72
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    .line 74
    instance-of v4, v2, Landroid/app/admin/PackagePolicyKey;

    .line 76
    if-eqz v4, :cond_4

    .line 78
    check-cast v2, Landroid/app/admin/PackagePolicyKey;

    .line 80
    invoke-virtual {v2}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_2

    .line 95
    move v0, v1

    .line 96
    :cond_2
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 98
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda31;

    .line 100
    const/4 v3, 0x2

    .line 101
    invoke-direct {v1, v2, v0, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda31;-><init>(Ljava/lang/Object;ZII)V

    .line 104
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 107
    if-eqz v0, :cond_3

    .line 109
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 111
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 117
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 119
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 121
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 123
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 125
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 128
    move-result-object v4

    .line 129
    filled-new-array {v2}, [Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    new-instance v6, Lcom/android/server/pm/PackageManagerInternalBase$$ExternalSyntheticLambda0;

    .line 135
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {v1, v4, v5, v6, p0}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 141
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 143
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 145
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 148
    move-result-object v3

    .line 149
    filled-new-array {v2}, [Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v3, v2, p0}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    .line 156
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 158
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 160
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 162
    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 165
    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    .line 168
    monitor-exit v1

    .line 169
    goto :goto_0

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 174
    throw p0

    .line 175
    :cond_3
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 177
    return-object p0

    .line 178
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    const-string/jumbo v1, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    .line 185
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    throw p0

    .line 199
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$0:Landroid/app/admin/PolicyKey;

    .line 201
    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    .line 203
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;->f$2:I

    .line 205
    instance-of v4, v2, Landroid/app/admin/PackagePolicyKey;

    .line 207
    if-eqz v4, :cond_6

    .line 209
    check-cast v2, Landroid/app/admin/PackagePolicyKey;

    .line 211
    invoke-virtual {v2}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 221
    move-result-object v4

    .line 222
    if-eqz v3, :cond_5

    .line 224
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_5

    .line 230
    move v0, v1

    .line 231
    :cond_5
    invoke-interface {v4, v2, v0, p0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 234
    move-result p0

    .line 235
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 238
    move-result-object p0

    .line 239
    return-object p0

    .line 240
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v1, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    .line 247
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 260
    throw p0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
