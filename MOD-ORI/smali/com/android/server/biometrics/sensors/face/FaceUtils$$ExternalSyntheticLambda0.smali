.class public final synthetic Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/content/Intent;

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
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    const-string v3, "FaceService"

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo v4, "faceIndex"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v4, "verificationType"

    .line 20
    .line 21
    .line 22
    const-string v5, "Device Credential"

    .line 23
    .line 24
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    :cond_0
    const/high16 v4, 0x1000000

    .line 28
    .line 29
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const/high16 v4, 0x10000000

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    .line 38
    .line 39
    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 43
    .line 44
    .line 45
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    const-string v2, "["

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "] is sent with faceId "

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, "] is sent"

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string/jumbo v1, "semSendTemplateChangedBroadCast: failed, "

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p0, v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void
.end method
