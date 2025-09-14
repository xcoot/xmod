.class public final Lcom/android/server/webkit/WebViewUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string p1, "android.intent.extra.user_handle"

    .line 2
    .line 3
    const/16 v0, -0x2710

    .line 4
    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "android.intent.extra.REPLACING"

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    sparse-switch v4, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :sswitch_0
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v3, 0x4

    .line 39
    goto :goto_0

    .line 40
    :sswitch_1
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v3, 0x3

    .line 50
    goto :goto_0

    .line 51
    :sswitch_2
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v3, 0x2

    .line 61
    goto :goto_0

    .line 62
    :sswitch_3
    const-string v4, "android.intent.action.USER_STARTED"

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v3, 0x1

    .line 72
    goto :goto_0

    .line 73
    :sswitch_4
    const-string v4, "android.intent.action.USER_REMOVED"

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const/4 v3, 0x0

    .line 83
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->packageStateChanged(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->packageStateChanged(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :pswitch_2
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 164
    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-interface {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->packageStateChanged(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 180
    .line 181
    invoke-interface {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->handleNewUser(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 188
    .line 189
    invoke-interface {p0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->handleUserRemoved()V

    .line 190
    .line 191
    .line 192
    :cond_6
    :goto_1
    return-void

    .line 193
    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_4
        -0x2d021ace -> :sswitch_3
        0xa480416 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
