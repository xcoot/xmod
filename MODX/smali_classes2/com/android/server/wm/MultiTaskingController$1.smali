.class public final Lcom/android/server/wm/MultiTaskingController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/MultiTaskingController$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const-string v0, "MultiTaskingController"

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->isShopDemo(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    const-string p1, "demo reset"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->resetPackageListStr(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setCornerGestureEnabledWithSettings(Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    const-string/jumbo p1, "settings reset"

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {p0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->resetPackageListStr(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    const/4 v0, 0x0

    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    const-string v1, "displayId"

    .line 95
    .line 96
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    :cond_3
    const-string p2, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-nez p2, :cond_4

    .line 107
    .line 108
    const-string p2, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 121
    .line 122
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 123
    .line 124
    .line 125
    monitor-enter p1

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$1;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 127
    .line 128
    const/4 p2, 0x1

    .line 129
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 130
    .line 131
    .line 132
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 134
    .line 135
    .line 136
    :cond_5
    return-void

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
