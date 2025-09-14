.class public final Lcom/android/server/accessibility/FlashNotificationsController$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$4;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$4;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$4;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayState:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
