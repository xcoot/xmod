.class public final Lcom/android/server/pm/permission/Permission;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDefinitionChanged:Z

.field public mGids:[I

.field public mGidsPerUser:Z

.field public mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public mReconciled:Z

.field public final mType:I

.field public mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 3
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 4
    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 p2, 0x2

    .line 6
    iput p2, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 7
    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 10
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 11
    iput p2, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return-void
.end method

.method public static createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/pkg/PackageState;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;
    .locals 8

    .line 1
    const-string v0, "Permission"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 8
    .line 9
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget v3, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 26
    .line 27
    if-ne v3, v1, :cond_0

    .line 28
    .line 29
    iget-boolean v3, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 36
    .line 37
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    iput p4, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-nez p4, :cond_1

    .line 45
    .line 46
    new-instance p4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "New decl "

    .line 49
    .line 50
    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, " of permission  "

    .line 57
    .line 58
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, " is system; overriding "

    .line 67
    .line 68
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 72
    .line 73
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p4, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    move p4, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    move p4, v2

    .line 82
    :goto_1
    if-eqz p0, :cond_2

    .line 83
    .line 84
    iget v3, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 85
    .line 86
    if-eq v3, v1, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    move v3, v1

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    move v3, v2

    .line 97
    :goto_2
    if-eqz p0, :cond_3

    .line 98
    .line 99
    iget v4, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    .line 100
    .line 101
    if-eq v4, v1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_3

    .line 108
    .line 109
    move v4, v1

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    move v4, v2

    .line 112
    :goto_3
    if-nez p0, :cond_4

    .line 113
    .line 114
    new-instance p0, Lcom/android/server/pm/permission/Permission;

    .line 115
    .line 116
    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/pm/permission/Permission;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 124
    .line 125
    if-nez v2, :cond_9

    .line 126
    .line 127
    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 128
    .line 129
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 130
    .line 131
    const-string v5, " from package "

    .line 132
    .line 133
    const-string v6, "Permission "

    .line 134
    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, " ignored: original from "

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 170
    .line 171
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_6
    :goto_4
    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v2, p3}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/pm/permission/Permission;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    if-eqz p3, :cond_8

    .line 184
    .line 185
    iget-object v2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 186
    .line 187
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_7

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string p1, " ignored: base tree "

    .line 217
    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object p1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 222
    .line 223
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string p1, " is from package "

    .line 229
    .line 230
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object p1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 234
    .line 235
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_8
    :goto_5
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 242
    .line 243
    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 244
    .line 245
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 250
    .line 251
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_a

    .line 256
    .line 257
    if-nez p4, :cond_b

    .line 258
    .line 259
    if-nez v3, :cond_b

    .line 260
    .line 261
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-eqz p1, :cond_c

    .line 266
    .line 267
    if-nez p4, :cond_b

    .line 268
    .line 269
    if-eqz v4, :cond_c

    .line 270
    .line 271
    :cond_b
    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    .line 272
    .line 273
    :cond_c
    return-object p0
.end method

.method public static findPermissionTree(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/pm/permission/Permission;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/pm/permission/Permission;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-le v2, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/16 v2, 0x2e

    .line 46
    .line 47
    if-ne v1, v2, :cond_0

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method


# virtual methods
.method public final addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, p1, :cond_6

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 9
    .line 10
    if-eqz v1, :cond_6

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 13
    .line 14
    iget v3, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 15
    .line 16
    if-ne v1, v3, :cond_6

    .line 17
    .line 18
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 21
    .line 22
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 31
    .line 32
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    .line 33
    .line 34
    iget v3, p2, Landroid/content/pm/PermissionInfo;->icon:I

    .line 35
    .line 36
    if-eq v1, v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget v1, v0, Landroid/content/pm/PermissionInfo;->logo:I

    .line 40
    .line 41
    iget v3, p2, Landroid/content/pm/PermissionInfo;->logo:I

    .line 42
    .line 43
    if-eq v1, v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 47
    .line 48
    iget v3, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 49
    .line 50
    if-eq v1, v3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 65
    .line 66
    iget-object v3, p2, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 67
    .line 68
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v1, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/4 v0, 0x0

    .line 87
    goto :goto_1

    .line 88
    :cond_6
    :goto_0
    move v0, v2

    .line 89
    :goto_1
    new-instance v1, Landroid/content/pm/PermissionInfo;

    .line 90
    .line 91
    invoke-direct {v1, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 95
    .line 96
    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 97
    .line 98
    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 99
    .line 100
    iput-object p2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 101
    .line 102
    iput p1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 103
    .line 104
    iput-boolean v2, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 105
    .line 106
    iget p1, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 107
    .line 108
    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 109
    .line 110
    return v0
.end method

.method public final computeGids(I)[I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    if-ge v1, v3, :cond_0

    .line 15
    .line 16
    aget v2, v2, v1

    .line 17
    .line 18
    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 29
    .line 30
    array-length p1, p0

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, [I

    .line 38
    .line 39
    :cond_2
    return-object p0
.end method

.method public final generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/pm/PermissionInfo;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x80

    .line 13
    .line 14
    and-int/2addr p1, v1

    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Landroid/content/pm/PermissionInfo;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 27
    .line 28
    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget p1, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 41
    .line 42
    const/high16 v1, 0x40000000    # 2.0f

    .line 43
    .line 44
    or-int/2addr p1, v1

    .line 45
    iput p1, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 46
    .line 47
    const/16 p1, 0x1a

    .line 48
    .line 49
    if-lt p2, p1, :cond_2

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 52
    .line 53
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 54
    .line 55
    iput p0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 59
    .line 60
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 61
    .line 62
    and-int/lit8 p1, p0, 0xf

    .line 63
    .line 64
    const/4 p2, 0x2

    .line 65
    if-ne p1, p2, :cond_3

    .line 66
    .line 67
    iput p0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iput p1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 71
    .line 72
    :goto_1
    return-object v0
.end method

.method public final isDevelopment()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 8
    .line 9
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 10
    .line 11
    and-int/lit8 p0, p0, 0x20

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final isInstant()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 4
    .line 5
    and-int/lit16 p0, p0, 0x1000

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isInternal()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0xf

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final isPrivileged()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x10

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isRole()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 4
    .line 5
    const/high16 v0, 0x4000000

    .line 6
    .line 7
    and-int/2addr p0, v0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final isRuntime()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0xf

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final isSignature()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0xf

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method
