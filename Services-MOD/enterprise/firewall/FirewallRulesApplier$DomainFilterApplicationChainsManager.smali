.class public final Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppChainsCounter:I

.field public final mDomainFilterChainsCache:Ljava/util/Map;

.field public final mDomainFilterChainsCacheLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 13
    new-instance p1, Ljava/lang/Object;

    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCacheLock:Ljava/lang/Object;

    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 23
    return-void
.end method


# virtual methods
.method public final clearChainsForUserId(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 15
    check-cast v1, Ljava/util/HashMap;

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Collection;

    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/Integer;

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->removeChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public final removeChainForApplication(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 11
    check-cast v4, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x1

    .line 19
    if-eqz v4, :cond_0

    .line 21
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 23
    check-cast v4, Ljava/util/HashMap;

    .line 25
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/util/List;

    .line 31
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 37
    move v4, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v4, v5

    .line 40
    :goto_0
    if-nez v4, :cond_1

    .line 42
    return v6

    .line 43
    :cond_1
    iget v4, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 45
    if-ne v4, v6, :cond_2

    .line 47
    move v4, v6

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v4, v5

    .line 50
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v7

    .line 54
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v8

    .line 58
    new-instance v9, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {v1, v2, v3, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterChainNameForApp(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/String;

    .line 66
    move-result-object v10

    .line 67
    invoke-static {v1, v2, v3, v5}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterChainNameForApp(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/String;

    .line 70
    move-result-object v11

    .line 71
    invoke-static {v8, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterBaseChainNameForUser(IZ)Ljava/lang/String;

    .line 74
    move-result-object v12

    .line 75
    invoke-static {v8, v5}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterBaseChainNameForUser(IZ)Ljava/lang/String;

    .line 78
    move-result-object v13

    .line 79
    const-string v14, "*"

    .line 81
    const/4 v15, -0x1

    .line 82
    if-ne v7, v15, :cond_3

    .line 84
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v5

    .line 88
    invoke-static {v14, v8, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Ljava/lang/String;ILjava/lang/Integer;Z)Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    const-string v8, " -m owner --uid-owner "

    .line 97
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {v5, v7}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 103
    move-result-object v5

    .line 104
    :goto_2
    const-string v8, "*filter"

    .line 106
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v8, " -"

    .line 111
    const-string v6, ":"

    .line 113
    if-eqz v4, :cond_4

    .line 115
    new-instance v15, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v15

    .line 130
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v6, " -j "

    .line 153
    const-string v8, "-D "

    .line 155
    if-eqz v4, :cond_5

    .line 157
    new-instance v15, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v12

    .line 175
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_5
    invoke-static {v8, v13, v5, v6, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const/4 v6, -0x1

    .line 186
    if-eq v7, v6, :cond_6

    .line 188
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v6

    .line 192
    if-nez v6, :cond_6

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v5, " -j RETURN "

    .line 207
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_6
    const-string v5, "-X "

    .line 219
    if-eqz v4, :cond_7

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v5, "COMMIT\n"

    .line 253
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    if-eqz v4, :cond_8

    .line 258
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 260
    const/4 v5, 0x1

    .line 261
    iput-boolean v5, v4, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 263
    :cond_8
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->this$0:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 265
    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 267
    invoke-virtual {v4, v9, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->executeCmdIptablesV4AndV6(Ljava/util/List;Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z

    .line 270
    move-result v4

    .line 271
    if-nez v4, :cond_9

    .line 273
    const-string v0, "FirewallRulesApplier"

    .line 275
    const-string v2, "Failed to remove chain for "

    .line 277
    invoke-static {v2, v1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    .line 281
    return v0

    .line 282
    :cond_9
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCacheLock:Ljava/lang/Object;

    .line 284
    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 287
    check-cast v4, Ljava/util/HashMap;

    .line 289
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 292
    move-result v4

    .line 293
    if-eqz v4, :cond_a

    .line 295
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mDomainFilterChainsCache:Ljava/util/Map;

    .line 297
    check-cast v4, Ljava/util/HashMap;

    .line 299
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Ljava/util/List;

    .line 305
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 308
    iget v2, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 310
    const/4 v3, 0x1

    .line 311
    sub-int/2addr v2, v3

    .line 312
    iput v2, v0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;->mAppChainsCounter:I

    .line 314
    goto :goto_3

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    goto :goto_4

    .line 317
    :cond_a
    :goto_3
    monitor-exit v1

    .line 318
    const/4 v0, 0x1

    .line 319
    return v0

    .line 320
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    throw v0
.end method
