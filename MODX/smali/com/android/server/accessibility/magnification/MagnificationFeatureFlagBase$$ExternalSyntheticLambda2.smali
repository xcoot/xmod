.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput-boolean p3, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;->f$2:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;

    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;->f$2:Z

    .line 7
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getNamespace()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getFeatureName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v2, v0, p0, v3}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    move-result p0

    .line 24
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    return-void
.end method
