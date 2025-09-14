.class public final Lcom/android/server/audio/AudioService$VolumeStreamState$1;
.super Landroid/util/SparseIntArray;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 2
    .line 3
    const/16 p1, 0x8

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final put(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "put"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final record(IILjava/lang/String;)V
    .locals 3

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p1, "default"

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "audio.volume."

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 23
    .line 24
    iget v2, v2, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 25
    .line 26
    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "."

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 49
    .line 50
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object p3, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 55
    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p3, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object p2, Landroid/media/MediaMetrics$Property;->MIN_INDEX:Landroid/media/MediaMetrics$Key;

    .line 65
    .line 66
    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 67
    .line 68
    iget p3, p3, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 69
    .line 70
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object p2, Landroid/media/MediaMetrics$Property;->MAX_INDEX:Landroid/media/MediaMetrics$Key;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 81
    .line 82
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 83
    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p1, p2, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final setValueAt(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "setValueAt"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
