.class public final Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "size"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    move-result p2

    .line 13
    const-string v0, "GenieMemoryManager"

    .line 15
    if-eqz p1, :cond_0

    .line 17
    const-string v1, "Receive broadcast: "

    .line 19
    const-string v2, " size : "

    .line 21
    invoke-static {p2, v1, p1, v2, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    const-string/jumbo v1, "com.samsung.GEN_AI_RECLAIM"

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    const-string v2, "Calling reclaimer through Broadcast "

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_2

    .line 36
    if-nez p2, :cond_1

    .line 38
    sget p2, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_SAMSUNG_MODEL_SIZE:I

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/samsung/android/chimera/genie/MemRequest;

    .line 57
    invoke-direct {v0, v3, p2}, Lcom/samsung/android/chimera/genie/MemRequest;-><init>(II)V

    .line 60
    iget-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 62
    invoke-virtual {p2, v0, p1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V

    .line 65
    sget-boolean p1, Lcom/android/server/chimera/genie/GenieConfigurations;->sIsChinaDevice:Z

    .line 67
    xor-int/2addr p1, v3

    .line 68
    if-eqz p1, :cond_6

    .line 70
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 72
    const-string/jumbo p1, "com.samsung.android.offline.languagemodel"

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startUnloadTimerLocked(Ljava/lang/String;)V

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "AICORE_BROADCAST_ACTION_MODEL_LOADING"

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_4

    .line 87
    if-nez p2, :cond_3

    .line 89
    sget p2, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_GOOGLE_MODEL_SIZE:I

    .line 91
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/samsung/android/chimera/genie/MemRequest;

    .line 108
    invoke-direct {v0, v3, p2}, Lcom/samsung/android/chimera/genie/MemRequest;-><init>(II)V

    .line 111
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    const-string/jumbo p2, "com.samsung.GEN_AI_RECLAIM_END"

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result p2

    .line 124
    if-nez p2, :cond_5

    .line 126
    const-string p2, "AICORE_BROADCAST_ACTION_MODEL_UNLOADED"

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_6

    .line 134
    :cond_5
    const-string p1, "Stopping Reclaimer through Broadcast "

    .line 136
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 141
    iget-object p1, p1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 148
    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 151
    :cond_6
    :goto_0
    return-void
.end method
