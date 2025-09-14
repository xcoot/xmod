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

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p2, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    .line 17
    iget-object p2, p2, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object p2

    .line 23
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 25
    iget v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    .line 27
    const-string v2, "accessibility_show_window_magnification_prompt"

    .line 29
    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 32
    const-string/jumbo p2, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p2

    .line 39
    const/16 v0, 0x3ec

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz p2, :cond_2

    .line 44
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance p2, Landroid/content/Intent;

    .line 51
    const-string v2, "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"

    .line 53
    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const v2, 0x10008000

    .line 59
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 64
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    const-string v3, "android.intent.extra.COMPONENT_NAME"

    .line 70
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/high16 v2, 0x10000000

    .line 75
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 81
    move-result-object v2

    .line 82
    iget-object v3, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    .line 87
    move-result v3

    .line 88
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 95
    move-result-object v2

    .line 96
    iget-object v3, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 98
    iget v4, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    .line 100
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, p2, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 107
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 109
    const-class p2, Landroid/app/StatusBarManager;

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroid/app/StatusBarManager;

    .line 117
    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 120
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 122
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    if-nez p1, :cond_1

    .line 126
    goto :goto_0

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 136
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    const-string/jumbo p2, "com.android.server.accessibility.magnification.action.DISMISS"

    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_4

    .line 149
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    .line 151
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    if-nez p1, :cond_3

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 165
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 168
    :cond_4
    :goto_2
    return-void
.end method
