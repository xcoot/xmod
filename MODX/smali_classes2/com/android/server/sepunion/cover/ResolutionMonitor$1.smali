.class public final Lcom/android/server/sepunion/cover/ResolutionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/ResolutionMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

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
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mConfiguration:Landroid/content/res/Configuration;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v1, "onReceive "

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "CoverManager_ResolutionMonitor"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    const v0, 0x20001000

    .line 54
    .line 55
    .line 56
    and-int/2addr p2, v0

    .line 57
    if-ne p2, v0, :cond_0

    .line 58
    .line 59
    iget-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    .line 60
    .line 61
    iget-object v0, p2, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object p2, p2, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;->this$0:Lcom/android/server/sepunion/cover/ResolutionMonitor;

    .line 69
    .line 70
    new-instance p2, Landroid/content/res/Configuration;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mConfiguration:Landroid/content/res/Configuration;

    .line 76
    .line 77
    :cond_1
    return-void
.end method
