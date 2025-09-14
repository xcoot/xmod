.class public final Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/smartclip/SpenGestureScreenShotManager$ScreenShot;


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(IIZLandroid/graphics/Rect;IIZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 12
    .line 13
    move v2, p1

    .line 14
    move v3, p2

    .line 15
    move v4, p3

    .line 16
    move-object v5, p4

    .line 17
    move v6, p5

    .line 18
    move v7, p6

    .line 19
    move/from16 v8, p7

    .line 20
    .line 21
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/WindowManagerInternal;->takeScreenshotToTargetWindowInternal(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v1, p0

    .line 26
    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->bitmap:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    return-void
.end method
