.class public final Lcom/samsung/android/server/audio/ScreenSharingHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper; = null

.field public static sSplitSoundEnabled:Z = false


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/ScreenSharingHelper$1;

.field public mIsAppCasting:Z

.field public mIsDLNAEnabled:Z

.field public mIsPresentationMode:Z

.field public final mScreenSharingStateResumed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/MediaFocusControl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/ScreenSharingHelper$1;

    .line 17
    .line 18
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    .line 19
    .line 20
    new-instance p2, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string p2, "display"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 36
    .line 37
    const-string p0, "audio"

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Landroid/media/AudioManager;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final setMirroringPolicyParameter(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_VIA_SMART_VIEW:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :cond_1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const-string/jumbo v0, "setMirroringPolicyParameter updateSmartViewState active : "

    .line 19
    .line 20
    .line 21
    const-string v1, "AS.ScreenSharingHelper"

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/audio/MicModeManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/MicModeManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 v0, 0x8

    .line 33
    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateState(IZ)V

    .line 35
    .line 36
    .line 37
    :cond_2
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const-string/jumbo p0, "true"

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const-string p0, "false"

    .line 44
    .line 45
    :goto_0
    const-string p1, "l_smart_view_mirroring_active="

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_4
    return-void
.end method

.method public final updateAppCasting(I)V
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    .line 11
    .line 12
    :goto_0
    const-string/jumbo v0, "updateAppCasting : deviceType="

    .line 13
    .line 14
    .line 15
    const-string v1, ", mIsAppCasting="

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    .line 22
    .line 23
    const-string v0, "AS.ScreenSharingHelper"

    .line 24
    .line 25
    invoke-static {v0, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
