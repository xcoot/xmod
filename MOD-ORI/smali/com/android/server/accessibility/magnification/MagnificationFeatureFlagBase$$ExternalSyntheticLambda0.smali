.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getFeatureName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
