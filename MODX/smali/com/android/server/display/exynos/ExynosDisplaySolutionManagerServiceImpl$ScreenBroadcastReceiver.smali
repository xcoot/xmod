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

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 14
    const-string p1, "ExynosDisplaySolutionManagerServiceImpl"

    .line 16
    const-string p2, "ACTION_BOOT_COMPLETED"

    .line 18
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 23
    iput-boolean v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    .line 25
    iget-boolean p2, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mTuneEnableSetting:Z

    .line 27
    if-eqz p2, :cond_0

    .line 29
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneTimer(Z)V

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 36
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 38
    if-eqz p1, :cond_4

    .line 40
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 54
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 56
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 58
    if-eqz p1, :cond_4

    .line 60
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_3

    .line 74
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 76
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 78
    if-eqz p1, :cond_4

    .line 80
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 82
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const-string p0, "android.intent.action.USER_PRESENT"

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    :cond_4
    :goto_0
    return-void
.end method
