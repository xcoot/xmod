.class public final Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Remove onClientFinished: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", success: "

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "Biometrics/InternalCleanupClient"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 44
    .line 45
    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$mstartCleanupUnknownHalTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 56
    .line 57
    check-cast v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Enumerate onClientFinished: "

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, ", success: "

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v1, "Biometrics/InternalCleanupClient"

    .line 84
    .line 85
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    check-cast v0, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_1

    .line 95
    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "Adding "

    .line 99
    .line 100
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v2, " templates for deletion"

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 139
    .line 140
    new-instance v3, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 143
    .line 144
    iget v4, v4, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 145
    .line 146
    invoke-direct {v3, v0, v4}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;-><init>(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_3

    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 162
    .line 163
    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mFavorHalEnrollments:Z

    .line 168
    .line 169
    if-eqz p1, :cond_5

    .line 170
    .line 171
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_4

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v3, "Adding unknown HAL template: "

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 200
    .line 201
    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 216
    .line 217
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->onAddUnknownTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :catchall_0
    move-exception p1

    .line 222
    goto :goto_3

    .line 223
    :cond_4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 224
    .line 225
    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :goto_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 230
    .line 231
    invoke-interface {v0, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_5
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$mstartCleanupUnknownHalTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    .line 236
    .line 237
    .line 238
    :goto_4
    return-void

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
