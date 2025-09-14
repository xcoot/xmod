.class public final Lcom/android/server/om/IdmapManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field public final mIdmapManager:Lcom/android/server/om/IdmapManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/IdmapManager;Lcom/android/server/om/IdmapDaemon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createIdmap(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfoExt;I)I
    .locals 12

    .line 1
    const-string v0, "Couldnt verify idmap. Will create it - "

    .line 2
    .line 3
    const-string v1, "OverlayManagerExt"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_5

    .line 13
    .line 14
    iget-object v3, p2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 15
    .line 16
    if-eqz v3, :cond_5

    .line 17
    .line 18
    iget-object v3, v3, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 33
    .line 34
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string/jumbo v5, "resource-map"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    new-instance v4, Ljava/io/File;

    .line 58
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v6, "/data/overlays/remaps/"

    .line 62
    .line 63
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v6, "/"

    .line 67
    .line 68
    const-string v7, "."

    .line 69
    .line 70
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v6, ".map"

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-static {p1}, Lcom/android/server/om/ResourceMapParser;->parseResourceMap(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 100
    const/4 v11, 0x0

    .line 101
    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 102
    .line 103
    iget-object v5, p2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 104
    .line 105
    iget-object v7, v5, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v8, v5, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    .line 108
    .line 109
    move-object v5, v3

    .line 110
    move v6, p1

    .line 111
    move v9, p3

    .line 112
    move v10, v11

    .line 113
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Z

    .line 114
    .line 115
    .line 116
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    const/4 p0, 0x1

    .line 120
    return p0

    .line 121
    :catch_0
    move-exception v4

    .line 122
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_3
    iget-object v4, p0, Lcom/android/server/om/IdmapManagerWrapper;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 142
    .line 143
    iget-object p0, p2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 144
    .line 145
    iget-object v7, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v8, p0, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    .line 148
    .line 149
    move-object v5, v3

    .line 150
    move v6, p1

    .line 151
    move v9, p3

    .line 152
    move v10, v11

    .line 153
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    if-eqz p0, :cond_4

    .line 158
    .line 159
    const/4 v2, 0x3

    .line 160
    :cond_4
    return v2

    .line 161
    :catch_1
    move-exception p0

    .line 162
    const-string p1, "failed to generate idmap for "

    .line 163
    .line 164
    const-string p3, " and "

    .line 165
    .line 166
    invoke-static {p1, v3, p3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p2, p2, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    .line 171
    .line 172
    iget-object p2, p2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .line 183
    .line 184
    const/16 p0, 0x80

    .line 185
    .line 186
    return p0

    .line 187
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string p3, "Unable to create idmap for "

    .line 190
    .line 191
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p1, " ov="

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    return v2
.end method
