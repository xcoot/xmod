.class public final Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

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
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string/jumbo v0, "master_motion"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x2

    .line 14
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    move p1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, v1

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string/jumbo v4, "motion_overturn"

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    move v1, v0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "EasyMute updated 1."

    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " 2."

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v2, "EasyMuteController"

    .line 72
    .line 73
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    .line 77
    .line 78
    if-ne v0, p1, :cond_3

    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    .line 81
    .line 82
    if-eq v0, v1, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string/jumbo p0, "setEasyMuteEnabled no setting changed"

    .line 86
    .line 87
    .line 88
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    .line 93
    .line 94
    iput-boolean v1, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 101
    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    const-string/jumbo v0, "motion_recognition"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const-string/jumbo p0, "setEasyMuteEnabled mEasyMuteMotionManager in not null"

    .line 119
    .line 120
    .line 121
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    const-string/jumbo p1, "setEasyMuteEnabled setting off"

    .line 126
    .line 127
    .line 128
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iget-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 132
    .line 133
    if-eqz p1, :cond_6

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 136
    .line 137
    .line 138
    :cond_6
    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 140
    .line 141
    :goto_2
    return-void
.end method
