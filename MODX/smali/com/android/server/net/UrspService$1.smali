.class public final Lcom/android/server/net/UrspService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/net/UrspService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/UrspService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/net/UrspService$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/net/UrspService$1;->this$0:Lcom/android/server/net/UrspService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string p1, ") removed"

    .line 3
    const-string/jumbo v0, "received unexpected intent: "

    .line 6
    const-string v1, "UrspService"

    .line 8
    iget v2, p0, Lcom/android/server/net/UrspService$1;->$r8$classId:I

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 13
    const-string v2, "android.intent.extra.USER"

    .line 15
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/os/UserHandle;

    .line 21
    if-nez v2, :cond_0

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, " broadcast without EXTRA_USER"

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    const-string v4, "android.intent.action.USER_REMOVED"

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/UrspService$1;->this$0:Lcom/android/server/net/UrspService;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v0, "user("

    .line 93
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {p1}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    .line 114
    move-result-object p1

    .line 115
    iget-object p0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 117
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 120
    move-result-object p1

    .line 121
    new-instance p2, Lcom/android/server/net/UrspService$$ExternalSyntheticLambda0;

    .line 123
    invoke-direct {p2, v2}, Lcom/android/server/net/UrspService$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserHandle;)V

    .line 126
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 129
    move-result-object p1

    .line 130
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 133
    move-result-object p2

    .line 134
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Ljava/util/Set;

    .line 140
    invoke-static {p0, p1}, Landroid/net/ConnectivitySettingsManager;->setMobileDataPreferredUids(Landroid/content/Context;Ljava/util/Set;)V

    .line 143
    :goto_0
    return-void

    .line 144
    :pswitch_0
    if-eqz p2, :cond_5

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 150
    if-nez v2, :cond_2

    .line 152
    goto :goto_1

    .line 153
    :cond_2
    const-string v2, "android.intent.extra.UID"

    .line 155
    const/4 v3, -0x1

    .line 156
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 159
    move-result v2

    .line 160
    if-ne v2, v3, :cond_3

    .line 162
    goto :goto_1

    .line 163
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    const-string v4, "android.intent.action.UID_REMOVED"

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_4

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p0

    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    goto :goto_1

    .line 198
    :cond_4
    iget-object p0, p0, Lcom/android/server/net/UrspService$1;->this$0:Lcom/android/server/net/UrspService;

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    .line 205
    const-string/jumbo v0, "uid("

    .line 208
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object p1

    .line 221
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 226
    invoke-static {p1}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    .line 229
    move-result-object p1

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    move-result-object p2

    .line 234
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 237
    move-result p2

    .line 238
    if-eqz p2, :cond_5

    .line 240
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    move-result-object p2

    .line 244
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 247
    iget-object p0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 249
    invoke-static {p0, p1}, Landroid/net/ConnectivitySettingsManager;->setMobileDataPreferredUids(Landroid/content/Context;Ljava/util/Set;)V

    .line 252
    :cond_5
    :goto_1
    return-void

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
