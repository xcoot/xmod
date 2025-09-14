.class public final Lcom/android/server/notification/EasyMuteController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field public mIsRegister:Z

.field public final mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field public final mMotionListener:Lcom/android/server/notification/EasyMuteController$1;

.field public mMotionOn:Z

.field public mNotificationPlayerBinder:Landroid/os/IBinder;

.field public mOverTurnOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "EasyMuteController"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/notification/EasyMuteController$1;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/android/server/notification/EasyMuteController$1;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    .line 12
    .line 13
    .line 14
    iput-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/android/server/notification/EasyMuteController$1;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v2, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "audio"

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/media/AudioManager;

    .line 30
    .line 31
    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    .line 32
    .line 33
    new-instance v3, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    .line 34
    .line 35
    invoke-direct {v3, p0, v2}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;-><init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string/jumbo v4, "master_motion"

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-virtual {v2, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string/jumbo v2, "motion_overturn"

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v5}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->onChange(Z)V

    .line 68
    .line 69
    .line 70
    :try_start_0
    const-string p1, "android.media.IRingtonePlayer"

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v2, 0x1

    .line 77
    new-array v2, v2, [Ljava/lang/Class;

    .line 78
    .line 79
    const-class v3, Landroid/app/INotificationPlayerOnCompletionListener;

    .line 80
    .line 81
    aput-object v3, v2, v5

    .line 82
    .line 83
    const-string/jumbo v3, "setOnCompletionListener"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    const-string p1, "NoSuchMethodException"

    .line 94
    .line 95
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_1
    const-string p1, "ClassNotFoundException"

    .line 102
    .line 103
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    .line 107
    .line 108
    :goto_0
    return-void
.end method


# virtual methods
.method public final unregisterListener()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 2
    .line 3
    const-string v1, "EasyMuteController"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/android/server/notification/EasyMuteController$1;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 18
    .line 19
    const-string p0, "UnReg. OverTurn"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "UnRegister failed. mEasyMuteMotionManager is null"

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string p0, "UnRegister failed. no registered"

    .line 32
    .line 33
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
