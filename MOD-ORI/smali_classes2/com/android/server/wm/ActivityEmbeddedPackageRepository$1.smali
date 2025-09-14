.class public final Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityEmbeddedPackageRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

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
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_1
    if-nez v2, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    const/4 v3, 0x0

    .line 54
    :try_start_0
    iget-object p2, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 55
    .line 56
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string v4, "android.window.PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE"

    .line 63
    .line 64
    invoke-virtual {p2, v4, v2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    .line 65
    .line 66
    .line 67
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    move p2, v1

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    :cond_3
    move p2, v3

    .line 73
    :goto_0
    if-eqz p2, :cond_5

    .line 74
    .line 75
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 76
    .line 77
    if-eq v0, p2, :cond_4

    .line 78
    .line 79
    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 80
    .line 81
    if-ne v0, p2, :cond_7

    .line 82
    .line 83
    :cond_4
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 86
    .line 87
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 88
    .line 89
    invoke-virtual {p2, v1, p1, v2, v3}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(IILjava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->add(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 99
    .line 100
    if-ne v0, p2, :cond_7

    .line 101
    .line 102
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 103
    .line 104
    monitor-enter p2

    .line 105
    :try_start_1
    iget-object v0, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    .line 106
    .line 107
    check-cast v0, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    monitor-exit p2

    .line 116
    goto :goto_1

    .line 117
    :cond_6
    :try_start_2
    iget-object v0, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    .line 118
    .line 119
    check-cast v0, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    monitor-exit p2

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 130
    .line 131
    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(IILjava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    monitor-exit p2

    .line 137
    throw p0

    .line 138
    :cond_7
    :goto_1
    return-void
.end method
