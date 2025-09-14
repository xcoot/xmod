.class public final Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, -0x2

    .line 10
    const-string/jumbo v1, "motion_pick_up"

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v0

    .line 23
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v1, "setSmartAlertEnabled:"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " pre:"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    .line 45
    .line 46
    const-string v3, "SmartAlertController"

    .line 47
    .line 48
    invoke-static {v3, p1, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 49
    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    .line 52
    .line 53
    if-eq v2, p1, :cond_3

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Lcom/android/server/notification/SmartAlertController$4;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    .line 64
    .line 65
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    const-string/jumbo v0, "motion_recognition"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    .line 90
    .line 91
    iget-boolean p1, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    .line 96
    .line 97
    .line 98
    :cond_2
    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 100
    .line 101
    :cond_3
    :goto_1
    return-void
.end method
