.class public final Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCoverAttached:Z

.field public mPackage:B

.field public mUriData:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method public static isDataChanged(Landroid/content/Context;[B)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p1, ""

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "accessory_cover_uri"

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "isDataChanged:uriDataString="

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ",uriSet="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "SAccessoryManager_PaletteCover"

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 p0, 0x0

    .line 62
    :goto_1
    return p0
.end method


# virtual methods
.method public final disableSetting()V
    .locals 2

    .line 1
    const-string v0, "SAccessoryManager_PaletteCover"

    .line 2
    .line 3
    const-string v1, "disableSetting"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->onCoverStateChanged()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onCoverStateChanged()V
    .locals 9

    .line 1
    const-string v0, "SAccessoryManager_PaletteCover"

    .line 2
    .line 3
    const-string v1, "Attach Target package type: "

    .line 4
    .line 5
    const-string v2, "On cover state change : data = "

    .line 6
    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    :try_start_1
    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v3, v4

    .line 19
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v2, Landroid/content/Intent;

    .line 35
    .line 36
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v5, "accessoryType"

    .line 40
    .line 41
    const/16 v6, 0x12

    .line 42
    .line 43
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    const-string v7, "URI"

    .line 50
    .line 51
    const/4 v8, 0x1

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    :try_start_2
    const-string v5, "com.samsung.android.intent.action.ACCESSORY_COVER_ATTACH"

    .line 55
    .line 56
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    .line 60
    .line 61
    aget-byte v5, v5, v8

    .line 62
    .line 63
    iput-byte v5, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-byte v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 71
    .line 72
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    .line 83
    .line 84
    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    iput-boolean v8, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const-string v1, "Palette cover detached"

    .line 91
    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const-string v1, "com.samsung.android.intent.action.ACCESSORY_COVER_DETACH"

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    iput-boolean v6, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 104
    .line 105
    :goto_1
    iget-byte v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 106
    .line 107
    and-int/2addr v1, v8

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    const-string v1, "com.samsung.android.app.dressroom"

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    iget-byte v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 121
    .line 122
    and-int/lit8 v1, v1, 0x2

    .line 123
    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    const-string v1, "com.samsung.android.app.aodservice"

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    .line 137
    .line 138
    if-nez v1, :cond_4

    .line 139
    .line 140
    iput-byte v6, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 141
    .line 142
    :cond_4
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-string v2, "accessory_cover_uri"

    .line 149
    .line 150
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "cover_type_id"

    .line 160
    .line 161
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 162
    .line 163
    if-eqz p0, :cond_5

    .line 164
    .line 165
    const-string v4, "18"

    .line 166
    .line 167
    :cond_5
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :catch_0
    const-string p0, "error during cover state change"

    .line 172
    .line 173
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :goto_2
    return-void
.end method

.method public final setCoverVerified(ZLcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setCoverVerified:isVerified="

    .line 2
    .line 3
    .line 4
    const-string v1, "SAccessoryManager_PaletteCover"

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->onCoverStateChanged()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
