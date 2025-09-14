.class public final Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCall:Landroid/telecom/Call;

.field public mCallerDisplayName:Ljava/lang/String;

.field public mCallerDisplayNamePresentation:I

.field public final mCallingAppIcon:[B

.field public final mCallingAppName:Ljava/lang/String;

.field public final mCallingAppPackageName:Ljava/lang/String;

.field public mContactDisplayName:Ljava/lang/String;

.field public final mControls:Ljava/util/Set;

.field public mDirection:I

.field public mHandle:Landroid/net/Uri;

.field public mHandlePresentation:I

.field public final mId:Ljava/lang/String;

.field public final mIsCallPlacedByContextSync:Z

.field mIsEnterprise:Z

.field public final mIsMuted:Z

.field public final mSerializedPhoneAccountHandle:Ljava/lang/String;

.field public mStatus:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/CallAudioState;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 10
    .line 11
    new-instance v2, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCall:Landroid/telecom/Call;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string/jumbo v3, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    .line 25
    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "::"

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-static {v4, v5, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_1
    iput-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p2, v3, v4}, Landroid/telecom/Call;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v2, -0x1

    .line 76
    :goto_1
    iput v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mUserId:I

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    new-instance v4, Landroid/content/ComponentName;

    .line 82
    .line 83
    const-class v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    .line 84
    .line 85
    invoke-direct {v4, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    move v4, v3

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v4, v1

    .line 101
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsCallPlacedByContextSync:Z

    .line 102
    .line 103
    const-string v4, ""

    .line 104
    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move-object v6, v4

    .line 121
    :goto_3
    iput-object v6, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppPackageName:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz p2, :cond_5

    .line 124
    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    :cond_5
    iput-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mSerializedPhoneAccountHandle:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallProperties()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    const/16 v4, 0x20

    .line 162
    .line 163
    and-int/2addr p2, v4

    .line 164
    if-ne p2, v4, :cond_6

    .line 165
    .line 166
    move p2, v3

    .line 167
    goto :goto_4

    .line 168
    :cond_6
    move p2, v1

    .line 169
    :goto_4
    iput-boolean p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsEnterprise:Z

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    const-wide/16 v4, 0x0

    .line 176
    .line 177
    :try_start_0
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p1, v6, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    iput-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppName:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppIcon:[B
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :catch_0
    move-exception p1

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v2, "Could not get application info for package "

    .line 210
    .line 211
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppPackageName:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    const-string v2, "CrossDeviceCall"

    .line 224
    .line 225
    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .line 227
    .line 228
    :goto_5
    if-eqz p3, :cond_7

    .line 229
    .line 230
    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->isMuted()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_7

    .line 235
    .line 236
    move v1, v3

    .line 237
    :cond_7
    iput-boolean v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsMuted:Z

    .line 238
    .line 239
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->updateCallDetails(Landroid/telecom/Call$Details;)V

    .line 240
    .line 241
    .line 242
    return-void
.end method


# virtual methods
.method public final getNonContactString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayNamePresentation:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayName:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandle:Landroid/net/Uri;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandlePresentation:I

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandle:Landroid/net/Uri;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public updateCallDetails(Landroid/telecom/Call$Details;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallerDisplayNamePresentation:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getContactDisplayName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mContactDisplayName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandle:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mHandlePresentation:I

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallDirection()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iput v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-ne v0, v3, :cond_1

    .line 44
    .line 45
    iput v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    .line 49
    .line 50
    :goto_0
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getState()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v4, 0x5

    .line 55
    const/4 v5, 0x7

    .line 56
    const/16 v6, 0x8

    .line 57
    .line 58
    const/4 v7, 0x6

    .line 59
    const/4 v8, 0x4

    .line 60
    const/4 v9, 0x3

    .line 61
    if-eq v0, v3, :cond_8

    .line 62
    .line 63
    if-eq v0, v2, :cond_7

    .line 64
    .line 65
    if-eq v0, v9, :cond_6

    .line 66
    .line 67
    if-eq v0, v8, :cond_5

    .line 68
    .line 69
    if-eq v0, v5, :cond_4

    .line 70
    .line 71
    const/16 v10, 0xc

    .line 72
    .line 73
    if-eq v0, v10, :cond_3

    .line 74
    .line 75
    const/16 v10, 0xd

    .line 76
    .line 77
    if-eq v0, v10, :cond_2

    .line 78
    .line 79
    const-string v10, "Couldn\'t resolve state to status: "

    .line 80
    .line 81
    const-string v11, "CrossDeviceCall"

    .line 82
    .line 83
    invoke-static {v0, v10, v11}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move v1, v7

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move v1, v4

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v1, v5

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    move v1, v2

    .line 94
    goto :goto_1

    .line 95
    :cond_6
    move v1, v9

    .line 96
    goto :goto_1

    .line 97
    :cond_7
    move v1, v3

    .line 98
    goto :goto_1

    .line 99
    :cond_8
    move v1, v6

    .line 100
    :goto_1
    iput v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 103
    .line 104
    check-cast v0, Ljava/util/HashSet;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 107
    .line 108
    .line 109
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 110
    .line 111
    if-ne v0, v6, :cond_9

    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 114
    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v0, Ljava/util/HashSet;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_9
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 125
    .line 126
    if-eq v0, v3, :cond_a

    .line 127
    .line 128
    if-ne v0, v8, :cond_b

    .line 129
    .line 130
    :cond_a
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 131
    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v0, Ljava/util/HashSet;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v0, Ljava/util/HashSet;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 153
    .line 154
    if-ne v0, v3, :cond_b

    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 157
    .line 158
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v0, Ljava/util/HashSet;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_b
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 168
    .line 169
    if-eq v0, v2, :cond_c

    .line 170
    .line 171
    if-ne v0, v9, :cond_e

    .line 172
    .line 173
    :cond_c
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 174
    .line 175
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v0, Ljava/util/HashSet;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v3}, Landroid/telecom/Call$Details;->can(I)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_e

    .line 189
    .line 190
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 191
    .line 192
    iget v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 193
    .line 194
    if-ne v1, v9, :cond_d

    .line 195
    .line 196
    move v5, v6

    .line 197
    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v0, Ljava/util/HashSet;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_e
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    .line 207
    .line 208
    if-ne v0, v2, :cond_10

    .line 209
    .line 210
    const/16 v0, 0x40

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/telecom/Call$Details;->can(I)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_10

    .line 217
    .line 218
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    .line 219
    .line 220
    iget-boolean p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsMuted:Z

    .line 221
    .line 222
    if-eqz p0, :cond_f

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_f
    move v4, v8

    .line 226
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    check-cast p1, Ljava/util/HashSet;

    .line 231
    .line 232
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_10
    return-void
.end method
