.class public final Lcom/android/server/wm/WmScreenshotController$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic val$conn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$2;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/wm/WmScreenshotController$2;->val$conn:Landroid/content/ServiceConnection;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WmScreenshotController$2;->val$conn:Landroid/content/ServiceConnection;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$2;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WmScreenshotController;->resetConnection(Landroid/content/ServiceConnection;Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
