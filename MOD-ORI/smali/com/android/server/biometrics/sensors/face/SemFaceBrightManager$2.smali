.class public final Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

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
    const-string/jumbo v0, "com.samsung.android.server.biometrics.BIOMETRICS_FACE_NOTIFICATION_SCREEN_FLASH"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_4

    .line 13
    .line 14
    const-string/jumbo p1, "user"

    .line 15
    .line 16
    .line 17
    const/4 v0, -0x2

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string/jumbo v0, "screen_flash_notification_action"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 30
    .line 31
    const-string v1, "SemFaceBrightManager"

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v2, "received: "

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", "

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    const-string/jumbo v0, "close"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const-string v2, "FaceServiceScreenFlash"

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    const-string/jumbo v4, "notification"

    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Landroid/app/NotificationManager;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p2, v2, v3, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const-string/jumbo v0, "settings"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_3

    .line 109
    .line 110
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 111
    .line 112
    iget-object v0, p2, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/app/NotificationManager;

    .line 119
    .line 120
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p2, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    const-string/jumbo v2, "sem_statusbar"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/app/SemStatusBarManager;

    .line 137
    .line 138
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string/jumbo v3, "closeNotificationPanel: "

    .line 146
    .line 147
    .line 148
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_0
    const-string v0, "android.settings.FACE_SETTINGS"

    .line 155
    .line 156
    const-string/jumbo v2, "com.android.settings"

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v2}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :try_start_1
    iget-object p2, p2, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catch_1
    move-exception p1

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string/jumbo v0, "handleGoToSettingAction: "

    .line 177
    .line 178
    .line 179
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {p1, p2, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 186
    .line 187
    iget-object p2, p1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;

    .line 190
    .line 191
    invoke-static {p2, p1}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 195
    .line 196
    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;

    .line 198
    .line 199
    :cond_4
    return-void
.end method
