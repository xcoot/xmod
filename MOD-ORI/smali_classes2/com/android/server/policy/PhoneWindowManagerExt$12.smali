.class public final Lcom/android/server/policy/PhoneWindowManagerExt$12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$12;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMultiFingerGesture(II)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$12;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const-string v0, "PhoneWindowManagerExt"

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string p0, "Skip multi finger gesture in DeX mode."

    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$12;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "handleMultiFingerTap behavior="

    .line 25
    .line 26
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    if-eq p1, p2, :cond_5

    .line 41
    .line 42
    const/4 p2, 0x5

    .line 43
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 44
    .line 45
    if-eq p1, p2, :cond_3

    .line 46
    .line 47
    const/4 p2, 0x6

    .line 48
    if-eq p1, p2, :cond_1

    .line 49
    .line 50
    const-string p0, "The MultiFingerTap type was wrong."

    .line 51
    .line 52
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-nez p0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-nez p0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_TABLE_MODE:Z

    .line 80
    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    new-instance p1, Landroid/content/Intent;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string p2, "com.sec.android.app.launcher/com.sec.android.app.launcher.overlayapps.OverlayAppsService"

    .line 89
    .line 90
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    :try_start_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string p2, "failed to startService(), "

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    new-instance p1, Landroid/content/Intent;

    .line 123
    .line 124
    const-string p2, "android.intent.action.MAIN"

    .line 125
    .line 126
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string p2, "android.intent.category.HOME"

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    const/high16 p2, 0x10000000

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    const-string/jumbo p2, "sec.android.intent.extra.LAUNCHER_ACTION"

    .line 140
    .line 141
    .line 142
    const-string v1, "com.android.launcher2.ALL_APPS"

    .line 143
    .line 144
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    :try_start_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_1
    move-exception p0

    .line 154
    const-string p1, "No activity to launch launcher app list. "

    .line 155
    .line 156
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .line 158
    .line 159
    :catch_2
    :goto_0
    return-void
.end method
