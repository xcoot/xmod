.class public final synthetic Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WmScreenshotController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WmScreenshotController;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/content/ServiceConnection;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WmScreenshotController;->resetConnection(Landroid/content/ServiceConnection;Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WmScreenshotController;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WmScreenshotController;->invalidateForScreenShot(Lcom/android/server/wm/DisplayContent;Z)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
