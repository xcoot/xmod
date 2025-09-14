.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_7

    .line 7
    .line 8
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    .line 18
    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    .line 27
    .line 28
    check-cast p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/16 v0, 0x32

    .line 35
    .line 36
    if-ge p1, v0, :cond_2

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 43
    .line 44
    iget-wide v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    .line 45
    .line 46
    sub-long/2addr v0, v2

    .line 47
    const-wide/16 v2, 0x2710

    .line 48
    .line 49
    cmp-long p1, v0, v2

    .line 50
    .line 51
    if-lez p1, :cond_d

    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 54
    .line 55
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    .line 56
    .line 57
    if-eqz v0, :cond_c

    .line 58
    .line 59
    move-object v1, v0

    .line 60
    check-cast v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-gtz v1, :cond_3

    .line 67
    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :cond_3
    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v1

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_a

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-gtz v2, :cond_4

    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_9

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    :try_start_1
    iget-object v3, v2, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 104
    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    iget-object v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->napInterface:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    const/4 v3, 0x0

    .line 111
    :goto_1
    iget-object v4, v2, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 112
    .line 113
    iget-object v4, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 114
    .line 115
    if-nez v3, :cond_7

    .line 116
    .line 117
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 118
    .line 119
    if-eqz v3, :cond_5

    .line 120
    .line 121
    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 122
    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string/jumbo v5, "deliverData: service connection is null for entry:"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v2, v2, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    goto :goto_5

    .line 149
    :catch_0
    move-exception v2

    .line 150
    goto :goto_2

    .line 151
    :catch_1
    move-exception v2

    .line 152
    goto :goto_3

    .line 153
    :cond_7
    invoke-static {v2, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-gtz v5, :cond_8

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_8
    invoke-interface {v3, v4, v2}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDataAvailable(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :goto_2
    :try_start_2
    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 171
    .line 172
    const-string/jumbo v4, "deliverData: Exception "

    .line 173
    .line 174
    .line 175
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :goto_3
    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 180
    .line 181
    const-string/jumbo v4, "deliverData: RemoteException "

    .line 182
    .line 183
    .line 184
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_9
    monitor-exit v1

    .line 189
    goto :goto_6

    .line 190
    :cond_a
    :goto_4
    sget-boolean p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 191
    .line 192
    if-eqz p1, :cond_b

    .line 193
    .line 194
    const-string p1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 195
    .line 196
    const-string/jumbo v0, "deliverData: No data delivery herlper entries."

    .line 197
    .line 198
    .line 199
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_b
    monitor-exit v1

    .line 203
    goto :goto_6

    .line 204
    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    throw p0

    .line 206
    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 207
    .line 208
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    .line 209
    .line 210
    check-cast p1, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 216
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 218
    .line 219
    .line 220
    move-result-wide v0

    .line 221
    iput-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    .line 222
    .line 223
    :cond_d
    :goto_7
    return-void
.end method
