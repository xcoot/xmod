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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 3

    .line 1
    if-eqz p3, :cond_4

    .line 2
    .line 3
    if-nez p6, :cond_4

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 8
    .line 9
    iget-boolean p1, p1, Lcom/android/server/chimera/SettingRepository;->mIsDynamicTargetFreeEnabled:Z

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    aget-object p3, p5, p1

    .line 15
    .line 16
    iget-object p5, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 17
    .line 18
    iget-object p6, p5, Lcom/android/server/chimera/SystemRepository;->mPkgIconMap:Ljava/util/Map;

    .line 19
    .line 20
    check-cast p6, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {p6, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p6

    .line 26
    const/4 v0, 0x1

    .line 27
    if-eqz p6, :cond_0

    .line 28
    .line 29
    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mPkgIconMap:Ljava/util/Map;

    .line 30
    .line 31
    check-cast p1, Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p6, Landroid/content/Intent;

    .line 45
    .line 46
    const-string v1, "android.intent.action.MAIN"

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {p6, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "android.intent.category.LAUNCHER"

    .line 53
    .line 54
    invoke-virtual {p6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p6, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object v1, p5, Lcom/android/server/chimera/SystemRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    invoke-virtual {v1, p6, p1, p4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    if-eqz p4, :cond_1

    .line 67
    .line 68
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    if-lez p4, :cond_1

    .line 73
    .line 74
    move p1, v0

    .line 75
    :cond_1
    iget-object p4, p5, Lcom/android/server/chimera/SystemRepository;->mPkgIconMap:Ljava/util/Map;

    .line 76
    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p6

    .line 81
    check-cast p4, Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {p4, p3, p6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :goto_0
    if-eqz p1, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 89
    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    invoke-static {p1, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mPsiSomeTotalList:Ljava/util/Map;

    .line 107
    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    const/4 p3, 0x2

    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 120
    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p3, p4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_3

    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 135
    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p3, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mHandler:Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;

    .line 147
    .line 148
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    if-eqz p0, :cond_4

    .line 156
    .line 157
    invoke-static {p0, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-wide/16 p2, 0x3e8

    .line 162
    .line 163
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 164
    .line 165
    .line 166
    :cond_4
    return-void
.end method
