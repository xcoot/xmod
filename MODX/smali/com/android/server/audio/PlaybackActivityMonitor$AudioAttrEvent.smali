.class public final Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mPlayerAttr:Ljava/lang/Object;

.field public final mPlayerIId:I


# direct methods
.method public constructor <init>(ILandroid/media/AudioAttributes;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 5
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    .line 6
    iput-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v2, "player piid:"

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, " format update:"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Ljava/lang/Object;

    .line 28
    check-cast p0, Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 40
    return-object v0

    .line 41
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v2, "player piid:"

    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, " new AudioAttributes:"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Ljava/lang/Object;

    .line 63
    check-cast p0, Landroid/media/AudioAttributes;

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 75
    return-object v0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
