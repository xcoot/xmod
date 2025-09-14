.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;ZJIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$1:Z

    .line 8
    iput-wide p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$2:J

    .line 10
    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$3:I

    .line 12
    iput p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$4:I

    .line 14
    iput-boolean p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$5:Z

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$1:Z

    .line 5
    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$2:J

    .line 7
    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$3:I

    .line 9
    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$4:I

    .line 11
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$5:Z

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x3

    .line 15
    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 20
    move-result-object v1

    .line 21
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 23
    const-string v9, "FPIS"

    .line 25
    invoke-virtual {v1, v7, v9, v8}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v8, "FPTS"

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v6, v8, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "FPSF"

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "FPSQ"

    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz p0, :cond_0

    .line 57
    const-string v2, "FPOS"

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string v2, "FPFS"

    .line 62
    :goto_0
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v7, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz p0, :cond_2

    .line 69
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 77
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 85
    :cond_1
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 87
    const-string v0, "FFOS"

    .line 89
    invoke-virtual {v1, v7, v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    goto/16 :goto_2

    .line 94
    :cond_2
    if-nez p0, :cond_9

    .line 96
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 101
    move-result p0

    .line 102
    if-nez p0, :cond_3

    .line 104
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_9

    .line 112
    :cond_3
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 114
    const-string v0, "FFFS"

    .line 116
    invoke-virtual {v1, v7, v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 123
    move-result-object v1

    .line 124
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 126
    const-string v5, "FPIF"

    .line 128
    invoke-virtual {v1, v7, v5, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    const-string v3, "FPTF"

    .line 137
    invoke-virtual {v1, v6, v3, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz p0, :cond_5

    .line 142
    const-string v2, "FPOF"

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    const-string v2, "FPFF"

    .line 147
    :goto_1
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 149
    invoke-virtual {v1, v7, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz p0, :cond_7

    .line 154
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 156
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_6

    .line 162
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_7

    .line 170
    :cond_6
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 172
    const-string v0, "FFOF"

    .line 174
    invoke-virtual {v1, v7, v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    goto :goto_2

    .line 178
    :cond_7
    if-nez p0, :cond_9

    .line 180
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 182
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 185
    move-result p0

    .line 186
    if-nez p0, :cond_8

    .line 188
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 190
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_9

    .line 196
    :cond_8
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 198
    const-string v0, "FFFF"

    .line 200
    invoke-virtual {v1, v7, v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_9
    :goto_2
    return-void
.end method
