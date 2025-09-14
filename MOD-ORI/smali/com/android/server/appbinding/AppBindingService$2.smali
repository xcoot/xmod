.class public final Lcom/android/server/appbinding/AppBindingService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method public constructor <init>(Lcom/android/server/appbinding/AppBindingService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

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
    .locals 4

    .line 1
    const-string p1, "android.intent.extra.user_handle"

    .line 2
    .line 3
    const/16 v0, -0x2710

    .line 4
    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const-string p0, "AppBindingService"

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Intent broadcast does not contain user handle: "

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v1

    .line 48
    :try_start_0
    new-instance p2, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda4;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Lcom/android/server/appbinding/AppBindingService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lcom/android/server/appbinding/AppBindingService;->forAllAppsLocked(Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService;->mRunningUsers:Landroid/util/SparseBooleanArray;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 59
    .line 60
    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x0

    .line 78
    :goto_0
    if-nez v1, :cond_3

    .line 79
    .line 80
    const-string p0, "AppBindingService"

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v0, "Intent broadcast does not contain package name: "

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    const-string v2, "android.intent.extra.REPLACING"

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_5

    .line 117
    .line 118
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    if-eqz p2, :cond_6

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    .line 130
    .line 131
    invoke-static {p0, v1, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    .line 136
    .line 137
    invoke-static {p0, v1, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_1
    return-void
.end method
