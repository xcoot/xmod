.class public final Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALLOWED_KEYS:Ljava/util/Set;

.field public static final KEY_VALUE_MAPPERS:Ljava/util/Map;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

.field public final mSourcePackage:Ljava/lang/String;

.field public final mVerifier:Lcom/android/server/signedconfig/SignatureVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    const-string v1, "hidden_api_policy"

    .line 4
    .line 5
    const-string v2, "hidden_api_blacklist_exemptions"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->ALLOWED_KEYS:Ljava/util/Set;

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    const-string v6, "JUST_WARN"

    .line 45
    .line 46
    const-string v8, "ENABLED"

    .line 47
    .line 48
    const-string v2, "DEFAULT"

    .line 49
    .line 50
    const-string v4, "DISABLED"

    .line 51
    .line 52
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->makeMap([Ljava/lang/Object;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->makeMap([Ljava/lang/Object;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->KEY_VALUE_MAPPERS:Ljava/util/Map;

    .line 69
    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/signedconfig/SignedConfigEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/signedconfig/SignatureVerifier;

    .line 11
    .line 12
    invoke-direct {p1, p3}, Lcom/android/server/signedconfig/SignatureVerifier;-><init>(Lcom/android/server/signedconfig/SignedConfigEvent;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mVerifier:Lcom/android/server/signedconfig/SignatureVerifier;

    .line 16
    .line 17
    return-void
.end method

.method public static varargs makeMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    rem-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    array-length v0, p0

    .line 7
    div-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    .line 17
    mul-int/lit8 v3, v2, 0x2

    .line 18
    .line 19
    aget-object v4, p0, v3

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    aget-object v3, p0, v3

    .line 24
    .line 25
    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method


# virtual methods
.method public final applyConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 2
    .line 3
    const-string v1, "SignedConfig"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mVerifier:Lcom/android/server/signedconfig/SignatureVerifier;

    .line 7
    .line 8
    invoke-virtual {v3, p1, p2}, Lcom/android/server/signedconfig/SignatureVerifier;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p2

    .line 14
    const-string v3, "Failed to verify signature"

    .line 15
    .line 16
    invoke-static {v1, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x4

    .line 20
    iput p2, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 21
    .line 22
    move p2, v2

    .line 23
    :goto_0
    iget-object v3, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mSourcePackage:Ljava/lang/String;

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p1, "Signature check on global settings in package "

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " failed; ignoring"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/android/server/signedconfig/SignedConfig;->parse(Ljava/lang/String;)Lcom/android/server/signedconfig/SignedConfig;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_1
    .catch Lcom/android/server/signedconfig/InvalidConfigException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    iget p2, p1, Lcom/android/server/signedconfig/SignedConfig;->version:I

    .line 55
    .line 56
    :try_start_2
    iput p2, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I
    :try_end_2
    .catch Lcom/android/server/signedconfig/InvalidConfigException; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string/jumbo v5, "signed_config_version"

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-lt v2, p2, :cond_1

    .line 72
    .line 73
    const-string p0, "Global settings from package "

    .line 74
    .line 75
    const-string p1, " is older than existing: "

    .line 76
    .line 77
    const-string v4, "<="

    .line 78
    .line 79
    invoke-static {p2, p0, v3, p1, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0, v2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x6

    .line 87
    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    const-string v4, "Got new global settings from package "

    .line 91
    .line 92
    const-string v6, ": version "

    .line 93
    .line 94
    const-string v7, " replacing existing version "

    .line 95
    .line 96
    invoke-static {p2, v4, v3, v6, v7}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3, v2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/server/signedconfig/SignedConfig;->perSdkConfig:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;

    .line 122
    .line 123
    iget v4, v3, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->minSdk:I

    .line 124
    .line 125
    if-gt v4, v2, :cond_2

    .line 126
    .line 127
    iget v4, v3, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->maxSdk:I

    .line 128
    .line 129
    if-gt v2, v4, :cond_2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    const/4 v3, 0x0

    .line 133
    :goto_1
    if-nez v3, :cond_4

    .line 134
    .line 135
    const-string p0, "Settings is not applicable to current SDK version; ignoring"

    .line 136
    .line 137
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    const/16 p0, 0x8

    .line 141
    .line 142
    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    const-string p1, "Updating global settings to version "

    .line 146
    .line 147
    invoke-static {p2, p1, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, v3, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->values:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_5

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    .line 172
    iget-object v2, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Ljava/lang/String;

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    iget-object p0, p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {p0, v5, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    .line 202
    .line 203
    const/4 p0, 0x1

    .line 204
    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 205
    .line 206
    return-void

    .line 207
    :catch_1
    move-exception p0

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string p2, "Failed to parse global settings from package "

    .line 211
    .line 212
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .line 224
    .line 225
    const/4 p0, 0x5

    .line 226
    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 227
    .line 228
    return-void
.end method
