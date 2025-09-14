.class public final Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 3
    new-instance p1, Landroid/os/Handler;

    .line 5
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 8
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    :goto_0
    if-eqz p1, :cond_8

    .line 11
    const-string p2, "IntelligentBatterySaverSettingsObserver"

    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v1

    .line 18
    sparse-switch v1, :sswitch_data_0

    .line 21
    goto :goto_1

    .line 22
    :sswitch_0
    const-string/jumbo v1, "ibs_end_hour"

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v0, 0x4

    .line 33
    goto :goto_1

    .line 34
    :sswitch_1
    const-string/jumbo v1, "ibs_start_hour"

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v0, 0x3

    .line 45
    goto :goto_1

    .line 46
    :sswitch_2
    const-string/jumbo v1, "ibs_switch"

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/4 v0, 0x2

    .line 57
    goto :goto_1

    .line 58
    :sswitch_3
    const-string/jumbo v1, "ibs_start_minute"

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_4

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    const/4 v0, 0x1

    .line 69
    goto :goto_1

    .line 70
    :sswitch_4
    const-string/jumbo v1, "ibs_end_minute"

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_5

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    const/4 v0, 0x0

    .line 81
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 84
    const-string/jumbo p0, "unknown settings change: "

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    goto :goto_2

    .line 95
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->updateSwitchSetting()V

    .line 100
    goto :goto_2

    .line 101
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 103
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mHandler:Landroid/os/Handler;

    .line 105
    if-nez p1, :cond_6

    .line 107
    const-string p0, "Handler is null, cannot post delayed runnable."

    .line 109
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mRunnable:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 121
    const-string p0, "Had existed callback."

    .line 123
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto :goto_2

    .line 127
    :cond_7
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mRunnable:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;

    .line 129
    const-wide/16 v0, 0x3e8

    .line 131
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :cond_8
    :goto_2
    return-void

    .line 135
    :sswitch_data_0
    .sparse-switch
        -0x4c71b323 -> :sswitch_4
        -0x25bcc9ca -> :sswitch_3
        0xae4c099 -> :sswitch_2
        0x4a022686 -> :sswitch_1
        0x50a0baed -> :sswitch_0
    .end sparse-switch

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
