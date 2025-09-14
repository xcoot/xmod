.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final synthetic f$1:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-class v2, Landroid/view/WindowManager;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/view/WindowManager;

    .line 21
    .line 22
    new-instance v3, Landroid/os/Handler;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/os/Handler;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
