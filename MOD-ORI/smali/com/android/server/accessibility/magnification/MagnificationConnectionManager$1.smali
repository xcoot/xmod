.class public final Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationButton(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
