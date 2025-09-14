.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->$r8$classId:I

    .line 3
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->f$0:Ljava/lang/Object;

    .line 5
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 10
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->f$1:I

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 14
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 16
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 20
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 22
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {p0, v2, v0, p1}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendingPackage(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/content/pm/UserPackage;

    .line 36
    move-result-object p0

    .line 37
    const-string p1, "android"

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->f$0:Ljava/lang/Object;

    .line 46
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 48
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->f$1:I

    .line 50
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 57
    if-eq p1, p0, :cond_1

    .line 59
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 p0, 0x0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 71
    :goto_1
    return p0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->f$0:Ljava/lang/Object;

    .line 74
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 76
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;->f$1:I

    .line 78
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 85
    if-eq p1, p0, :cond_3

    .line 87
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_2

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const/4 p0, 0x0

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    :goto_2
    const/4 p0, 0x1

    .line 99
    :goto_3
    return p0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
