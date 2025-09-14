.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

.field public final mIntResultRequestProvider:Ljava/util/function/BiFunction;

.field public final mSdkVersions:Landroid/util/SparseArray;

.field public final mSecurityLevels:Landroid/util/SparseIntArray;

.field public final mSensorInfos:Landroid/util/SparseArray;

.field public final mStringResultRequestProvider:Ljava/util/function/BiFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Lcom/android/server/biometrics/SemBioAnalyticsManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSensorInfos:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSdkVersions:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance v0, Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSecurityLevels:Landroid/util/SparseIntArray;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mStringResultRequestProvider:Ljava/util/function/BiFunction;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mIntResultRequestProvider:Ljava/util/function/BiFunction;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getDaemonSdkVersion(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSdkVersions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mStringResultRequestProvider:Ljava/util/function/BiFunction;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSdkVersions:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final updateCacheDataOfHAL(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->getDaemonSdkVersion(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSensorInfos:Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mStringResultRequestProvider:Ljava/util/function/BiFunction;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSensorInfos:Landroid/util/SparseArray;

    .line 39
    .line 40
    const-string v2, "\n"

    .line 41
    .line 42
    const-string v3, ", "

    .line 43
    .line 44
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mIntResultRequestProvider:Ljava/util/function/BiFunction;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/16 v2, 0x1e

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-gtz v0, :cond_1

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSecurityLevels:Landroid/util/SparseIntArray;

    .line 80
    .line 81
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSensorInfos:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    :try_start_0
    const-string v1, "UID : "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-ltz v1, :cond_2

    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x6

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "\\n"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/4 v1, 0x0

    .line 115
    aget-object v0, v0, v1

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const-string v0, ""

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    const/4 v0, 0x0

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProviderEx;->mSdkVersions:Landroid/util/SparseArray;

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    const/4 v2, 0x2

    .line 146
    if-nez p1, :cond_4

    .line 147
    .line 148
    const-string p1, "FPDA"

    .line 149
    .line 150
    invoke-virtual {v1, v2, p1, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-nez p0, :cond_5

    .line 158
    .line 159
    const-string p0, "FPDS"

    .line 160
    .line 161
    invoke-virtual {v1, v2, p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string/jumbo v0, "dispatchHalInfoToAnalytics: "

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v0, "FingerprintService"

    .line 174
    .line 175
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    :goto_2
    return-void
.end method
