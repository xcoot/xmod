.class public final Lcom/android/server/notification/SmartAlertController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final filter:Landroid/content/IntentFilter;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mInCall:Z

.field public final mIntentReceiver:Lcom/android/server/notification/SmartAlertController$4;

.field public mMissedEventExist:Z

.field public mMotionEnabled:Z

.field public mMotionRegistered:Z

.field public final mPickUpVibratePattern:[J

.field public mScreenOn:Z

.field public final mSmartAlertMotionListener:Lcom/android/server/notification/SmartAlertController$1;

.field public mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field public final mVibrator:Landroid/os/Vibrator;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/notification/SmartAlertController$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$1;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/android/server/notification/SmartAlertController$1;

    .line 30
    .line 31
    new-instance v1, Lcom/android/server/notification/SmartAlertController$4;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$4;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Lcom/android/server/notification/SmartAlertController$4;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    new-instance v1, Landroid/os/Handler;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    const-string/jumbo v2, "vibrator"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/os/Vibrator;

    .line 55
    .line 56
    iput-object v2, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    .line 57
    .line 58
    const-string/jumbo v2, "power"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/os/PowerManager;

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    const-string v4, "SmartAlert"

    .line 69
    .line 70
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iput-object v2, p0, Lcom/android/server/notification/SmartAlertController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    .line 76
    new-instance v2, Landroid/content/IntentFilter;

    .line 77
    .line 78
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    .line 82
    .line 83
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v3, "android.intent.action.PHONE_STATE"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    .line 99
    .line 100
    invoke-direct {v2, p0, v1}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;-><init>(Lcom/android/server/notification/SmartAlertController;Landroid/os/Handler;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string/jumbo p1, "motion_pick_up"

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->onChange(Z)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :array_0
    .array-data 8
        0x0
        0x4b
        0x19
        0x4b
        0x12c
    .end array-data
.end method


# virtual methods
.method public final unregisterListener(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x1f4

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p0}, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    int-to-long p0, p1

    .line 18
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
