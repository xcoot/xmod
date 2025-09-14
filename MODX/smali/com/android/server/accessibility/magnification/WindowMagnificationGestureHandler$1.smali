.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public final getScale(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final processScroll(IFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->processScroll(IFF)V

    .line 8
    return-void
.end method

.method public final setScale(FI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(FI)V

    .line 8
    return-void
.end method
