.class public final Lcom/android/server/compat/OverrideValidatorImpl;
.super Lcom/android/internal/compat/IOverrideValidator$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public final mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field public final mContext:Landroid/content/Context;

.field public mForceNonDebuggableFinalBuild:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/compat/IOverrideValidator$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 6
    iput-object p2, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    .line 13
    return-void
.end method


# virtual methods
.method public final getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(Ljava/lang/String;JZ)Lcom/android/internal/compat/OverrideAllowedState;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final getOverrideAllowedStateInternal(Ljava/lang/String;JZ)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 3
    iget-object v0, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    .line 26
    const/4 p1, 0x5

    .line 27
    invoke-direct {p0, p1, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 30
    return-object p0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 33
    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isDebuggableBuild()Z

    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v0, :cond_1

    .line 41
    iget-boolean v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    .line 43
    if-nez v0, :cond_1

    .line 45
    move v0, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v0, v3

    .line 48
    :goto_0
    iget-object v4, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 50
    invoke-virtual {v4}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_3

    .line 56
    iget-boolean v4, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    .line 58
    if-eqz v4, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v4, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_1
    move v4, v2

    .line 64
    :goto_2
    iget-object v5, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 66
    iget-object v5, v5, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lcom/android/server/compat/CompatChange;

    .line 78
    if-eqz v5, :cond_4

    .line 80
    invoke-virtual {v5}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 83
    move-result v6

    .line 84
    if-eq v6, v1, :cond_4

    .line 86
    invoke-virtual {v5}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 89
    move-result v5

    .line 90
    sub-int/2addr v5, v2

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    move v5, v1

    .line 93
    :goto_3
    iget-object v6, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 95
    iget-object v6, v6, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Lcom/android/server/compat/CompatChange;

    .line 107
    if-eqz v6, :cond_5

    .line 109
    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_5

    .line 115
    move v6, v2

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    move v6, v3

    .line 118
    :goto_4
    if-eqz v0, :cond_6

    .line 120
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    .line 122
    invoke-direct {p0, v3, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 125
    return-object p0

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 128
    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    .line 131
    move-result v0

    .line 132
    if-lt v5, v0, :cond_7

    .line 134
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    .line 136
    const/4 p1, 0x6

    .line 137
    invoke-direct {p0, p1, v1, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 140
    return-object p0

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_f

    .line 149
    const/high16 v7, 0x400000

    .line 151
    :try_start_0
    invoke-virtual {v0, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 154
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 157
    iget-object v0, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 159
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-result-object p2

    .line 167
    check-cast p2, Lcom/android/server/compat/CompatChange;

    .line 169
    if-eqz p2, :cond_9

    .line 171
    invoke-virtual {p2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    .line 174
    move-result p2

    .line 175
    if-eqz p2, :cond_9

    .line 177
    if-nez p4, :cond_8

    .line 179
    iget-object p0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    .line 181
    const-string p2, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    .line 183
    invoke-virtual {p0, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 186
    move-result p0

    .line 187
    if-nez p0, :cond_9

    .line 189
    :cond_8
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    .line 191
    invoke-direct {p0, v3, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 194
    return-object p0

    .line 195
    :cond_9
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 197
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 199
    const/4 p2, 0x2

    .line 200
    and-int/2addr p1, p2

    .line 201
    if-nez p1, :cond_a

    .line 203
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    .line 205
    invoke-direct {p0, v2, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 208
    return-object p0

    .line 209
    :cond_a
    if-nez v4, :cond_b

    .line 211
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    .line 213
    invoke-direct {p1, v3, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 216
    return-object p1

    .line 217
    :cond_b
    if-ne v5, v1, :cond_c

    .line 219
    if-nez v6, :cond_c

    .line 221
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    .line 223
    invoke-direct {p1, p2, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 226
    return-object p1

    .line 227
    :cond_c
    if-nez v6, :cond_e

    .line 229
    if-gt p0, v5, :cond_d

    .line 231
    goto :goto_5

    .line 232
    :cond_d
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    .line 234
    const/4 p2, 0x3

    .line 235
    invoke-direct {p1, p2, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 238
    return-object p1

    .line 239
    :cond_e
    :goto_5
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    .line 241
    invoke-direct {p1, v3, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 244
    return-object p1

    .line 245
    :catch_0
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    .line 247
    const/4 p1, 0x4

    .line 248
    invoke-direct {p0, p1, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    .line 251
    return-object p0

    .line 252
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 254
    const-string p1, "No PackageManager!"

    .line 256
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 259
    throw p0
.end method
