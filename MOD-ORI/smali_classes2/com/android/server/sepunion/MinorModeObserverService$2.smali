.class public final Lcom/android/server/sepunion/MinorModeObserverService$2;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/MinorModeObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/MinorModeObserverService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/MinorModeObserverService$2;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService$2;->this$0:Lcom/android/server/sepunion/MinorModeObserverService;

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeSupport:Z

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mMinorModeEnabled:Z

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mLimitPackageSet:Ljava/util/Set;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    check-cast p2, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/16 p3, 0x14

    .line 34
    .line 35
    iput p3, p2, Landroid/os/Message;->what:I

    .line 36
    .line 37
    new-instance p3, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "event_type"

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "user_id"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo p4, "pkg_name"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p4, "class_name"

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/sepunion/MinorModeObserverService;->mHandler:Lcom/android/server/sepunion/MinorModeObserverService$MyHandler;

    .line 77
    .line 78
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public final noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    return-void
.end method
