.class public final Lcom/android/server/sepunion/SmartManagerService$3;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$3;->this$0:Lcom/android/server/sepunion/SmartManagerService;

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
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$3;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p3, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 14
    .line 15
    const/16 p4, 0x28

    .line 16
    .line 17
    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    iput p4, p3, Landroid/os/Message;->what:I

    .line 25
    .line 26
    new-instance p4, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "pkg_name"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "class_name"

    .line 38
    .line 39
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 46
    .line 47
    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    return-void
.end method
