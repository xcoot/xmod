.class public final Lcom/android/server/display/VolumeController$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/VolumeController;

.field public final synthetic val$keyEvent:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/VolumeController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/VolumeController$2;->this$0:Lcom/android/server/display/VolumeController;

    .line 6
    iput p2, p0, Lcom/android/server/display/VolumeController$2;->val$keyEvent:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/VolumeController$2;->this$0:Lcom/android/server/display/VolumeController;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 5
    iget v1, p0, Lcom/android/server/display/VolumeController$2;->val$keyEvent:I

    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x17

    .line 10
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/android/server/display/VolumeController$2;->this$0:Lcom/android/server/display/VolumeController;

    .line 16
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    return-void
.end method
