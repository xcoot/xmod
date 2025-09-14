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

    .line 4
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    .line 6
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 10
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 7
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$3:I

    .line 9
    const-string v3, "FingerprintService"

    .line 11
    const-string/jumbo v4, "fingerIndex"

    .line 14
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    const-string/jumbo v4, "verificationType"

    .line 20
    const-string v5, "Device Credential"

    .line 22
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const/high16 v4, 0x1000000

    .line 27
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    const/high16 v4, 0x10000000

    .line 32
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    .line 37
    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 40
    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 43
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-string v2, "["

    .line 47
    if-eqz p0, :cond_0

    .line 49
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, "] is sent with fingerId "

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 81
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "] is sent"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    goto :goto_1

    .line 104
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, "semSendTemplateChangedBroadCast: failed, "

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {p0, v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 115
    :goto_1
    return-void
.end method
