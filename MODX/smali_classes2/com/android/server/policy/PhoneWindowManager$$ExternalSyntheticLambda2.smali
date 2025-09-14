.class public final synthetic Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$1:Landroid/view/KeyEvent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$1:Landroid/view/KeyEvent;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getEventTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnHomeWithPolicy(IJ)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    iput-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$1:Landroid/view/KeyEvent;

    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 51
    .line 52
    iget v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    if-eq v2, v3, :cond_4

    .line 56
    .line 57
    const/4 p0, 0x2

    .line 58
    if-eq v2, p0, :cond_3

    .line 59
    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v0, "No action or undefined behavior for double tap home: "

    .line 63
    .line 64
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 68
    .line 69
    const-string v1, "WindowManager"

    .line 70
    .line 71
    invoke-static {p0, v0, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 94
    .line 95
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showPictureInPictureMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    sget-object v2, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->APP_SWITCH:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 100
    .line 101
    invoke-virtual {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 102
    .line 103
    .line 104
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 107
    .line 108
    .line 109
    :catch_0
    :cond_5
    :goto_1
    return-void

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$1:Landroid/view/KeyEvent;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;->f$1:Landroid/view/KeyEvent;

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
