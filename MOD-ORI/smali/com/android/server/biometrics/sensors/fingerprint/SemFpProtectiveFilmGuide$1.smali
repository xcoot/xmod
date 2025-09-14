.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

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
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.android.server.biometrics.fingerprint.BIOMETRICS_NOTIFICATION_PF_GUIDE"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_3

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
    const-string/jumbo v0, "protective_film_notification_action"

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
    const-string v1, "SemFpProtectiveFilmGuide"

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
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->cancelNotification(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const-string/jumbo v0, "settings"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->cancelNotification(I)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    const-string/jumbo v0, "sem_statusbar"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Landroid/app/SemStatusBarManager;

    .line 107
    .line 108
    :try_start_0
    invoke-virtual {p2}, Landroid/app/SemStatusBarManager;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception p2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string/jumbo v2, "closeNotificationPanel: "

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p2, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    const-string p2, "android.settings.FINGERPRINT_SETTINGS"

    .line 125
    .line 126
    const-string/jumbo v0, "com.android.settings"

    .line 127
    .line 128
    .line 129
    invoke-static {p2, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    :try_start_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catch_1
    move-exception p0

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string/jumbo p2, "handleGoToSettingAction: "

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_1
    return-void
.end method
