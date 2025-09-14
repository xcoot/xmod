.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x0

    .line 5
    const-string v4, "SAccessoryManager_CoverAuthenticator"

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    iget v6, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->$r8$classId:I

    .line 9
    .line 10
    packed-switch v6, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt v0, v5, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_0
    sget-boolean v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 30
    .line 31
    const-string/jumbo v5, "onAuthenticationStopped"

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    iput-object v5, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 41
    .line 42
    iput v3, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 43
    .line 44
    new-instance v4, Landroid/content/Intent;

    .line 45
    .line 46
    const-string v5, "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_STOPPED"

    .line 47
    .line 48
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 52
    .line 53
    iget-object v5, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 61
    .line 62
    invoke-virtual {v4, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 69
    .line 70
    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 75
    .line 76
    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    iget v3, v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 93
    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 99
    .line 100
    iget-object v4, v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_2

    .line 110
    .line 111
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 112
    .line 113
    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 114
    .line 115
    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    :cond_2
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 129
    .line 130
    const/4 v0, 0x6

    .line 131
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 136
    .line 137
    invoke-virtual {p0, v0, v1, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 138
    .line 139
    .line 140
    :goto_1
    return-void

    .line 141
    :pswitch_2
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 142
    .line 143
    const-string/jumbo v0, "onAuthenticationStarted"

    .line 144
    .line 145
    .line 146
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 150
    .line 151
    iget-boolean v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 152
    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_4

    .line 164
    .line 165
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 166
    .line 167
    iput-boolean v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 168
    .line 169
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 172
    .line 173
    .line 174
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 175
    .line 176
    const-wide/16 v0, 0x2710

    .line 177
    .line 178
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    .line 180
    .line 181
    :cond_4
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
