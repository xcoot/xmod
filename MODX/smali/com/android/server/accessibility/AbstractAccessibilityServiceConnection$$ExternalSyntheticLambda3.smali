.class public final synthetic Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 6
    iput p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 3
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda3;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 12
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 18
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal;->userScreenshot(I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotSuccess(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x4

    .line 29
    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 32
    :goto_0
    return-void
.end method
