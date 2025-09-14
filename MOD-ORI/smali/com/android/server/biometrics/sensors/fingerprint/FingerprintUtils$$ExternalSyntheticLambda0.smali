.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(IILandroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    const-string v3, "FingerprintService"

    .line 10
    .line 11
    const-string/jumbo v4, "fingerIndex"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v4, "verificationType"

    .line 18
    .line 19
    .line 20
    const-string v5, "Device Credential"

    .line 21
    .line 22
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/high16 v4, 0x1000000

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const/high16 v4, 0x10000000

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    .line 36
    .line 37
    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 41
    .line 42
    .line 43
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    const-string v2, "["

    .line 46
    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "] is sent with fingerId "

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, "] is sent"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string/jumbo v1, "semSendTemplateChangedBroadCast: failed, "

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_1
    return-void
.end method
