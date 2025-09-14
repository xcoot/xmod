.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

.field public final synthetic f$1:Landroid/accessibilityservice/MagnificationConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;->f$1:Landroid/accessibilityservice/MagnificationConfig;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;->f$1:Landroid/accessibilityservice/MagnificationConfig;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    .line 6
    .line 7
    iget v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 10
    .line 11
    invoke-interface {p1, v1, v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
