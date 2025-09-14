.class public final Lcom/android/server/chimera/ChimeraRecentAppManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ChimeraRecentAppManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 3

    .line 1
    if-eqz p3, :cond_4

    .line 3
    if-nez p6, :cond_4

    .line 5
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 7
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 9
    iget-boolean p1, p1, Lcom/android/server/chimera/SettingRepository;->mIsDynamicTargetFreeEnabled:Z

    .line 11
    if-eqz p1, :cond_4

    .line 13
    const/4 p1, 0x0

    .line 14
    aget-object p3, p5, p1

    .line 16
    iget-object p5, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 18
    iget-object p6, p5, Lcom/android/server/chimera/SystemRepository;->mPkgIconMap:Ljava/util/Map;

    .line 20
    check-cast p6, Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {p6, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    move-result p6

    .line 26
    const/4 v0, 0x1

    .line 27
    if-eqz p6, :cond_0

    .line 29
    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mPkgIconMap:Ljava/util/Map;

    .line 31
    check-cast p1, Landroid/util/ArrayMap;

    .line 33
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p6, Landroid/content/Intent;

    .line 46
    const-string v1, "android.intent.action.MAIN"

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {p6, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    const-string v1, "android.intent.category.LAUNCHER"

    .line 54
    invoke-virtual {p6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p6, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p5, Lcom/android/server/chimera/SystemRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 62
    invoke-virtual {v1, p6, p1, p4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 65
    move-result-object p4

    .line 66
    if-eqz p4, :cond_1

    .line 68
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 71
    move-result p4

    .line 72
    if-lez p4, :cond_1

    .line 74
    move p1, v0

    .line 75
    :cond_1
    iget-object p4, p5, Lcom/android/server/chimera/SystemRepository;->mPkgIconMap:Ljava/util/Map;

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object p6

    .line 81
    check-cast p4, Landroid/util/ArrayMap;

    .line 83
    invoke-virtual {p4, p3, p6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_0
    if-eqz p1, :cond_4

    .line 88
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    if-eqz p1, :cond_2

    .line 99
    invoke-static {p1, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object p3

    .line 112
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 116
    const/4 p3, 0x2

    .line 117
    if-eqz p1, :cond_3

    .line 119
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object p4

    .line 125
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-virtual {p1, p3, p4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_3

    .line 134
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object p4

    .line 140
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    invoke-virtual {p1, p3, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 146
    :cond_3
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 148
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    if-eqz p0, :cond_4

    .line 157
    invoke-static {p0, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 160
    move-result-object p1

    .line 161
    const-wide/16 p2, 0x3e8

    .line 163
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 166
    :cond_4
    return-void
.end method
