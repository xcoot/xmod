.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

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
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p2, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    .line 16
    .line 17
    iget-object p2, p2, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 24
    .line 25
    iget v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    .line 26
    .line 27
    const-string v2, "accessibility_show_window_magnification_prompt"

    .line 28
    .line 29
    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 30
    .line 31
    .line 32
    const-string/jumbo p2, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const/16 v0, 0x3ec

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance p2, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v2, "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"

    .line 52
    .line 53
    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const v2, 0x10008000

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "android.intent.extra.COMPONENT_NAME"

    .line 69
    .line 70
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    const/high16 v2, 0x10000000

    .line 74
    .line 75
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v3, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    iget v4, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    .line 99
    .line 100
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, p2, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    const-class p2, Landroid/app/StatusBarManager;

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroid/app/StatusBarManager;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    .line 124
    if-nez p1, :cond_1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    .line 134
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    const-string/jumbo p2, "com.android.server.accessibility.magnification.action.DISMISS"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    .line 153
    if-nez p1, :cond_3

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    .line 160
    .line 161
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    .line 163
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 166
    .line 167
    .line 168
    :cond_4
    :goto_2
    return-void
.end method
