.class public final Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 9
    .line 10
    const-string p0, "Failed to base64 decode global settings config from "

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    :goto_0
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const-wide/16 v3, 0x80

    .line 37
    .line 38
    const/16 v1, 0x3e8

    .line 39
    .line 40
    move v2, v6

    .line 41
    move-object v5, p2

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "SignedConfig"

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p1, "Got null PackageInfo for "

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, "; user "

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    const-string v2, "android.settings.global"

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    const-string v3, "android.settings.global.signature"

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_4

    .line 99
    .line 100
    new-instance v4, Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    iput v5, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 107
    .line 108
    iput v5, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I

    .line 109
    .line 110
    iput v5, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    .line 111
    .line 112
    const/4 v5, 0x1

    .line 113
    :try_start_0
    iput v5, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    .line 114
    .line 115
    iput-object p2, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    new-instance v3, Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 136
    .line 137
    invoke-direct {v3, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    :try_start_2
    new-instance p0, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;

    .line 141
    .line 142
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/signedconfig/SignedConfigEvent;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v3, v0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->applyConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .line 147
    .line 148
    iget v6, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    .line 149
    .line 150
    iget v7, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 151
    .line 152
    :goto_1
    iget v8, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I

    .line 153
    .line 154
    iget-object v9, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    .line 155
    .line 156
    iget v10, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    .line 157
    .line 158
    const/16 v5, 0x7b

    .line 159
    .line 160
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catchall_0
    move-exception p0

    .line 165
    goto :goto_2

    .line 166
    :catch_0
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    const/4 v7, 0x2

    .line 174
    iput v7, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    .line 176
    iget v6, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :goto_2
    iget v6, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    .line 180
    .line 181
    iget v7, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 182
    .line 183
    iget v8, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I

    .line 184
    .line 185
    iget-object v9, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    .line 186
    .line 187
    iget v10, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    .line 188
    .line 189
    const/16 v5, 0x7b

    .line 190
    .line 191
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    throw p0

    .line 195
    :cond_4
    :goto_3
    return-void
.end method
