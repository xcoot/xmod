.class public final Lcom/android/server/audio/AudioService$11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public isSmartViewEnabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    .line 16
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "no_unmute_microphone"

    .line 4
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 7
    move-result v1

    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    iget-object p0, p0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 14
    if-eq v1, v0, :cond_0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    .line 21
    :cond_0
    const-string/jumbo v0, "no_adjust_volume"

    .line 24
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    const-string/jumbo v3, "disallow_unmute_device"

    .line 32
    const/4 v4, 0x0

    .line 33
    if-nez v1, :cond_2

    .line 35
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move p3, v4

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    move p3, v2

    .line 45
    :goto_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_4

    .line 51
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_3

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move v2, v4

    .line 59
    :cond_4
    :goto_2
    if-eq p3, v2, :cond_5

    .line 61
    sget p2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 63
    const-string/jumbo p2, "onUserRestrictionsChanged"

    .line 66
    invoke-virtual {p0, v4, p1, p2, v2}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(IILjava/lang/String;Z)V

    .line 69
    :cond_5
    return-void
.end method
