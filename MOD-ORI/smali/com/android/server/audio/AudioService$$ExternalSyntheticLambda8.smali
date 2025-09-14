.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/audio/AudioService;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const-string v0, "AS.AudioService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ", package:"

    .line 5
    .line 6
    const-string v3, ", device:"

    .line 7
    .line 8
    const-string/jumbo v4, "uid:"

    .line 9
    .line 10
    .line 11
    iget v5, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 12
    .line 13
    packed-switch v5, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/audio/AudioService;

    .line 17
    .line 18
    iget v6, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$1:I

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$2:I

    .line 21
    .line 22
    sget v7, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v7, Lcom/android/server/audio/AudioService;->sAppCastingLogger:Lcom/android/server/utils/EventLogger;

    .line 28
    .line 29
    new-instance v8, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 30
    .line 31
    invoke-static {v6, p0, v4, v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, v5, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v8, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v1, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v5, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 58
    .line 59
    invoke-virtual {v0, v6, p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppToRemoteSubmix(II)V

    .line 60
    .line 61
    .line 62
    iget-object p0, v5, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->onRoutingUpdated()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->observeDevicesForMediaStream()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/audio/AudioService;

    .line 72
    .line 73
    iget v6, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$1:I

    .line 74
    .line 75
    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->f$2:I

    .line 76
    .line 77
    sget v7, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    sget-object v7, Lcom/android/server/audio/AudioService;->sAppCastingLogger:Lcom/android/server/utils/EventLogger;

    .line 83
    .line 84
    new-instance v8, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 85
    .line 86
    invoke-static {v6, p0, v4, v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    iget-object v2, v5, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {v8, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v1, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 110
    .line 111
    .line 112
    iget-object p0, v5, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 113
    .line 114
    const/16 v0, -0x3ea

    .line 115
    .line 116
    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppToRemoteSubmix(II)V

    .line 117
    .line 118
    .line 119
    iget-object p0, v5, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->onRoutingUpdated()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->observeDevicesForMediaStream()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
