.class public final synthetic Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    .line 6
    .line 7
    const-string v1, "EasyMuteController"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/android/server/notification/EasyMuteController$1;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 27
    .line 28
    .line 29
    iput-boolean v3, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 30
    .line 31
    const-string v0, "Reg. OverTurn"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lcom/android/server/notification/EasyMuteController$2;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/android/server/notification/EasyMuteController$2;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    .line 43
    .line 44
    .line 45
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v2, 0x0

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/os/IBinder;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 67
    .line 68
    new-instance v3, Lcom/android/server/notification/EasyMuteController$3;

    .line 69
    .line 70
    invoke-direct {v3, p0}, Lcom/android/server/notification/EasyMuteController$3;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    .line 71
    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    const-string p0, "RemoteException"

    .line 79
    .line 80
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_1
    const-string v0, "InvocationTargetException"

    .line 85
    .line 86
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 90
    .line 91
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_2
    const-string v0, "IllegalAccessException"

    .line 100
    .line 101
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 105
    .line 106
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    const-string p0, "Register failed. mEasyMuteMotionManager is null"

    .line 115
    .line 116
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    const-string p0, "Register failed. already registered or setting not eanbled"

    .line 121
    .line 122
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_0
    return-void
.end method
