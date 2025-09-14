.class public final Lcom/android/server/media/MediaShellCommand$ControllerCallback;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaShellCommand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 3
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onAudioInfoChanged "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final onExtrasChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onExtrasChanged "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "title="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 26
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 28
    const-string/jumbo v0, "onMetadataChanged "

    .line 31
    invoke-static {p0, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onPlaybackStateChanged "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onQueueChanged, "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    if-nez p1, :cond_0

    .line 15
    const-string/jumbo p1, "null queue"

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, " size="

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    move-result p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-static {v0, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 40
    return-void
.end method

.method public final onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onQueueTitleChange "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 5
    const-string/jumbo v0, "onSessionDestroyed. Enter q to quit."

    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;->this$0:Lcom/android/server/media/MediaShellCommand;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onSessionEvent event="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string p1, ", extras="

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    return-void
.end method
