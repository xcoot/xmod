.class public final Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 6
    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 3

    .line 1
    const-string v0, "BcRadio2Srv"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "serviceDied("

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ")"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 28
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v0

    .line 31
    long-to-int p1, p1

    .line 32
    :try_start_0
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 34
    iget-object p2, p2, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 40
    check-cast p2, Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 48
    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->closeSessions()V

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 58
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 60
    check-cast p0, Landroid/util/ArrayMap;

    .line 62
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 65
    move-result-object p0

    .line 66
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p0

    .line 70
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_2

    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/Integer;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result v1

    .line 92
    if-ne v1, p1, :cond_1

    .line 94
    const-string p0, "BcRadio2Srv"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string/jumbo v2, "service "

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Ljava/lang/String;

    .line 113
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string p2, " died; removed RadioModule with ID "

    .line 118
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_2
    monitor-exit v0

    .line 132
    return-void

    .line 133
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    throw p0
.end method
