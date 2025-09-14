.class public final Lcom/android/server/chimera/GenieUnloadPolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 3
    invoke-static {p0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    .line 6
    move-result-wide v0

    .line 7
    sget v2, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MEMORY_PSI_LEVEL:I

    .line 9
    if-ne v2, p2, :cond_2

    .line 11
    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD_GENIE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 13
    if-ne p2, p1, :cond_2

    .line 15
    sget p1, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_THRESHOLD:I

    .line 17
    int-to-long p1, p1

    .line 18
    cmp-long p1, v0, p1

    .line 20
    if-gtz p1, :cond_2

    .line 22
    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->firstEntry()Ljava/util/Map$Entry;

    .line 29
    move-result-object p1

    .line 30
    const-string p2, "GenieUnloadPolicyHandler"

    .line 32
    if-eqz p1, :cond_1

    .line 34
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v1, "least used AIpackage: "

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {p2, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->isLLMRunning()Z

    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_0

    .line 68
    sget v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_OOMADJ_THRESHOLD:I

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/android/server/chimera/SystemRepository;->killGenieProcess(ILjava/lang/String;)V

    .line 73
    const-string/jumbo p0, "process killed, remove from LRU list"

    .line 76
    invoke-static {p2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string p1, " not killed"

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    invoke-static {p2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const-string p0, "LRU list is empty"

    .line 110
    invoke-static {p2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 114
    return p0
.end method
