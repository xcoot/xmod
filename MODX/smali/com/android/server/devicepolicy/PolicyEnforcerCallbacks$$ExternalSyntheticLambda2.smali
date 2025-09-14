.class public final synthetic Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Boolean;

    .line 8
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Boolean;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 20
    :goto_1
    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUsbDataSignal(Landroid/content/Context;Z)V

    .line 23
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    return-object p0
.end method
