.class public final Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;
.super Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    .line 6
    return-void
.end method


# virtual methods
.method public final cleanUpCallIds(Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {v0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 14
    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 17
    return-void
.end method

.method public final processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
    .locals 7

    .line 1
    iget-object v0, p2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;

    .line 19
    if-eqz v1, :cond_4

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 27
    iget-object v3, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    .line 29
    new-instance v4, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;

    .line 31
    iget-object v5, v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 33
    invoke-direct {v4, p1, v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;-><init>(ILjava/lang/String;)V

    .line 36
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 42
    if-eqz v3, :cond_1

    .line 44
    invoke-static {v3, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->-$$Nest$mupdate(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v3, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    .line 50
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v3

    .line 58
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 76
    iget v5, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAssociationId:I

    .line 78
    if-ne v5, p1, :cond_2

    .line 80
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 86
    iget-boolean v5, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mIsIdFinalized:Z

    .line 88
    if-nez v5, :cond_2

    .line 90
    iget-object v5, v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 92
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 98
    iget-object v6, v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 100
    iget-object v6, v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_2

    .line 108
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const/4 v3, 0x0

    .line 116
    :goto_1
    if-eqz v3, :cond_0

    .line 118
    iget-object v4, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    .line 120
    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 126
    invoke-static {v3, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->-$$Nest$mupdate(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;)V

    .line 129
    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    .line 131
    new-instance v4, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;

    .line 133
    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 135
    invoke-direct {v4, p1, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;-><init>(ILjava/lang/String;)V

    .line 138
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    goto/16 :goto_0

    .line 143
    :cond_4
    iget-object p0, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    .line 145
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 148
    move-result-object p0

    .line 149
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;

    .line 151
    invoke-direct {v0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    .line 154
    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 157
    return-void
.end method
