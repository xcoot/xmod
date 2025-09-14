.class public final Lcom/android/server/devicepolicy/RemoteBugreportManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 19
    .line 20
    const-string v1, "DevicePolicyManager"

    .line 21
    .line 22
    const v2, 0x28700e57

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo p2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 38
    .line 39
    iget-object p2, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p2, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v0, p2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->shareBugreportWithDeviceOwnerIfExists(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p2, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    const/4 p2, 0x2

    .line 74
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->notify(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string/jumbo p2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 88
    .line 89
    iget-object p2, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz p2, :cond_2

    .line 97
    .line 98
    iget-object p2, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string/jumbo p2, "ctl.stop"

    .line 104
    .line 105
    .line 106
    const-string/jumbo v1, "bugreportd"

    .line 107
    .line 108
    .line 109
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    iget-object v1, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    .line 120
    .line 121
    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    iget-object p2, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    iget-object v1, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 127
    .line 128
    invoke-virtual {p2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    iget-object p2, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    .line 133
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 137
    .line 138
    const/4 p2, 0x0

    .line 139
    invoke-virtual {p1, p2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "android.app.action.BUGREPORT_SHARING_DECLINED"

    .line 143
    .line 144
    invoke-virtual {p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string v0, "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_8

    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_8

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    const-string p1, "android.intent.extra.REMOTE_BUGREPORT_NONCE"

    .line 185
    .line 186
    const-wide/16 v0, 0x0

    .line 187
    .line 188
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 189
    .line 190
    .line 191
    move-result-wide v2

    .line 192
    cmp-long p1, v2, v0

    .line 193
    .line 194
    const-string v0, "DevicePolicyManager"

    .line 195
    .line 196
    if-eqz p1, :cond_7

    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportNonce:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 201
    .line 202
    .line 203
    move-result-wide v4

    .line 204
    cmp-long p1, v4, v2

    .line 205
    .line 206
    if-eqz p1, :cond_4

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    .line 212
    .line 213
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    .line 218
    const/4 v1, 0x0

    .line 219
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    if-eqz p1, :cond_5

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    goto :goto_1

    .line 233
    :cond_5
    const/4 p1, 0x0

    .line 234
    :goto_1
    const-string v1, "android.intent.extra.REMOTE_BUGREPORT_HASH"

    .line 235
    .line 236
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_6

    .line 247
    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->shareBugreportWithDeviceOwnerIfExists(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    const p2, 0x28700e57

    .line 258
    .line 259
    .line 260
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 261
    .line 262
    invoke-virtual {p1, v0, p2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 267
    .line 268
    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const/4 p1, 0x3

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->notify(I)V

    .line 273
    .line 274
    .line 275
    :goto_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 276
    .line 277
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 278
    .line 279
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_7
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string p1, "Invalid nonce provided, ignoring "

    .line 286
    .line 287
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    :cond_8
    :goto_4
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
