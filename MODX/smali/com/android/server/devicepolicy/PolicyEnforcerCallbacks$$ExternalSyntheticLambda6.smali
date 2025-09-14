.class public final synthetic Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Integer;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Integer;

    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Integer;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Integer;

    .line 5
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {v1, v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->setContentProtectionPolicy(ILjava/lang/Integer;)V

    .line 22
    :cond_0
    return-void
.end method
