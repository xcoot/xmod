.class public final Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;->this$0:Lcom/android/server/chimera/SystemEventListener;

    .line 6
    return-void
.end method


# virtual methods
.method public final onIntentStarted(Landroid/content/Intent;J)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 7
    move-result-object p2

    .line 8
    const-string p3, "SystemEventListener"

    .line 10
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;->this$0:Lcom/android/server/chimera/SystemEventListener;

    .line 12
    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_4

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    :goto_0
    iget-object p2, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_3

    .line 48
    const-string/jumbo p2, "com.samsung.android.permissioncontroller"

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object p2, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 60
    const/16 v0, 0xb

    .line 62
    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 65
    move-result-object p2

    .line 66
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 70
    const-string v1, "appLaunchIntent package name is: "

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {p3, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 84
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    :cond_3
    :goto_1
    return-void

    .line 88
    :cond_4
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "Not an effective intent: "

    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    invoke-static {p3, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
