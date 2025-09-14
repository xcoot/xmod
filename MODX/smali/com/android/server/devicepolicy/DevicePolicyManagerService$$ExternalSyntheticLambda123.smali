.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda123;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda123;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda123;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda123;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda123;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 12
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 21
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 26
    move-result p0

    .line 27
    xor-int/lit8 p0, p0, 0x1

    .line 29
    return p0

    .line 30
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 32
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 37
    move-result p0

    .line 38
    xor-int/lit8 p0, p0, 0x1

    .line 40
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
