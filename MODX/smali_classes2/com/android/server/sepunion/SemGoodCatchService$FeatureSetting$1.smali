.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

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
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p2, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object p2, p1

    .line 26
    move-object v0, p2

    .line 27
    :goto_0
    sget v1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 28
    .line 29
    const-string v1, "SemGoodCatchService"

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "intent received, action:"

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    const-string v0, "com.samsung.android.app.goodcatch"

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    const-string v0, "SemGoodCatchService"

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v2, "package "

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p2, " removed"

    .line 78
    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const-string v0, "SemGoodCatchService"

    .line 95
    .line 96
    const-string/jumbo v1, "reset"

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iput-object p1, p2, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 103
    .line 104
    iget-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 105
    .line 106
    iget-object p2, p2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 107
    .line 108
    iget-object v0, p2, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    iput-boolean v1, v0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    .line 112
    .line 113
    iput-object p1, v0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 114
    .line 115
    iget-object p1, p2, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 116
    .line 117
    monitor-enter p1

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_3

    .line 137
    .line 138
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    .line 143
    .line 144
    iget-object v0, p2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    .line 145
    .line 146
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    iget-object v1, p2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_2

    .line 162
    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p2, v2}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->off(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :catchall_0
    move-exception p0

    .line 180
    goto :goto_3

    .line 181
    :cond_2
    monitor-exit v0

    .line 182
    goto :goto_1

    .line 183
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    throw p0

    .line 185
    :catchall_1
    move-exception p0

    .line 186
    goto :goto_4

    .line 187
    :cond_3
    monitor-exit p1

    .line 188
    goto :goto_5

    .line 189
    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    throw p0

    .line 191
    :cond_4
    :goto_5
    return-void
.end method
