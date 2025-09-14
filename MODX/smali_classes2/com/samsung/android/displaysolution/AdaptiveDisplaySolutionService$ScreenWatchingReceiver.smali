.class public final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "action  :  "

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v0, "AdaptiveDisplaySolutionService"

    .line 20
    .line 21
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 36
    .line 37
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget p2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    if-lt p2, v0, :cond_0

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    const/4 v1, -0x2

    .line 50
    const-string/jumbo v2, "screen_brightness_mode"

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v2, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void

    .line 63
    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    :cond_4
    return-void
.end method
