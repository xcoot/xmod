.class public final synthetic Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda5;->f$0:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda5;->f$1:Landroid/os/RemoteCallback;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda5;->f$0:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda5;->f$1:Landroid/os/RemoteCallback;

    .line 5
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/graphics/ParcelableColorSpace;

    .line 11
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v1, p1}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    .line 18
    new-instance p1, Landroid/os/Bundle;

    .line 20
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string/jumbo v2, "screenshot_status"

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    const-string/jumbo v2, "screenshot_hardwareBuffer"

    .line 33
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    const-string/jumbo v2, "screenshot_colorSpace"

    .line 39
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    const-string/jumbo v1, "screenshot_timestamp"

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 48
    move-result-wide v2

    .line 49
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 58
    return-void
.end method
