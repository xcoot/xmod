.class public final synthetic Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotFileController;

.field public final synthetic f$1:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotFileController;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WmScreenshotFileController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WmScreenshotFileController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move-object v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string p0, "WindowManager"

    .line 22
    .line 23
    const-string v0, "Failed to take screenshot with rotation Layer in Transition"

    .line 24
    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-string/jumbo v3, "rotation"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/android/server/wm/WmScreenshotFileController;->saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V

    .line 33
    .line 34
    .line 35
    :goto_1
    return-void
.end method
