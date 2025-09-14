.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

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
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const-string/jumbo v0, "screen_off_timeout"

    .line 6
    .line 7
    .line 8
    const v1, 0xea60

    .line 9
    .line 10
    .line 11
    const/4 v2, -0x2

    .line 12
    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    int-to-long v0, p2

    .line 17
    iput-wide v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOffTimeoutSetting:J

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 20
    .line 21
    iget-object p2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 22
    .line 23
    const-string/jumbo v0, "intelligent_sleep_mode"

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v0, 0x1

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    move p2, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p2, v1

    .line 37
    :goto_0
    iput-boolean p2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 40
    .line 41
    iget-wide v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOffTimeoutSetting:J

    .line 42
    .line 43
    const-wide/32 v5, 0xea60

    .line 44
    .line 45
    .line 46
    cmp-long p2, v3, v5

    .line 47
    .line 48
    if-ltz p2, :cond_2

    .line 49
    .line 50
    iget-boolean p2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-boolean v7, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    .line 56
    .line 57
    if-nez v7, :cond_3

    .line 58
    .line 59
    cmp-long v3, v3, v5

    .line 60
    .line 61
    if-ltz v3, :cond_3

    .line 62
    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    iput-boolean v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    const/4 p2, 0x2

    .line 74
    iput p2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 77
    .line 78
    const/4 p2, 0x4

    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 83
    .line 84
    iput-boolean v1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    .line 85
    .line 86
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 87
    .line 88
    iget p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 89
    .line 90
    if-eq p1, v0, :cond_4

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 93
    .line 94
    const-string/jumbo p2, "screen_brightness"

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    .line 102
    .line 103
    :cond_4
    return-void
.end method
