.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/Notifier;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/Notifier;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$2:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "charging_vibration_enabled"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v5, v0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    sget-object v8, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 31
    .line 32
    sget-object v10, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 33
    .line 34
    const/16 v6, 0x3e8

    .line 35
    .line 36
    const-string v9, "Charging started"

    .line 37
    .line 38
    invoke-virtual/range {v5 .. v10}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    const-string/jumbo p0, "wireless_charging_started_sound"

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string p0, "charging_started_sound"

    .line 54
    .line 55
    :goto_0
    invoke-static {v1, p0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, "file://"

    .line 62
    .line 63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v1, p0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-eqz p0, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p0, v0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
