.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/Executor;Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;->f$2:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;->f$2:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getNamespace()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
