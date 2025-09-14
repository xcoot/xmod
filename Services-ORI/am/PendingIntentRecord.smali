.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public cancelReason:I

.field public canceled:Z

.field public canceledFromPID:I

.field public canceledFromUID:I

.field public final controller:Lcom/android/server/am/PendingIntentController;

.field public final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field public lastTag:Ljava/lang/String;

.field public lastTagPrefix:Ljava/lang/String;

.field public final mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

.field public final mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

.field public final mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

.field public mAllowlistDuration:Landroid/util/ArrayMap;

.field public mCancelCallbacks:Landroid/os/RemoteCallbackList;

.field public final ref:Ljava/lang/ref/WeakReference;

.field public sent:Z

.field public stringName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    .line 15
    .line 16
    new-instance v0, Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 22
    .line 23
    new-instance v0, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 29
    .line 30
    new-instance v0, Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 40
    .line 41
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 42
    .line 43
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    return-void
.end method

.method public static cancelReasonToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_6

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_5

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_4

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p0, v0, :cond_3

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    if-eq p0, v0, :cond_2

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x40

    .line 25
    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    .line 28
    const-string p0, "UNKNOWN"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p0, "ONE_SHOT_SENT"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p0, "SUPERSEDED"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string p0, "HOSTING_ACTIVITY_DESTROYED"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const-string p0, "OWNER_CANCELED"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    const-string p0, "OWNER_FORCE_STOPPED"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_5
    const-string p0, "OWNER_UNINSTALLED"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_6
    const-string p0, "USER_STOPPED"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_7
    const-string p0, "NULL"

    .line 53
    .line 54
    :goto_0
    return-object p0
.end method

.method public static getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const-wide/32 v0, 0xe94e127

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v0, v1, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    :goto_0
    if-eqz p0, :cond_2

    .line 27
    .line 28
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_3
    :goto_1
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "uid="

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 13
    .line 14
    .line 15
    const-string v0, " packageName="

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, " featureId="

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, " type="

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, " flags=0x"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 59
    .line 60
    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 72
    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "activity="

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const-string v0, " who="

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 107
    .line 108
    iget v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 109
    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string/jumbo v0, "requestCode="

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 126
    .line 127
    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 130
    .line 131
    .line 132
    const-string v0, " requestResolvedType="

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string/jumbo v0, "requestIntent="

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 163
    .line 164
    const/4 v2, 0x1

    .line 165
    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 173
    .line 174
    if-nez v0, :cond_5

    .line 175
    .line 176
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 177
    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string/jumbo v0, "sent="

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 192
    .line 193
    .line 194
    const-string v0, " canceled="

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 202
    .line 203
    .line 204
    const-string v0, " cancelReason="

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    .line 210
    .line 211
    invoke-static {v0}, Lcom/android/server/am/PendingIntentRecord;->cancelReasonToString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    .line 219
    .line 220
    const/4 v2, -0x1

    .line 221
    if-ne v0, v2, :cond_6

    .line 222
    .line 223
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    .line 224
    .line 225
    if-eq v0, v2, :cond_7

    .line 226
    .line 227
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v0, " cancel uid="

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    .line 236
    .line 237
    const-string v2, " cancel pid="

    .line 238
    .line 239
    invoke-static {v0, p1, p2, v2}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 245
    .line 246
    .line 247
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 248
    .line 249
    if-eqz v0, :cond_a

    .line 250
    .line 251
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string v0, "allowlistDuration="

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    move v0, v1

    .line 260
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 261
    .line 262
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-ge v0, v2, :cond_9

    .line 267
    .line 268
    if-eqz v0, :cond_8

    .line 269
    .line 270
    const-string v2, ", "

    .line 271
    .line 272
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 276
    .line 277
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 282
    .line 283
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 284
    .line 285
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string v3, ":"

    .line 301
    .line 302
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    .line 306
    .line 307
    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 308
    .line 309
    .line 310
    const-string v3, "/"

    .line 311
    .line 312
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    .line 316
    .line 317
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 324
    .line 325
    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    add-int/lit8 v0, v0, 0x1

    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 344
    .line 345
    .line 346
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 347
    .line 348
    if-eqz v0, :cond_b

    .line 349
    .line 350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const-string/jumbo v0, "mCancelCallbacks:"

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-ge v1, v0, :cond_b

    .line 366
    .line 367
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    const-string v0, "  #"

    .line 371
    .line 372
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 376
    .line 377
    .line 378
    const-string v0, ": "

    .line 379
    .line 380
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    add-int/lit8 v1, v1, 0x1

    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_b
    return-void
