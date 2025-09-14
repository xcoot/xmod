.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

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
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-string/jumbo v2, "received "

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, "SAccessoryManager_CoverAuthenticator"

    .line 8
    .line 9
    iget v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->$r8$classId:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object p2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string p1, "Run scheduled authentication"

    .line 27
    .line 28
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    .line 42
    .line 43
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 50
    .line 51
    invoke-static {v2, p2, v4}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "Cover Switch State  : "

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 87
    .line 88
    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 89
    .line 90
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    .line 91
    .line 92
    invoke-direct {v0, v3, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const-wide/16 p0, 0x1388

    .line 96
    .line 97
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 110
    .line 111
    iput-boolean v3, p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    .line 112
    .line 113
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 114
    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    .line 116
    .line 117
    .line 118
    :cond_2
    :goto_0
    return-void

    .line 119
    :pswitch_1
    sget-boolean p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 120
    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 141
    .line 142
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$monNfcReady(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_2
    sget-boolean p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 147
    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v0, "Received broadcast "

    .line 151
    .line 152
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string/jumbo v0, "package_name"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-nez p2, :cond_3

    .line 177
    .line 178
    const-string p0, "can\'t reply auth info, request package = "

    .line 179
    .line 180
    invoke-static {p0, p2, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 187
    .line 188
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;

    .line 189
    .line 190
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    .line 195
    .line 196
    :goto_1
    return-void

    .line 197
    :pswitch_3
    sget-boolean p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 198
    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 219
    .line 220
    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$monNfcReady(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 224
    .line 225
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
