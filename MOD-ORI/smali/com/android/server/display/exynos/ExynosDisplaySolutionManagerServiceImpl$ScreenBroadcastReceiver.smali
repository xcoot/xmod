.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

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
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const-string p1, "ExynosDisplaySolutionManagerServiceImpl"

    .line 15
    .line 16
    const-string p2, "ACTION_BOOT_COMPLETED"

    .line 17
    .line 18
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 22
    .line 23
    iput-boolean v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    .line 24
    .line 25
    iget-boolean p2, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mTuneEnableSetting:Z

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneTimer(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 75
    .line 76
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const-string p0, "android.intent.action.USER_PRESENT"

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_0
    return-void
.end method
