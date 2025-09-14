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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    iput p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$4:I

    .line 13
    .line 14
    iput-boolean p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$5:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$1:Z

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$2:J

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$3:I

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$4:I

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;->f$5:Z

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x3

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 22
    .line 23
    const-string v9, "FPIS"

    .line 24
    .line 25
    invoke-virtual {v1, v7, v9, v8}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v8, "FPTS"

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v6, v8, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "FPSF"

    .line 38
    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "FPSQ"

    .line 47
    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    const-string v2, "FPOS"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string v2, "FPFS"

    .line 61
    .line 62
    :goto_0
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v7, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    :cond_1
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 86
    .line 87
    const-string v0, "FFOS"

    .line 88
    .line 89
    invoke-virtual {v1, v7, v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_2
    if-nez p0, :cond_9

    .line 95
    .line 96
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-nez p0, :cond_3

    .line 103
    .line 104
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_9

    .line 111
    .line 112
    :cond_3
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 113
    .line 114
    const-string v0, "FFFS"

    .line 115
    .line 116
    invoke-virtual {v1, v7, v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 125
    .line 126
    const-string v5, "FPIF"

    .line 127
    .line 128
    invoke-virtual {v1, v7, v5, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const-string v3, "FPTF"

    .line 136
    .line 137
    invoke-virtual {v1, v6, v3, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    if-eqz p0, :cond_5

    .line 141
    .line 142
    const-string v2, "FPOF"

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    const-string v2, "FPFF"

    .line 146
    .line 147
    :goto_1
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v1, v7, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    if-eqz p0, :cond_7

    .line 153
    .line 154
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_6

    .line 161
    .line 162
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_7

    .line 169
    .line 170
    :cond_6
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 171
    .line 172
    const-string v0, "FFOF"

    .line 173
    .line 174
    invoke-virtual {v1, v7, v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    if-nez p0, :cond_9

    .line 179
    .line 180
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-nez p0, :cond_8

    .line 187
    .line 188
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isFolderFolded(Landroid/content/Context;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_9

    .line 195
    .line 196
    :cond_8
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 197
    .line 198
    const-string v0, "FFFF"

    .line 199
    .line 200
    invoke-virtual {v1, v7, v0, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_9
    :goto_2
    return-void
.end method
