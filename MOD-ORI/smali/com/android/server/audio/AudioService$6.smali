.class public final Lcom/android/server/audio/AudioService$6;
.super Landroid/media/IRecordingConfigDispatcher$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/IRecordingConfigDispatcher$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchRecordingConfigChange(Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$6;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 4
    .line 5
    const/16 v1, 0x25

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v5, p1

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
