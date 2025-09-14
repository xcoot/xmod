.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/audio/AudioService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromPrivacyToggle:Z

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
