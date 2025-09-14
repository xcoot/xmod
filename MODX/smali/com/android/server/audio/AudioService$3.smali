.class public final Lcom/android/server/audio/AudioService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

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
    if-eqz p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    .line 6
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne p1, v0, :cond_2

    .line 20
    iget-object p0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    .line 22
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 24
    if-eqz p0, :cond_1

    .line 26
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 29
    :cond_1
    const-string/jumbo p0, "screen_state=on"

    .line 32
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    .line 38
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 40
    if-eqz p0, :cond_3

    .line 42
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 45
    :cond_3
    const-string/jumbo p0, "screen_state=off"

    .line 48
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
