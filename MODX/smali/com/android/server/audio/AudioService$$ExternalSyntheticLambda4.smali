.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 11
    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v1, "fine volume : "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const-string v0, "AS.AudioService"

    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast p0, Lcom/android/server/audio/AudioService;

    .line 37
    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    const-class v1, Landroid/media/AudioManagerInternal;

    .line 44
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/media/AudioManagerInternal;

    .line 50
    if-eqz v1, :cond_0

    .line 52
    new-instance v2, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;

    .line 54
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 56
    new-instance v3, Landroid/os/Handler;

    .line 58
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 61
    invoke-direct {v2, v3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 64
    const-string/jumbo v3, "notification"

    .line 67
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/app/NotificationManager;

    .line 73
    iput-object v3, v2, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mNm:Landroid/app/NotificationManager;

    .line 75
    invoke-virtual {v3}, Landroid/app/NotificationManager;->getZenMode()I

    .line 78
    move-result v3

    .line 79
    iput v3, v2, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mZenMode:I

    .line 81
    const-class v3, Landroid/media/AudioManagerInternal;

    .line 83
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroid/media/AudioManagerInternal;

    .line 89
    iput-object v3, v2, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    move-result-object p0

    .line 95
    iput-object p0, v2, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    const-string/jumbo v3, "zen_mode"

    .line 100
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {p0, v3, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    invoke-virtual {v1, v2}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 110
    :cond_0
    return-void

    .line 111
    :pswitch_1
    check-cast p0, Landroid/content/Context;

    .line 113
    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 115
    const v1, 0x1040d6c

    .line 118
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 125
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
