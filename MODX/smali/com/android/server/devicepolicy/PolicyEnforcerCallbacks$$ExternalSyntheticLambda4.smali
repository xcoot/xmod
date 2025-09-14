.class public final synthetic Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/app/admin/PolicyKey;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;->f$0:Landroid/app/admin/PolicyKey;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Integer;

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;->f$0:Landroid/app/admin/PolicyKey;

    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    .line 5
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Integer;

    .line 7
    check-cast v0, Landroid/app/admin/PackagePolicyKey;

    .line 9
    invoke-virtual {v0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v2, Landroid/content/Intent;

    .line 18
    const-string v3, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    .line 20
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 42
    return-void
.end method
