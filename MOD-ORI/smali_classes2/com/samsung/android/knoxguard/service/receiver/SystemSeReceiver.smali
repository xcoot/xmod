.class public final Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field public static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;

    .line 2
    .line 3
    const-string v0, "KG.SystemSeReceiver"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_9

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "onReceive "

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object p2, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_BOOT_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    sget-object p2, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_USER_PRESENT:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_2
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_8

    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string v0, "com.samsung.android.kgclient"

    .line 97
    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_8

    .line 103
    .line 104
    const-string p0, "com.samsung.kgclient.android.intent.action.KG_PACKAGE_ADDED"

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {p1, p0, p2}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    const-string/jumbo v2, "uri"

    .line 122
    .line 123
    .line 124
    if-nez v0, :cond_7

    .line 125
    .line 126
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_7

    .line 133
    .line 134
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 144
    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_6

    .line 150
    .line 151
    const-string v0, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 152
    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_5
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 161
    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-eqz p0, :cond_8

    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    if-eqz p0, :cond_8

    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    new-instance p2, Landroid/os/Bundle;

    .line 179
    .line 180
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_DATA_CLEARED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 191
    .line 192
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_6
    :goto_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    sget-object p2, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_SETUP_WIZARD_COMPLETED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 201
    .line 202
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_7
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    if-eqz p0, :cond_8

    .line 211
    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    new-instance p2, Landroid/os/Bundle;

    .line 217
    .line 218
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->ON_PACKAGE_REPLACED_OR_REMOVED:Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    .line 229
    .line 230
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    .line 231
    .line 232
    .line 233
    :cond_8
    :goto_2
    return-void

    .line 234
    :cond_9
    :goto_3
    sget-object p0, Lcom/samsung/android/knoxguard/service/receiver/SystemSeReceiver;->TAG:Ljava/lang/String;

    .line 235
    .line 236
    const-string p1, "intent is null"

    .line 237
    .line 238
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    return-void
.end method