.end method

.method public final finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public getAllowlistDurationLocked(Landroid/os/IBinder;)Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 8
    .line 9
    return-object p0
.end method

.method public getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/app/BackgroundStartPrivileges;->allowBackgroundActivityStarts(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    :goto_0
    return-object p0
.end method

.method public final getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;
    .locals 0

    .line 4
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p2}, Landroid/app/BackgroundStartPrivileges;->allowBackgroundActivityStarts(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    iget p1, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    if-eq p1, p4, :cond_4

    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    if-nez p3, :cond_1

    .line 9
    invoke-static {p4, p0}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_1
    const-string p1, "android.pendingIntent.backgroundActivityAllowed"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    .line 11
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    goto :goto_0

    .line 12
    :cond_2
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {p4, p0}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    :goto_0
    return-object p0

    .line 14
    :cond_4
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16

    .line 1
    const/4 v11, 0x0

    .line 2
    const/4 v12, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v8, 0x0

    .line 5
    const/4 v9, 0x0

    .line 6
    const/4 v10, 0x0

    .line 7
    const/4 v14, -0x1

    .line 8
    const/4 v15, -0x1

    .line 9
    move-object/from16 v0, p0

    .line 10
    .line 11
    move/from16 v2, p1

    .line 12
    .line 13
    move-object/from16 v3, p2

    .line 14
    .line 15
    move-object/from16 v4, p3

    .line 16
    .line 17
    move-object/from16 v5, p4

    .line 18
    .line 19
    move-object/from16 v6, p5

    .line 20
    .line 21
    move-object/from16 v7, p6

    .line 22
    .line 23
    move-object/from16 v13, p7

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;II)I

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;II)I
    .locals 41

    move-object/from16 v15, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v12, p13

    .line 1
    const-string v11, "Received BROADCAST intent 0x"

    const-string v14, "Received ACTIVITY intent 0x"

    const-string v3, "Received ACTIVITY RESULT intent 0x"

    const-string v4, "Received SERVICE intent 0x"

    const-string v5, "Sending of "

    const-string v0, "Resetting option setPendingIntentCreatorBackgroundActivityStartMode("

    const-string v6, "Received intent "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    if-lez p14, :cond_0

    if-lez p15, :cond_0

    move/from16 v7, p14

    move/from16 v13, p15

    goto :goto_0

    :cond_0
    move v13, v7

    move v7, v8

    :goto_0
    const/4 v10, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setDefusable(Z)V

    :cond_1
    if-eqz v12, :cond_2

    .line 4
    invoke-virtual {v12, v10}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 5
    :cond_2
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 6
    :try_start_0
    iget-boolean v9, v15, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    const/4 v10, 0x2

    if-eqz v9, :cond_4

    .line 7
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v3}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is canceled from UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->canceledFromUID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " PID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->canceledFromPID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget v0, v15, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 13
    invoke-virtual {v0, v13}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 14
    const-string v0, "app.value_force_stop_cancelled_pi_sent_from_top_per_caller"

    invoke-static {v0, v13}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 15
    const-string v0, "app.value_force_stop_cancelled_pi_sent_from_top_per_owner"

    iget v1, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_26

    .line 16
    :cond_3
    :goto_1
    monitor-exit v8

    const/16 v25, -0x60

    return v25

    :cond_4
    const/4 v6, 0x1

    const/16 v25, -0x60

    .line 17
    iput-boolean v6, v15, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 18
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v6, v9

    const/16 v9, 0x40

    if-eqz v6, :cond_5

    .line 19
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    const/4 v10, 0x1

    invoke-virtual {v6, v15, v10, v9}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;ZI)V

    .line 20
    :cond_5
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v6, :cond_6

    new-instance v6, Landroid/content/Intent;

    iget-object v10, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v10, v10, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_2
    move-object v10, v6

    goto :goto_3

    :cond_6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    goto :goto_2

    .line 21
    :goto_3
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v9, v6, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v17, 0x4000000

    and-int v17, v9, v17

    move-object/from16 v26, v14

    const/4 v14, 0x0

    if-eqz v17, :cond_7

    .line 22
    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    :goto_4
    move-object/from16 v30, v6

    goto :goto_8

    :cond_7
    if-eqz v1, :cond_b

    .line 23
    invoke-virtual {v10, v1, v9}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v6

    const/4 v9, 0x2

    and-int/2addr v6, v9

    if-nez v6, :cond_8

    .line 24
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object/from16 v6, p4

    .line 25
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    move-result v9

    if-lez v9, :cond_9

    .line 26
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    move-result v9

    .line 27
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    move v9, v14

    .line 29
    :goto_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v17

    if-lez v17, :cond_a

    .line 30
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v9

    .line 31
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    const/4 v9, 0x1

    :cond_a
    if-eqz v9, :cond_c

    if-eqz v12, :cond_c

    .line 32
    const-string v9, "android:activity.startedFromWindowTypeLauncher"

    invoke-virtual {v12, v9, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_7

    .line 33
    :cond_b
    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    :cond_c
    :goto_7
    move/from16 v9, p11

    and-int/lit16 v9, v9, -0xc4

    and-int v17, p12, v9

    .line 34
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v18

    not-int v9, v9

    and-int v9, v18, v9

    or-int v9, v9, v17

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_4

    :goto_8
    if-eqz v1, :cond_d

    .line 35
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->isAiKeyAppLaunch()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_9

    :cond_d
    move v6, v14

    .line 36
    :goto_9
    invoke-virtual {v10, v6}, Landroid/content/Intent;->setAiKeyAppLaunch(Z)V

    .line 37
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 38
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v9

    if-eqz v9, :cond_f

    .line 39
    const-string v9, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") to SYSTEM_DEFINED from the options provided by the pending intent sender ("

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") because this option is meant for the pending intent creator"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v3

    move-object v14, v4

    const-wide/32 v3, 0x131cf49a

    .line 42
    invoke-static {v3, v4, v13}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v3, 0x0

    .line 43
    invoke-virtual {v6, v3}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    goto :goto_a

    .line 44
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pendingIntentCreatorBackgroundActivityStartMode must not be set when sending a PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v9, v3

    move-object v14, v4

    .line 45
    :goto_a
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_b

    :cond_10
    move-object v9, v3

    move-object v14, v4

    :goto_b
    if-eqz v1, :cond_11

    .line 46
    const-string v0, "LAUNCH_FROM_NOTIFICATION"

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    .line 47
    :goto_c
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_12

    if-eqz v0, :cond_12

    .line 48
    :try_start_1
    const-string v0, "LAUNCH_FROM_NOTIFICATION"

    const/4 v3, 0x1

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :catch_0
    move-exception v0

    .line 49
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :cond_12
    :goto_d
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    if-nez v0, :cond_13

    .line 51
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v0, v6}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_e

    .line 52
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    .line 55
    iput-object v6, v0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 56
    :goto_e
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v3, :cond_14

    .line 57
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    goto :goto_f

    :cond_14
    const/4 v3, 0x0

    .line 58
    :goto_f
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v6, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    move-object/from16 p11, v9

    const/4 v9, 0x2

    if-ne v4, v9, :cond_16

    iget-object v4, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v4, :cond_16

    array-length v6, v4

    const/4 v9, 0x1

    if-le v6, v9, :cond_16

    .line 59
    array-length v6, v4

    new-array v9, v6, [Landroid/content/Intent;

    move-object/from16 v27, v11

    .line 60
    array-length v11, v4

    move-object/from16 p12, v14

    new-array v14, v11, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 61
    array-length v0, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 63
    array-length v4, v0

    invoke-static {v0, v2, v14, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    const/4 v4, 0x1

    sub-int/2addr v6, v4

    .line 64
    aput-object v10, v9, v6

    sub-int/2addr v11, v4

    .line 65
    aput-object v30, v14, v11

    goto :goto_10

    :cond_16
    move-object/from16 v28, v0

    move-object/from16 v27, v11

    move-object/from16 p12, v14

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 66
    :goto_10
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_17

    .line 68
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v12, v13}, Landroid/app/ActivityManagerInternal;->enforceBroadcastOptionsPermissions(Landroid/os/Bundle;I)V

    .line 69
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    if-eqz v3, :cond_1c

    .line 70
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    const-string/jumbo v6, "setPendingIntentAllowlistDuration,reason:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v6, v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    if-nez v6, :cond_18

    const-string v6, ""

    goto :goto_11

    :catchall_1
    move-exception v0

    goto/16 :goto_25

    :cond_18
    :goto_11
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v6, ",pendingintent:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v4, v13}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 75
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 77
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 78
    :cond_19
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 79
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_12

    .line 80
    :cond_1a
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 81
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_1b
    :goto_12
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v8, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-wide v0, v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    iget v11, v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v13

    move/from16 v19, v8

    move-wide/from16 v20, v0

    move/from16 v22, v11

    move/from16 v23, v3

    .line 84
    invoke-virtual/range {v16 .. v24}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V

    goto :goto_13

    .line 85
    :cond_1c
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    if-eqz v12, :cond_1d

    .line 86
    new-instance v0, Landroid/app/BroadcastOptions;

    invoke-direct {v0, v12}, Landroid/app/BroadcastOptions;-><init>(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v3

    const-wide/16 v16, 0x0

    cmp-long v1, v3, v16

    if-lez v1, :cond_1d

    .line 88
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 89
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v20

    .line 90
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v22

    .line 91
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v23

    .line 92
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReason()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v1

    move/from16 v17, v7

    move/from16 v18, v13

    move/from16 v19, v3

    .line 93
    invoke-virtual/range {v16 .. v24}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V

    :cond_1d
    :goto_13
    if-eqz p6, :cond_1e

    const/16 v22, 0x1

    goto :goto_14

    :cond_1e
    move/from16 v22, v2

    :goto_14
    if-eqz p6, :cond_1f

    if-nez p1, :cond_1f

    .line 94
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requested resultTo without an IApplicationThread!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_1f
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_20

    .line 96
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    .line 97
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 98
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    monitor-exit v1

    :cond_20
    move/from16 v34, v0

    goto :goto_15

    :catchall_2
    move-exception v0

    .line 100
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    .line 101
    :goto_15
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_27

    const/4 v3, 0x2

    if-eq v1, v3, :cond_24

    const/4 v0, 0x3

    if-eq v1, v0, :cond_23

    const/4 v3, 0x4

    if-eq v1, v3, :cond_21

    const/4 v0, 0x5

    if-eq v1, v0, :cond_21

    move/from16 v23, v2

    move-object/from16 p3, v10

    move-object v3, v15

    goto/16 :goto_22

    .line 102
    :cond_21
    :try_start_6
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v1, p5

    move/from16 v16, v2

    .line 103
    :try_start_7
    invoke-virtual {v15, v0, v1, v12, v13}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;

    move-result-object v35

    .line 104
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_22

    const/16 v31, 0x1

    goto :goto_16

    :cond_22
    move/from16 v31, v16

    :goto_16
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v27, p1

    move/from16 v28, v1

    move-object/from16 v29, v10

    move-object/from16 v32, v3

    move-object/from16 v33, v2

    invoke-virtual/range {v26 .. v35}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;)Landroid/content/ComponentName;

    .line 105
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, p12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    const/4 v3, 0x1

    .line 107
    invoke-virtual {v2, v3}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_17
    move-object/from16 p3, v10

    move-object v3, v15

    move/from16 v23, v16

    goto/16 :goto_22

    :catch_1
    move-exception v0

    goto :goto_18

    :catch_2
    move-object/from16 p3, v10

    move-object v3, v15

    move/from16 v10, v25

    goto/16 :goto_24

    :catch_3
    move-exception v0

    move/from16 v16, v2

    .line 109
    :goto_18
    :try_start_8
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_23
    move/from16 v16, v2

    .line 110
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, p11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    const/4 v3, 0x1

    .line 112
    invoke-virtual {v2, v3}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object/from16 p7, v0

    move-object/from16 p8, v2

    move-object/from16 p9, v3

    move/from16 p10, v1

    move/from16 p11, p2

    move-object/from16 p12, v10

    invoke-virtual/range {p7 .. p12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_17

    :cond_24
    move-object/from16 v1, p5

    move/from16 v16, v2

    .line 115
    :try_start_9
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_26

    :try_start_a
    array-length v2, v2

    const/4 v11, 0x1

    if-le v2, v11, :cond_25

    .line 116
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 117
    invoke-virtual {v15, v1}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v1, v2

    move v2, v3

    move v3, v7

    move v4, v13

    move-object v7, v9

    move-object v8, v14

    move-object/from16 v9, p8

    move v14, v11

    move/from16 v12, v25

    move-object v11, v10

    move-object/from16 v10, v28

    move-object/from16 p3, v11

    move/from16 v11, v34

    move-object/from16 v12, p0

    move/from16 p4, v13

    move-object v13, v0

    .line 118
    :try_start_b
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move v10, v0

    move-object/from16 v38, v26

    goto :goto_1b

    :catch_4
    move-exception v0

    :goto_19
    move/from16 v10, v16

    goto/16 :goto_1f

    :catch_5
    move-exception v0

    move-object/from16 p3, v10

    goto :goto_19

    :cond_25
    move-object/from16 p3, v10

    move v14, v11

    move/from16 p4, v13

    goto :goto_1a

    :cond_26
    move-object/from16 p3, v10

    move/from16 p4, v13

    const/4 v14, 0x1

    .line 119
    :goto_1a
    :try_start_c
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 120
    invoke-virtual {v15, v1}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v1, v2

    move v2, v3

    move v3, v7

    move/from16 v4, p4

    move-object/from16 v7, p3

    move-object/from16 v8, v30

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, v28

    move/from16 v13, v34

    move/from16 v23, v16

    move-object/from16 v38, v26

    move-object/from16 v14, p0

    move-object v15, v0

    .line 121
    :try_start_d
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v10, v0

    .line 122
    :goto_1b
    :try_start_e
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v38

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object/from16 v15, p0

    :try_start_f
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    const/4 v11, 0x1

    .line 124
    invoke-virtual {v2, v11}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_1c
    move-object v3, v15

    goto/16 :goto_24

    :catch_6
    move-exception v0

    goto :goto_1f

    :catch_7
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1f

    :catch_8
    move-exception v0

    move-object/from16 v15, p0

    :goto_1d
    move/from16 v10, v23

    goto :goto_1f

    :catch_9
    move-exception v0

    :goto_1e
    move/from16 v23, v16

    goto :goto_1d

    :catch_a
    move-exception v0

    move-object/from16 p3, v10

    goto :goto_1e

    .line 126
    :goto_1f
    :try_start_10
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_1c

    :cond_27
    move-object/from16 v1, p5

    move/from16 v23, v2

    move v11, v3

    move-object/from16 p3, v10

    move v9, v13

    .line 127
    :try_start_11
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 128
    invoke-virtual {v15, v0, v1, v12, v9}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;

    move-result-object v20

    .line 129
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget v5, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz p6, :cond_28

    move/from16 v17, v11

    goto :goto_20

    :cond_28
    move/from16 v17, v23

    :goto_20
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v2, p1

    move v6, v9

    move-object/from16 v8, p3

    move v10, v9

    move-object/from16 v9, v30

    move/from16 v39, v10

    move-object/from16 v10, p1

    move-object/from16 v40, v27

    move-object/from16 v11, p6

    move/from16 v12, p2

    move-object/from16 v15, p7

    move-object/from16 v16, p13

    move/from16 v19, v34

    :try_start_12
    invoke-virtual/range {v1 .. v21}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;[I)I

    move-result v0

    .line 130
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object/from16 v3, p0

    :try_start_13
    iget-object v4, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    const/4 v5, 0x1

    .line 132
    invoke-virtual {v4, v5}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v39

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-nez v0, :cond_29

    move/from16 v14, v23

    goto :goto_21

    :cond_29
    move/from16 v14, v22

    :goto_21
    move/from16 v22, v14

    :goto_22
    move/from16 v10, v23

    goto :goto_24

    :catch_b
    move-exception v0

    goto :goto_23

    :catch_c
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_23

    :catch_d
    move-exception v0

    move-object v3, v15

    .line 134
    :goto_23
    :try_start_14
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_22

    :goto_24
    if-eqz v22, :cond_2a

    const/16 v1, -0x60

    if-eq v10, v1, :cond_2a

    .line 135
    :try_start_15
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v6, p3

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p0, p6

    move-object/from16 p1, v0

    move/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v1

    invoke-interface/range {p0 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 136
    :catch_e
    :cond_2a
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :goto_25
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    throw v0

    .line 138
    :goto_26
    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    throw v0
.end method

.method public final setAllowlistDurationLocked(Landroid/os/IBinder;IILjava/lang/String;J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p5, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-wide p5, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    .line 27
    .line 28
    iput p2, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    .line 29
    .line 30
    iput p3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 31
    .line 32
    iput-object p4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-gtz p1, :cond_2

    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 54
    .line 55
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 7
    .line 8
    const-string v1, "PendingIntentRecord{"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const/16 v2, 0x2f

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const-string v1, " (allowlist: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ge v1, v2, :cond_3

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    const-string v2, ","

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, ":"

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    .line 123
    .line 124
    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 125
    .line 126
    .line 127
    const-string v3, "/"

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    .line 133
    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 141
    .line 142
    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_3
    const-string v1, ")"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_4
    const/16 v1, 0x7d

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 175
    .line 176
    return-object v0
.end method
