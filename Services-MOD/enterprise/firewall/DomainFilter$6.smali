.class public final Lcom/android/server/enterprise/firewall/DomainFilter$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

.field public final synthetic val$network:Landroid/net/Network;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->val$network:Landroid/net/Network;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const-string v0, "DomainFilter"

    .line 3
    const-string v1, "Exception occured: "

    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string/jumbo v2, "http://connectivitycheck.gstatic.com/generate_204"

    .line 13
    const/4 v3, 0x0

    .line 14
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 16
    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string v2, "Invalid URL http://connectivitycheck.gstatic.com/generate_204"

    .line 22
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    move-object v4, v3

    .line 26
    :goto_0
    if-nez v4, :cond_0

    .line 28
    sget p0, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 30
    const-string p0, "Captive portal url is null"

    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 36
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->val$network:Landroid/net/Network;

    .line 38
    invoke-virtual {v2, v4}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    const/4 v3, 0x0

    .line 45
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 48
    const/16 v4, 0x2710

    .line 50
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 53
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 56
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 59
    const-string v3, "Location"

    .line 61
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_3

    .line 71
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 73
    invoke-static {v4, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mextractHost(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 77
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_2

    .line 83
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 85
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_2

    .line 94
    invoke-static {v7}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_1

    .line 100
    goto :goto_3

    .line 101
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 103
    const/4 v10, 0x0

    .line 104
    const/4 v11, 0x0

    .line 105
    const/4 v8, 0x0

    .line 106
    const/4 v9, 0x0

    .line 107
    const/4 v6, 0x5

    .line 108
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 111
    goto :goto_4

    .line 112
    :goto_1
    move-object v3, v2

    .line 113
    goto :goto_7

    .line 114
    :goto_2
    move-object v3, v2

    .line 115
    goto :goto_5

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_1

    .line 118
    :catch_1
    move-exception p0

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    :goto_3
    const-string/jumbo p0, "invalid captive portal host"

    .line 123
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :cond_3
    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    goto :goto_6

    .line 130
    :catchall_1
    move-exception p0

    .line 131
    goto :goto_7

    .line 132
    :catch_2
    move-exception p0

    .line 133
    :goto_5
    :try_start_3
    sget v2, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 151
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    if-eqz v3, :cond_4

    .line 156
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 159
    :cond_4
    :goto_6
    return-void

    .line 160
    :goto_7
    if-eqz v3, :cond_5

    .line 162
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 165
    :cond_5
    throw p0
.end method
