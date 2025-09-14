.class public final Lcom/android/server/wm/TspStateController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TspStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TspStateController;Lcom/android/server/wm/TspStateController$H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    .line 13
    .line 14
    iget-object p2, p1, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string/jumbo v0, "setting_tsp_threshold"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p1, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo p2, "onChange "

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string/jumbo p2, "tspstatemanager"

    .line 55
    .line 56
    .line 57
    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    sget-object p1, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string/jumbo p2, "setting_tsp_debug"

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/wm/TspStateController$SettingsObserver;->this$0:Lcom/android/server/wm/TspStateController;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const/4 p2, 0x1

    .line 102
    if-ne p1, p2, :cond_2

    .line 103
    .line 104
    move v0, p2

    .line 105
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    .line 106
    .line 107
    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    .line 108
    .line 109
    :cond_3
    :goto_0
    return-void
.end method
