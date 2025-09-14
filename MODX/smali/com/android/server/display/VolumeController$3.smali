.class public final Lcom/android/server/display/VolumeController$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/VolumeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VolumeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 5
    const/16 v1, 0x16

    .line 7
    const/16 v2, 0xb

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    const-string/jumbo v2, "minVol"

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    const-string/jumbo v2, "maxVol"

    .line 28
    const/16 v3, 0x64

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v2, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    .line 35
    iget v2, v2, Lcom/android/server/display/VolumeController;->mVolume:I

    .line 37
    const-string/jumbo v3, "curVol"

    .line 40
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    iget-object v2, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    .line 45
    iget-boolean v2, v2, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 47
    const-string/jumbo v3, "isMute"

    .line 50
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 56
    iget-object p0, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    .line 58
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method
